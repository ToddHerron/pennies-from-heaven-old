import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'merch_record.g.dart';

abstract class MerchRecord implements Built<MerchRecord, MerchRecordBuilder> {
  static Serializer<MerchRecord> get serializer => _$merchRecordSerializer;

  String? get name;

  BuiltList<String>? get colours;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MerchRecordBuilder builder) => builder
    ..name = ''
    ..colours = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('merch');

  static Stream<MerchRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MerchRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MerchRecord._();
  factory MerchRecord([void Function(MerchRecordBuilder) updates]) =
      _$MerchRecord;

  static MerchRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMerchRecordData({
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    MerchRecord.serializer,
    MerchRecord(
      (m) => m
        ..name = name
        ..colours = null,
    ),
  );

  return firestoreData;
}
