import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

// ignore: subtype_of_sealed_class
class MockDocumentSnapshot extends Mock implements DocumentSnapshot {}

void main() {
  test(
    "should return a valid GroupModel from a DocumentSnapshot",
    () {
      final mockDocumentSnapshot = MockDocumentSnapshot();

      when(mockDocumentSnapshot.get('id')).thenReturn('123');
      when(mockDocumentSnapshot.get('groupName')).thenReturn('TestGroup');
      when(mockDocumentSnapshot.get('CreatedAt')).thenReturn(Timestamp(12052023, 0));

    },
  );
}
