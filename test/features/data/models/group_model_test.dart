import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_whatsapp_clone/features/data/models/group_model.dart';
import 'package:mockito/mockito.dart';

// ignore: subtype_of_sealed_class
class MockDocumentSnapshot extends Mock implements DocumentSnapshot {}

void main() {
  // value
  String expectedid = '123';
  String expectedGroupName = 'Test Group';
  String expectedGroupImage = 'test.jpg';
  final expectedCReateAt = Timestamp(12052023, 0);
  String expectedDescription = 'This is a test group';
  String expectedLastmessageid = '456';
  final expectedAdminIds = ['789'];
  test(
    "should return a valid GroupModel from a DocumentSnapshot",
    () {
      final mockDocumentSnapshot = MockDocumentSnapshot();

      when(mockDocumentSnapshot.get('id')).thenReturn(expectedid);
      when(mockDocumentSnapshot.get('groupName')).thenReturn(expectedGroupName);
      when(mockDocumentSnapshot.get('groupImage'))
          .thenReturn(expectedGroupImage);
      when(mockDocumentSnapshot.get('CreatedAt')).thenReturn(expectedCReateAt);
      when(mockDocumentSnapshot.get('lastmessagesid'))
          .thenReturn(expectedLastmessageid);
      when(mockDocumentSnapshot.get('description'))
          .thenReturn(expectedDescription);
      when(mockDocumentSnapshot.get('adminIds')).thenReturn(expectedAdminIds);
      final expectedGroupModel = GroupModel.fromSnapshot(mockDocumentSnapshot);
      expect(expectedGroupModel.id, expectedid);
      expect(expectedGroupModel.groupName, expectedGroupName);
      expect(expectedGroupModel.groupImage, expectedGroupImage);
      expect(expectedGroupModel.createdAt, expectedCReateAt);
      expect(expectedGroupModel.description, expectedDescription);
      expect(expectedGroupModel.lastmessagesid, expectedLastmessageid);
      expect(expectedGroupModel.adminId, expectedAdminIds);
    },
  );
}
