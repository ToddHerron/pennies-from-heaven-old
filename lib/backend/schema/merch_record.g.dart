// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merch_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MerchRecord> _$merchRecordSerializer = new _$MerchRecordSerializer();

class _$MerchRecordSerializer implements StructuredSerializer<MerchRecord> {
  @override
  final Iterable<Type> types = const [MerchRecord, _$MerchRecord];
  @override
  final String wireName = 'MerchRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MerchRecord object,
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
    value = object.colours;
    if (value != null) {
      result
        ..add('colours')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  MerchRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MerchRecordBuilder();

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
        case 'colours':
          result.colours.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$MerchRecord extends MerchRecord {
  @override
  final String? name;
  @override
  final BuiltList<String>? colours;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MerchRecord([void Function(MerchRecordBuilder)? updates]) =>
      (new MerchRecordBuilder()..update(updates))._build();

  _$MerchRecord._({this.name, this.colours, this.ffRef}) : super._();

  @override
  MerchRecord rebuild(void Function(MerchRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MerchRecordBuilder toBuilder() => new MerchRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MerchRecord &&
        name == other.name &&
        colours == other.colours &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), colours.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MerchRecord')
          ..add('name', name)
          ..add('colours', colours)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MerchRecordBuilder implements Builder<MerchRecord, MerchRecordBuilder> {
  _$MerchRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _colours;
  ListBuilder<String> get colours =>
      _$this._colours ??= new ListBuilder<String>();
  set colours(ListBuilder<String>? colours) => _$this._colours = colours;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MerchRecordBuilder() {
    MerchRecord._initializeBuilder(this);
  }

  MerchRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _colours = $v.colours?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MerchRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MerchRecord;
  }

  @override
  void update(void Function(MerchRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MerchRecord build() => _build();

  _$MerchRecord _build() {
    _$MerchRecord _$result;
    try {
      _$result = _$v ??
          new _$MerchRecord._(
              name: name, colours: _colours?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'colours';
        _colours?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MerchRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
