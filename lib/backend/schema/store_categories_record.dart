import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'store_categories_record.g.dart';

abstract class StoreCategoriesRecord
    implements Built<StoreCategoriesRecord, StoreCategoriesRecordBuilder> {
  static Serializer<StoreCategoriesRecord> get serializer =>
      _$storeCategoriesRecordSerializer;

  String? get image;

  String? get name;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StoreCategoriesRecordBuilder builder) =>
      builder
        ..image = ''
        ..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Store-Categories');

  static Stream<StoreCategoriesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StoreCategoriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StoreCategoriesRecord._();
  factory StoreCategoriesRecord(
          [void Function(StoreCategoriesRecordBuilder) updates]) =
      _$StoreCategoriesRecord;

  static StoreCategoriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStoreCategoriesRecordData({
  String? image,
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    StoreCategoriesRecord.serializer,
    StoreCategoriesRecord(
      (s) => s
        ..image = image
        ..name = name,
    ),
  );

  return firestoreData;
}
