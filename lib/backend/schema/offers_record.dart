import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OffersRecord extends FirestoreRecord {
  OffersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "archived" field.
  bool? _archived;
  bool get archived => _archived ?? false;
  bool hasArchived() => _archived != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "nbrChambre" field.
  int? _nbrChambre;
  int get nbrChambre => _nbrChambre ?? 0;
  bool hasNbrChambre() => _nbrChambre != null;

  // "period" field.
  String? _period;
  String get period => _period ?? '';
  bool hasPeriod() => _period != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "UserName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "userphone" field.
  String? _userphone;
  String get userphone => _userphone ?? '';
  bool hasUserphone() => _userphone != null;

  // "messyinfo" field.
  String? _messyinfo;
  String get messyinfo => _messyinfo ?? '';
  bool hasMessyinfo() => _messyinfo != null;

  // "messyPrice" field.
  double? _messyPrice;
  double get messyPrice => _messyPrice ?? 0.0;
  bool hasMessyPrice() => _messyPrice != null;

  void _initializeFields() {
    _owner = snapshotData['owner'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _archived = snapshotData['archived'] as bool?;
    _address = snapshotData['address'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _nbrChambre = snapshotData['nbrChambre'] as int?;
    _period = snapshotData['period'] as String?;
    _gender = snapshotData['gender'] as String?;
    _userName = snapshotData['UserName'] as String?;
    _userphone = snapshotData['userphone'] as String?;
    _messyinfo = snapshotData['messyinfo'] as String?;
    _messyPrice = castToType<double>(snapshotData['messyPrice']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('offers');

  static Stream<OffersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OffersRecord.fromSnapshot(s));

  static Future<OffersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OffersRecord.fromSnapshot(s));

  static OffersRecord fromSnapshot(DocumentSnapshot snapshot) => OffersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OffersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OffersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OffersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OffersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOffersRecordData({
  DocumentReference? owner,
  DateTime? createdAt,
  bool? archived,
  String? address,
  DateTime? date,
  int? nbrChambre,
  String? period,
  String? gender,
  String? userName,
  String? userphone,
  String? messyinfo,
  double? messyPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'owner': owner,
      'created_at': createdAt,
      'archived': archived,
      'address': address,
      'date': date,
      'nbrChambre': nbrChambre,
      'period': period,
      'gender': gender,
      'UserName': userName,
      'userphone': userphone,
      'messyinfo': messyinfo,
      'messyPrice': messyPrice,
    }.withoutNulls,
  );

  return firestoreData;
}
