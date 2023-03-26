// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RolesStruct> _$rolesStructSerializer = new _$RolesStructSerializer();

class _$RolesStructSerializer implements StructuredSerializer<RolesStruct> {
  @override
  final Iterable<Type> types = const [RolesStruct, _$RolesStruct];
  @override
  final String wireName = 'RolesStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, RolesStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.admin;
    if (value != null) {
      result
        ..add('admin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.donor;
    if (value != null) {
      result
        ..add('donor')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.agency;
    if (value != null) {
      result
        ..add('agency')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.recipient;
    if (value != null) {
      result
        ..add('recipient')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  RolesStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RolesStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'admin':
          result.admin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'donor':
          result.donor = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'agency':
          result.agency = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'recipient':
          result.recipient = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$RolesStruct extends RolesStruct {
  @override
  final bool? admin;
  @override
  final bool? donor;
  @override
  final bool? agency;
  @override
  final bool? recipient;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$RolesStruct([void Function(RolesStructBuilder)? updates]) =>
      (new RolesStructBuilder()..update(updates))._build();

  _$RolesStruct._(
      {this.admin,
      this.donor,
      this.agency,
      this.recipient,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'RolesStruct', 'firestoreUtilData');
  }

  @override
  RolesStruct rebuild(void Function(RolesStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RolesStructBuilder toBuilder() => new RolesStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RolesStruct &&
        admin == other.admin &&
        donor == other.donor &&
        agency == other.agency &&
        recipient == other.recipient &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, admin.hashCode), donor.hashCode), agency.hashCode),
            recipient.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RolesStruct')
          ..add('admin', admin)
          ..add('donor', donor)
          ..add('agency', agency)
          ..add('recipient', recipient)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class RolesStructBuilder implements Builder<RolesStruct, RolesStructBuilder> {
  _$RolesStruct? _$v;

  bool? _admin;
  bool? get admin => _$this._admin;
  set admin(bool? admin) => _$this._admin = admin;

  bool? _donor;
  bool? get donor => _$this._donor;
  set donor(bool? donor) => _$this._donor = donor;

  bool? _agency;
  bool? get agency => _$this._agency;
  set agency(bool? agency) => _$this._agency = agency;

  bool? _recipient;
  bool? get recipient => _$this._recipient;
  set recipient(bool? recipient) => _$this._recipient = recipient;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  RolesStructBuilder() {
    RolesStruct._initializeBuilder(this);
  }

  RolesStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _admin = $v.admin;
      _donor = $v.donor;
      _agency = $v.agency;
      _recipient = $v.recipient;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RolesStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RolesStruct;
  }

  @override
  void update(void Function(RolesStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RolesStruct build() => _build();

  _$RolesStruct _build() {
    final _$result = _$v ??
        new _$RolesStruct._(
            admin: admin,
            donor: donor,
            agency: agency,
            recipient: recipient,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'RolesStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
