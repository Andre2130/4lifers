// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_categories_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StoreCategoriesRecord> _$storeCategoriesRecordSerializer =
    new _$StoreCategoriesRecordSerializer();

class _$StoreCategoriesRecordSerializer
    implements StructuredSerializer<StoreCategoriesRecord> {
  @override
  final Iterable<Type> types = const [
    StoreCategoriesRecord,
    _$StoreCategoriesRecord
  ];
  @override
  final String wireName = 'StoreCategoriesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, StoreCategoriesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
  StoreCategoriesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoreCategoriesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
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

class _$StoreCategoriesRecord extends StoreCategoriesRecord {
  @override
  final String? image;
  @override
  final String? name;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StoreCategoriesRecord(
          [void Function(StoreCategoriesRecordBuilder)? updates]) =>
      (new StoreCategoriesRecordBuilder()..update(updates))._build();

  _$StoreCategoriesRecord._({this.image, this.name, this.ffRef}) : super._();

  @override
  StoreCategoriesRecord rebuild(
          void Function(StoreCategoriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreCategoriesRecordBuilder toBuilder() =>
      new StoreCategoriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreCategoriesRecord &&
        image == other.image &&
        name == other.name &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, image.hashCode), name.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StoreCategoriesRecord')
          ..add('image', image)
          ..add('name', name)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StoreCategoriesRecordBuilder
    implements Builder<StoreCategoriesRecord, StoreCategoriesRecordBuilder> {
  _$StoreCategoriesRecord? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StoreCategoriesRecordBuilder() {
    StoreCategoriesRecord._initializeBuilder(this);
  }

  StoreCategoriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _name = $v.name;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoreCategoriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StoreCategoriesRecord;
  }

  @override
  void update(void Function(StoreCategoriesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StoreCategoriesRecord build() => _build();

  _$StoreCategoriesRecord _build() {
    final _$result = _$v ??
        new _$StoreCategoriesRecord._(image: image, name: name, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
