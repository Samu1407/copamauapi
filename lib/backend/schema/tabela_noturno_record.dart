import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TabelaNoturnoRecord extends FirestoreRecord {
  TabelaNoturnoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "PJ" field.
  int? _pj;
  int get pj => _pj ?? 0;
  bool hasPj() => _pj != null;

  // "Vitorias" field.
  int? _vitorias;
  int get vitorias => _vitorias ?? 0;
  bool hasVitorias() => _vitorias != null;

  // "Empates" field.
  int? _empates;
  int get empates => _empates ?? 0;
  bool hasEmpates() => _empates != null;

  // "Derrotas" field.
  int? _derrotas;
  int get derrotas => _derrotas ?? 0;
  bool hasDerrotas() => _derrotas != null;

  // "SG" field.
  int? _sg;
  int get sg => _sg ?? 0;
  bool hasSg() => _sg != null;

  // "GC" field.
  int? _gc;
  int get gc => _gc ?? 0;
  bool hasGc() => _gc != null;

  // "GP" field.
  int? _gp;
  int get gp => _gp ?? 0;
  bool hasGp() => _gp != null;

  // "PTS" field.
  int? _pts;
  int get pts => _pts ?? 0;
  bool hasPts() => _pts != null;

  // "Times" field.
  String? _times;
  String get times => _times ?? '';
  bool hasTimes() => _times != null;

  void _initializeFields() {
    _pj = castToType<int>(snapshotData['PJ']);
    _vitorias = castToType<int>(snapshotData['Vitorias']);
    _empates = castToType<int>(snapshotData['Empates']);
    _derrotas = castToType<int>(snapshotData['Derrotas']);
    _sg = castToType<int>(snapshotData['SG']);
    _gc = castToType<int>(snapshotData['GC']);
    _gp = castToType<int>(snapshotData['GP']);
    _pts = castToType<int>(snapshotData['PTS']);
    _times = snapshotData['Times'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TabelaNoturno');

  static Stream<TabelaNoturnoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TabelaNoturnoRecord.fromSnapshot(s));

  static Future<TabelaNoturnoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TabelaNoturnoRecord.fromSnapshot(s));

  static TabelaNoturnoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TabelaNoturnoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TabelaNoturnoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TabelaNoturnoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TabelaNoturnoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TabelaNoturnoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTabelaNoturnoRecordData({
  int? pj,
  int? vitorias,
  int? empates,
  int? derrotas,
  int? sg,
  int? gc,
  int? gp,
  int? pts,
  String? times,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PJ': pj,
      'Vitorias': vitorias,
      'Empates': empates,
      'Derrotas': derrotas,
      'SG': sg,
      'GC': gc,
      'GP': gp,
      'PTS': pts,
      'Times': times,
    }.withoutNulls,
  );

  return firestoreData;
}

class TabelaNoturnoRecordDocumentEquality
    implements Equality<TabelaNoturnoRecord> {
  const TabelaNoturnoRecordDocumentEquality();

  @override
  bool equals(TabelaNoturnoRecord? e1, TabelaNoturnoRecord? e2) {
    return e1?.pj == e2?.pj &&
        e1?.vitorias == e2?.vitorias &&
        e1?.empates == e2?.empates &&
        e1?.derrotas == e2?.derrotas &&
        e1?.sg == e2?.sg &&
        e1?.gc == e2?.gc &&
        e1?.gp == e2?.gp &&
        e1?.pts == e2?.pts &&
        e1?.times == e2?.times;
  }

  @override
  int hash(TabelaNoturnoRecord? e) => const ListEquality().hash([
        e?.pj,
        e?.vitorias,
        e?.empates,
        e?.derrotas,
        e?.sg,
        e?.gc,
        e?.gp,
        e?.pts,
        e?.times
      ]);

  @override
  bool isValidKey(Object? o) => o is TabelaNoturnoRecord;
}
