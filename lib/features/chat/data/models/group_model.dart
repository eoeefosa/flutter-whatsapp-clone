import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/group_entity.dart';
import '../../domain/entities/message_entity.dart';

class GroupModel extends GroupEntity {
  const GroupModel({
    String? id,
    String? groupName,
    String? groupImage,
    final List<MessageEntity>? messages,
    Timestamp? createdAt,
    String? lastmessagesid,
    String? description,
    List<String?>? adminIds,
    List<String?>? membersId,
  }) : super(
          id: id,
          groupName: groupName,
          messages: messages,
          groupImage: groupImage,
          createdAt: createdAt,
          lastmessagesid: lastmessagesid,
          description: description,
          adminId: adminIds,
        );

  factory GroupModel.fromDocumentSnapShot(DocumentSnapshot snapshot) {
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
  factory GroupModel.fromJson(Map<String, dynamic> map) {
    return GroupModel(
      id: map['id'] ?? "",
      groupName: map['groupName'] ?? "",
      groupImage: map['groupImage'] ?? "",
      createdAt: map['createdAt'] ?? "",
      lastmessagesid: map['lastmessagesid'] ?? "",
      description: map['description'] ?? "",
      adminIds: map['adminIds'] ?? "",
    );
  }
  // you can do more with factory constructors
  // factory User.fromJson(Map<String, dynamic> json) {
  // String userName = json['name'];
  // String userAlias = json['alias'];
  // if (userName == null || userAlias == null) throw FormatException();
  // userName = userName.toUpperCase();
  // userAlias = userAlias.toUpperCase();
  // return User(name: userName, alias: userAlias);
//           }

  factory GroupModel.fromEntity(GroupEntity entity) {
    return GroupModel(
      id: entity.id,
      groupName: entity.groupName,
      groupImage: entity.groupImage,
      createdAt: entity.createdAt,
      lastmessagesid: entity.lastmessagesid,
      description: entity.description,
      adminIds: entity.adminId,
    );
  }
  

  Map<String, dynamic> toJson() {
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
