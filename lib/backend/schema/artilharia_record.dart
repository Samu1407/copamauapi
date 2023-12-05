import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArtilhariaRecord extends FirestoreRecord {
  ArtilhariaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NOME" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "EQUIPES" field.
  String? _equipes;
  String get equipes => _equipes ?? '';
  bool hasEquipes() => _equipes != null;

  // "GOLS" field.
  int? _gols;
  int get gols => _gols ?? 0;
  bool hasGols() => _gols != null;

  void _initializeFields() {
    _nome = snapshotData['NOME'] as String?;
    _equipes = snapshotData['EQUIPES'] as String?;
    _gols = castToType<int>(snapshotData['GOLS']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Artilharia');

  static Stream<ArtilhariaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArtilhariaRecord.fromSnapshot(s));

  static Future<ArtilhariaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArtilhariaRecord.fromSnapshot(s));

  static ArtilhariaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArtilhariaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArtilhariaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArtilhariaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArtilhariaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArtilhariaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArtilhariaRecordData({
  String? nome,
  String? equipes,
  int? gols,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NOME': nome,
      'EQUIPES': equipes,
      'GOLS': gols,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArtilhariaRecordDocumentEquality implements Equality<ArtilhariaRecord> {
  const ArtilhariaRecordDocumentEquality();

  @override
  bool equals(ArtilhariaRecord? e1, ArtilhariaRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.equipes == e2?.equipes &&
        e1?.gols == e2?.gols;
  }

  @override
  int hash(ArtilhariaRecord? e) =>
      const ListEquality().hash([e?.nome, e?.equipes, e?.gols]);

  @override
  bool isValidKey(Object? o) => o is ArtilhariaRecord;
}
