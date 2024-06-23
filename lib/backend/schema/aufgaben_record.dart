import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AufgabenRecord extends FirestoreRecord {
  AufgabenRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "taskName" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  bool hasTaskName() => _taskName != null;

  // "taskDescription" field.
  String? _taskDescription;
  String get taskDescription => _taskDescription ?? '';
  bool hasTaskDescription() => _taskDescription != null;

  // "completed" field.
  int? _completed;
  int get completed => _completed ?? 0;
  bool hasCompleted() => _completed != null;

  void _initializeFields() {
    _taskName = snapshotData['taskName'] as String?;
    _taskDescription = snapshotData['taskDescription'] as String?;
    _completed = castToType<int>(snapshotData['completed']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Aufgaben');

  static Stream<AufgabenRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AufgabenRecord.fromSnapshot(s));

  static Future<AufgabenRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AufgabenRecord.fromSnapshot(s));

  static AufgabenRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AufgabenRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AufgabenRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AufgabenRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AufgabenRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AufgabenRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAufgabenRecordData({
  String? taskName,
  String? taskDescription,
  int? completed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'taskName': taskName,
      'taskDescription': taskDescription,
      'completed': completed,
    }.withoutNulls,
  );

  return firestoreData;
}

class AufgabenRecordDocumentEquality implements Equality<AufgabenRecord> {
  const AufgabenRecordDocumentEquality();

  @override
  bool equals(AufgabenRecord? e1, AufgabenRecord? e2) {
    return e1?.taskName == e2?.taskName &&
        e1?.taskDescription == e2?.taskDescription &&
        e1?.completed == e2?.completed;
  }

  @override
  int hash(AufgabenRecord? e) => const ListEquality()
      .hash([e?.taskName, e?.taskDescription, e?.completed]);

  @override
  bool isValidKey(Object? o) => o is AufgabenRecord;
}
