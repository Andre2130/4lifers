// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideosRecord> _$videosRecordSerializer =
    new _$VideosRecordSerializer();

class _$VideosRecordSerializer implements StructuredSerializer<VideosRecord> {
  @override
  final Iterable<Type> types = const [VideosRecord, _$VideosRecord];
  @override
  final String wireName = 'VideosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VideosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.views;
    if (value != null) {
      result
        ..add('views')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.creator;
    if (value != null) {
      result
        ..add('creator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.videoId;
    if (value != null) {
      result
        ..add('videoId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  VideosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'views':
          result.views = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'creator':
          result.creator = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'videoId':
          result.videoId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$VideosRecord extends VideosRecord {
  @override
  final String? name;
  @override
  final String? url;
  @override
  final int? views;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? creator;
  @override
  final String? videoId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VideosRecord([void Function(VideosRecordBuilder)? updates]) =>
      (new VideosRecordBuilder()..update(updates))._build();

  _$VideosRecord._(
      {this.name,
      this.url,
      this.views,
      this.description,
      this.creator,
      this.videoId,
      this.ffRef})
      : super._();

  @override
  VideosRecord rebuild(void Function(VideosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideosRecordBuilder toBuilder() => new VideosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideosRecord &&
        name == other.name &&
        url == other.url &&
        views == other.views &&
        description == other.description &&
        creator == other.creator &&
        videoId == other.videoId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), url.hashCode),
                        views.hashCode),
                    description.hashCode),
                creator.hashCode),
            videoId.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VideosRecord')
          ..add('name', name)
          ..add('url', url)
          ..add('views', views)
          ..add('description', description)
          ..add('creator', creator)
          ..add('videoId', videoId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VideosRecordBuilder
    implements Builder<VideosRecord, VideosRecordBuilder> {
  _$VideosRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  int? _views;
  int? get views => _$this._views;
  set views(int? views) => _$this._views = views;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _creator;
  DocumentReference<Object?>? get creator => _$this._creator;
  set creator(DocumentReference<Object?>? creator) => _$this._creator = creator;

  String? _videoId;
  String? get videoId => _$this._videoId;
  set videoId(String? videoId) => _$this._videoId = videoId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VideosRecordBuilder() {
    VideosRecord._initializeBuilder(this);
  }

  VideosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _url = $v.url;
      _views = $v.views;
      _description = $v.description;
      _creator = $v.creator;
      _videoId = $v.videoId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideosRecord;
  }

  @override
  void update(void Function(VideosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VideosRecord build() => _build();

  _$VideosRecord _build() {
    final _$result = _$v ??
        new _$VideosRecord._(
            name: name,
            url: url,
            views: views,
            description: description,
            creator: creator,
            videoId: videoId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
