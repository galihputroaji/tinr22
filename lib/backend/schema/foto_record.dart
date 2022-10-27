import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'foto_record.g.dart';

abstract class FotoRecord implements Built<FotoRecord, FotoRecordBuilder> {
  static Serializer<FotoRecord> get serializer => _$fotoRecordSerializer;

  String? get foto;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FotoRecordBuilder builder) =>
      builder..foto = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('foto');

  static Stream<FotoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FotoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FotoRecord._();
  factory FotoRecord([void Function(FotoRecordBuilder) updates]) = _$FotoRecord;

  static FotoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFotoRecordData({
  String? foto,
}) {
  final firestoreData = serializers.toFirestore(
    FotoRecord.serializer,
    FotoRecord(
      (f) => f..foto = foto,
    ),
  );

  return firestoreData;
}
