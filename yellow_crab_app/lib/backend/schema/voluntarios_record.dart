import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VoluntariosRecord extends FirestoreRecord {
  VoluntariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "atividade" field.
  String? _atividade;
  String get atividade => _atividade ?? '';
  bool hasAtividade() => _atividade != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "curso" field.
  String? _curso;
  String get curso => _curso ?? '';
  bool hasCurso() => _curso != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "horainicio" field.
  String? _horainicio;
  String get horainicio => _horainicio ?? '';
  bool hasHorainicio() => _horainicio != null;

  // "horafim" field.
  String? _horafim;
  String get horafim => _horafim ?? '';
  bool hasHorafim() => _horafim != null;

  // "presente" field.
  bool? _presente;
  bool get presente => _presente ?? false;
  bool hasPresente() => _presente != null;

  // "recursos" field.
  String? _recursos;
  String get recursos => _recursos ?? '';
  bool hasRecursos() => _recursos != null;

  // "guardar" field.
  bool? _guardar;
  bool get guardar => _guardar ?? false;
  bool hasGuardar() => _guardar != null;

  // "presenca" field.
  String? _presenca;
  String get presenca => _presenca ?? '';
  bool hasPresenca() => _presenca != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _atividade = snapshotData['atividade'] as String?;
    _data = snapshotData['data'] as DateTime?;
    _curso = snapshotData['curso'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _horainicio = snapshotData['horainicio'] as String?;
    _horafim = snapshotData['horafim'] as String?;
    _presente = snapshotData['presente'] as bool?;
    _recursos = snapshotData['recursos'] as String?;
    _guardar = snapshotData['guardar'] as bool?;
    _presenca = snapshotData['presenca'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('voluntarios');

  static Stream<VoluntariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VoluntariosRecord.fromSnapshot(s));

  static Future<VoluntariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VoluntariosRecord.fromSnapshot(s));

  static VoluntariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VoluntariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VoluntariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VoluntariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VoluntariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VoluntariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVoluntariosRecordData({
  String? nome,
  String? atividade,
  DateTime? data,
  String? curso,
  String? telefone,
  String? horainicio,
  String? horafim,
  bool? presente,
  String? recursos,
  bool? guardar,
  String? presenca,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'atividade': atividade,
      'data': data,
      'curso': curso,
      'telefone': telefone,
      'horainicio': horainicio,
      'horafim': horafim,
      'presente': presente,
      'recursos': recursos,
      'guardar': guardar,
      'presenca': presenca,
    }.withoutNulls,
  );

  return firestoreData;
}

class VoluntariosRecordDocumentEquality implements Equality<VoluntariosRecord> {
  const VoluntariosRecordDocumentEquality();

  @override
  bool equals(VoluntariosRecord? e1, VoluntariosRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.atividade == e2?.atividade &&
        e1?.data == e2?.data &&
        e1?.curso == e2?.curso &&
        e1?.telefone == e2?.telefone &&
        e1?.horainicio == e2?.horainicio &&
        e1?.horafim == e2?.horafim &&
        e1?.presente == e2?.presente &&
        e1?.recursos == e2?.recursos &&
        e1?.guardar == e2?.guardar &&
        e1?.presenca == e2?.presenca;
  }

  @override
  int hash(VoluntariosRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.atividade,
        e?.data,
        e?.curso,
        e?.telefone,
        e?.horainicio,
        e?.horafim,
        e?.presente,
        e?.recursos,
        e?.guardar,
        e?.presenca
      ]);

  @override
  bool isValidKey(Object? o) => o is VoluntariosRecord;
}
