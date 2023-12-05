import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TabelaFinalRecord extends FirestoreRecord {
  TabelaFinalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Data" field.
  String? _data;
  String get data => _data ?? '';
  bool hasData() => _data != null;

  // "Horario" field.
  String? _horario;
  String get horario => _horario ?? '';
  bool hasHorario() => _horario != null;

  // "Local" field.
  String? _local;
  String get local => _local ?? '';
  bool hasLocal() => _local != null;

  // "Equipe1" field.
  String? _equipe1;
  String get equipe1 => _equipe1 ?? '';
  bool hasEquipe1() => _equipe1 != null;

  // "Equipe2" field.
  String? _equipe2;
  String get equipe2 => _equipe2 ?? '';
  bool hasEquipe2() => _equipe2 != null;

  // "Placar" field.
  String? _placar;
  String get placar => _placar ?? '';
  bool hasPlacar() => _placar != null;

  // "OBS" field.
  String? _obs;
  String get obs => _obs ?? '';
  bool hasObs() => _obs != null;

  void _initializeFields() {
    _data = snapshotData['Data'] as String?;
    _horario = snapshotData['Horario'] as String?;
    _local = snapshotData['Local'] as String?;
    _equipe1 = snapshotData['Equipe1'] as String?;
    _equipe2 = snapshotData['Equipe2'] as String?;
    _placar = snapshotData['Placar'] as String?;
    _obs = snapshotData['OBS'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TabelaFinal');

  static Stream<TabelaFinalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TabelaFinalRecord.fromSnapshot(s));

  static Future<TabelaFinalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TabelaFinalRecord.fromSnapshot(s));

  static TabelaFinalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TabelaFinalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TabelaFinalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TabelaFinalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TabelaFinalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TabelaFinalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTabelaFinalRecordData({
  String? data,
  String? horario,
  String? local,
  String? equipe1,
  String? equipe2,
  String? placar,
  String? obs,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Data': data,
      'Horario': horario,
      'Local': local,
      'Equipe1': equipe1,
      'Equipe2': equipe2,
      'Placar': placar,
      'OBS': obs,
    }.withoutNulls,
  );

  return firestoreData;
}

class TabelaFinalRecordDocumentEquality implements Equality<TabelaFinalRecord> {
  const TabelaFinalRecordDocumentEquality();

  @override
  bool equals(TabelaFinalRecord? e1, TabelaFinalRecord? e2) {
    return e1?.data == e2?.data &&
        e1?.horario == e2?.horario &&
        e1?.local == e2?.local &&
        e1?.equipe1 == e2?.equipe1 &&
        e1?.equipe2 == e2?.equipe2 &&
        e1?.placar == e2?.placar &&
        e1?.obs == e2?.obs;
  }

  @override
  int hash(TabelaFinalRecord? e) => const ListEquality().hash([
        e?.data,
        e?.horario,
        e?.local,
        e?.equipe1,
        e?.equipe2,
        e?.placar,
        e?.obs
      ]);

  @override
  bool isValidKey(Object? o) => o is TabelaFinalRecord;
}
