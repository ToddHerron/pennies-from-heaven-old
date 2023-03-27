import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'roles_struct.g.dart';

abstract class RolesStruct implements Built<RolesStruct, RolesStructBuilder> {
  static Serializer<RolesStruct> get serializer => _$rolesStructSerializer;

  bool? get admin;

  bool? get donor;

  bool? get agency;

  bool? get recipient;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(RolesStructBuilder builder) => builder
    ..admin = false
    ..donor = false
    ..agency = false
    ..recipient = false
    ..firestoreUtilData = FirestoreUtilData();

  RolesStruct._();
  factory RolesStruct([void Function(RolesStructBuilder) updates]) =
      _$RolesStruct;
}

RolesStruct createRolesStruct({
  bool? admin,
  bool? donor,
  bool? agency,
  bool? recipient,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RolesStruct(
      (r) => r
        ..admin = admin
        ..donor = donor
        ..agency = agency
        ..recipient = recipient
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

RolesStruct? updateRolesStruct(
  RolesStruct? roles, {
  bool clearUnsetFields = true,
}) =>
    roles != null
        ? (roles.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addRolesStructData(
  Map<String, dynamic> firestoreData,
  RolesStruct? roles,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (roles == null) {
    return;
  }
  if (roles.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && roles.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final rolesData = getRolesFirestoreData(roles, forFieldValue);
  final nestedData = rolesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = roles.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getRolesFirestoreData(
  RolesStruct? roles, [
  bool forFieldValue = false,
]) {
  if (roles == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(RolesStruct.serializer, roles);

  // Add any Firestore field values
  roles.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRolesListFirestoreData(
  List<RolesStruct>? roless,
) =>
    roless?.map((r) => getRolesFirestoreData(r, true)).toList() ?? [];
