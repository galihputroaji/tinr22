// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misc_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MiscRecord> _$miscRecordSerializer = new _$MiscRecordSerializer();

class _$MiscRecordSerializer implements StructuredSerializer<MiscRecord> {
  @override
  final Iterable<Type> types = const [MiscRecord, _$MiscRecord];
  @override
  final String wireName = 'MiscRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MiscRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.isUpdate;
    if (value != null) {
      result
        ..add('isUpdate')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.currentVersion;
    if (value != null) {
      result
        ..add('currentVersion')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  MiscRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MiscRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'isUpdate':
          result.isUpdate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'currentVersion':
          result.currentVersion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$MiscRecord extends MiscRecord {
  @override
  final bool? isUpdate;
  @override
  final int? currentVersion;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MiscRecord([void Function(MiscRecordBuilder)? updates]) =>
      (new MiscRecordBuilder()..update(updates))._build();

  _$MiscRecord._({this.isUpdate, this.currentVersion, this.ffRef}) : super._();

  @override
  MiscRecord rebuild(void Function(MiscRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MiscRecordBuilder toBuilder() => new MiscRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MiscRecord &&
        isUpdate == other.isUpdate &&
        currentVersion == other.currentVersion &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, isUpdate.hashCode), currentVersion.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MiscRecord')
          ..add('isUpdate', isUpdate)
          ..add('currentVersion', currentVersion)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MiscRecordBuilder implements Builder<MiscRecord, MiscRecordBuilder> {
  _$MiscRecord? _$v;

  bool? _isUpdate;
  bool? get isUpdate => _$this._isUpdate;
  set isUpdate(bool? isUpdate) => _$this._isUpdate = isUpdate;

  int? _currentVersion;
  int? get currentVersion => _$this._currentVersion;
  set currentVersion(int? currentVersion) =>
      _$this._currentVersion = currentVersion;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MiscRecordBuilder() {
    MiscRecord._initializeBuilder(this);
  }

  MiscRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isUpdate = $v.isUpdate;
      _currentVersion = $v.currentVersion;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MiscRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MiscRecord;
  }

  @override
  void update(void Function(MiscRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MiscRecord build() => _build();

  _$MiscRecord _build() {
    final _$result = _$v ??
        new _$MiscRecord._(
            isUpdate: isUpdate, currentVersion: currentVersion, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
