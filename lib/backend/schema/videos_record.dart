import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'videos_record.g.dart';

abstract class VideosRecord
    implements Built<VideosRecord, VideosRecordBuilder> {
  static Serializer<VideosRecord> get serializer => _$videosRecordSerializer;

  String? get name;

  String? get url;

  int? get views;

  String? get description;

  DocumentReference? get creator;

  String? get videoId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VideosRecordBuilder builder) => builder
    ..name = ''
    ..url = ''
    ..views = 0
    ..description = ''
    ..videoId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videos');

  static Stream<VideosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VideosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VideosRecord._();
  factory VideosRecord([void Function(VideosRecordBuilder) updates]) =
      _$VideosRecord;

  static VideosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVideosRecordData({
  String? name,
  String? url,
  int? views,
  String? description,
  DocumentReference? creator,
  String? videoId,
}) {
  final firestoreData = serializers.toFirestore(
    VideosRecord.serializer,
    VideosRecord(
      (v) => v
        ..name = name
        ..url = url
        ..views = views
        ..description = description
        ..creator = creator
        ..videoId = videoId,
    ),
  );

  return firestoreData;
}
