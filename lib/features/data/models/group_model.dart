import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_whatsapp_clone/features/domain/entities/group_entity.dart';

class GroupModel extends GroupEntity {
  const GroupModel({
    String? id,
    String? groupName,
    String? groupImage,
    Timestamp? createdAt,
    String? lastmessagesid,
    String? description,
    List<String?>? adminIds,
    List<String?>? membersId,
  }) : super(
          id: id,
          groupName: groupName,
          groupImage: groupImage,
          createdAt: createdAt,
          lastmessagesid: lastmessagesid,
          description: description,
          adminId: adminIds,
        );

  factory GroupModel.fromSnapshot(DocumentSnapshot snapshot) {
    return GroupModel(
      id: snapshot.get('id'),
      groupName: snapshot.get('groupName'),
      groupImage: snapshot.get('groupImage'),
      createdAt: snapshot.get('createdAt'),
      lastmessagesid: snapshot.get('lastmessagesid'),
      description: snapshot.get('description'),
      adminIds: snapshot.get('adminIds'),
    );
  }
  Map<String, dynamic> toDocument() {
    return {
      "id": id,
      "groupName": groupName,
      "groupImage": groupName,
      "createdAt": createdAt,
      "lastmessagesid": lastmessagesid,
      "description": description,
      "adminIds": adminId
    };
  }
}
