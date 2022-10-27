// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foto_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FotoRecord> _$fotoRecordSerializer = new _$FotoRecordSerializer();

class _$FotoRecordSerializer implements StructuredSerializer<FotoRecord> {
  @override
  final Iterable<Type> types = const [FotoRecord, _$FotoRecord];
  @override
  final String wireName = 'FotoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FotoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.foto;
    if (value != null) {
      result
        ..add('foto')
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
  FotoRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FotoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'foto':
          result.foto = serializers.deserialize(value,
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

class _$FotoRecord extends FotoRecord {
  @override
  final String? foto;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FotoRecord([void Function(FotoRecordBuilder)? updates]) =>
      (new FotoRecordBuilder()..update(updates))._build();

  _$FotoRecord._({this.foto, this.ffRef}) : super._();

  @override
  FotoRecord rebuild(void Function(FotoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FotoRecordBuilder toBuilder() => new FotoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FotoRecord && foto == other.foto && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, foto.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FotoRecord')
          ..add('foto', foto)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FotoRecordBuilder implements Builder<FotoRecord, FotoRecordBuilder> {
  _$FotoRecord? _$v;

  String? _foto;
  String? get foto => _$this._foto;
  set foto(String? foto) => _$this._foto = foto;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FotoRecordBuilder() {
    FotoRecord._initializeBuilder(this);
  }

  FotoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foto = $v.foto;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FotoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FotoRecord;
  }

  @override
  void update(void Function(FotoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FotoRecord build() => _build();

  _$FotoRecord _build() {
    final _$result = _$v ?? new _$FotoRecord._(foto: foto, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
