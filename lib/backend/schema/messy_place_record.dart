import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessyPlaceRecord extends FirestoreRecord {
  MessyPlaceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "Nchambre" field.
  int? _nchambre;
  int get nchambre => _nchambre ?? 0;
  bool hasNchambre() => _nchambre != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "propertyName" field.
  String? _propertyName;
  String get propertyName => _propertyName ?? '';
  bool hasPropertyName() => _propertyName != null;

  // "propertyAddress" field.
  String? _propertyAddress;
  String get propertyAddress => _propertyAddress ?? '';
  bool hasPropertyAddress() => _propertyAddress != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _category = snapshotData['category'] as String?;
    _nchambre = snapshotData['Nchambre'] as int?;
    _image = snapshotData['image'] as String?;
    _propertyName = snapshotData['propertyName'] as String?;
    _propertyAddress = snapshotData['propertyAddress'] as String?;
    _description = snapshotData['description'] as String?;
    _price = snapshotData['price'] as int?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('messyPlace')
          : FirebaseFirestore.instance.collectionGroup('messyPlace');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('messyPlace').doc();

  static Stream<MessyPlaceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessyPlaceRecord.fromSnapshot(s));

  static Future<MessyPlaceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessyPlaceRecord.fromSnapshot(s));

  static MessyPlaceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessyPlaceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessyPlaceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessyPlaceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessyPlaceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessyPlaceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessyPlaceRecordData({
  String? category,
  int? nchambre,
  String? image,
  String? propertyName,
  String? propertyAddress,
  String? description,
  int? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'category': category,
      'Nchambre': nchambre,
      'image': image,
      'propertyName': propertyName,
      'propertyAddress': propertyAddress,
      'description': description,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}
