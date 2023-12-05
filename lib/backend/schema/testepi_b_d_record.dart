import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestepiBDRecord extends FirestoreRecord {
  TestepiBDRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Jogador" field.
  String? _jogador;
  String get jogador => _jogador ?? '';
  bool hasJogador() => _jogador != null;

  // "Numero" field.
  int? _numero;
  int get numero => _numero ?? 0;
  bool hasNumero() => _numero != null;

  void _initializeFields() {
    _jogador = snapshotData['Jogador'] as String?;
    _numero = castToType<int>(snapshotData['Numero']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('testepiBD');

  static Stream<TestepiBDRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TestepiBDRecord.fromSnapshot(s));

  static Future<TestepiBDRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TestepiBDRecord.fromSnapshot(s));

  static TestepiBDRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TestepiBDRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TestepiBDRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TestepiBDRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TestepiBDRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TestepiBDRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTestepiBDRecordData({
  String? jogador,
  int? numero,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Jogador': jogador,
      'Numero': numero,
    }.withoutNulls,
  );

  return firestoreData;
}

class TestepiBDRecordDocumentEquality implements Equality<TestepiBDRecord> {
  const TestepiBDRecordDocumentEquality();

  @override
  bool equals(TestepiBDRecord? e1, TestepiBDRecord? e2) {
    return e1?.jogador == e2?.jogador && e1?.numero == e2?.numero;
  }

  @override
  int hash(TestepiBDRecord? e) =>
      const ListEquality().hash([e?.jogador, e?.numero]);

  @override
  bool isValidKey(Object? o) => o is TestepiBDRecord;
}
