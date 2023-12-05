import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TabelaJgRecord extends FirestoreRecord {
  TabelaJgRecord._(
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

  // "Golspro" field.
  int? _golspro;
  int get golspro => _golspro ?? 0;
  bool hasGolspro() => _golspro != null;

  // "Golscontra" field.
  int? _golscontra;
  int get golscontra => _golscontra ?? 0;
  bool hasGolscontra() => _golscontra != null;

  // "SaldoGols" field.
  int? _saldoGols;
  int get saldoGols => _saldoGols ?? 0;
  bool hasSaldoGols() => _saldoGols != null;

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
    _golspro = castToType<int>(snapshotData['Golspro']);
    _golscontra = castToType<int>(snapshotData['Golscontra']);
    _saldoGols = castToType<int>(snapshotData['SaldoGols']);
    _pts = castToType<int>(snapshotData['PTS']);
    _times = snapshotData['Times'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TabelaJg');

  static Stream<TabelaJgRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TabelaJgRecord.fromSnapshot(s));

  static Future<TabelaJgRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TabelaJgRecord.fromSnapshot(s));

  static TabelaJgRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TabelaJgRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TabelaJgRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TabelaJgRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TabelaJgRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TabelaJgRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTabelaJgRecordData({
  int? pj,
  int? vitorias,
  int? empates,
  int? derrotas,
  int? golspro,
  int? golscontra,
  int? saldoGols,
  int? pts,
  String? times,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PJ': pj,
      'Vitorias': vitorias,
      'Empates': empates,
      'Derrotas': derrotas,
      'Golspro': golspro,
      'Golscontra': golscontra,
      'SaldoGols': saldoGols,
      'PTS': pts,
      'Times': times,
    }.withoutNulls,
  );

  return firestoreData;
}

class TabelaJgRecordDocumentEquality implements Equality<TabelaJgRecord> {
  const TabelaJgRecordDocumentEquality();

  @override
  bool equals(TabelaJgRecord? e1, TabelaJgRecord? e2) {
    return e1?.pj == e2?.pj &&
        e1?.vitorias == e2?.vitorias &&
        e1?.empates == e2?.empates &&
        e1?.derrotas == e2?.derrotas &&
        e1?.golspro == e2?.golspro &&
        e1?.golscontra == e2?.golscontra &&
        e1?.saldoGols == e2?.saldoGols &&
        e1?.pts == e2?.pts &&
        e1?.times == e2?.times;
  }

  @override
  int hash(TabelaJgRecord? e) => const ListEquality().hash([
        e?.pj,
        e?.vitorias,
        e?.empates,
        e?.derrotas,
        e?.golspro,
        e?.golscontra,
        e?.saldoGols,
        e?.pts,
        e?.times
      ]);

  @override
  bool isValidKey(Object? o) => o is TabelaJgRecord;
}
