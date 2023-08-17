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
}
