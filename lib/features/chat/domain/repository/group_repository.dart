import 'package:flutter_whatsapp_clone/features/chat/domain/entities/message_entity.dart';

import '../entities/group_entity.dart';

abstract class GroupRepository {
  Future<void> createGroup(GroupEntity groupEntity);
  Future<void> updateGroup(GroupEntity groupEntity);

  Future<void> joinGroup(String groupid);
  Stream<List<GroupEntity>> getGroup();
  Future<void> deleteGroup(GroupEntity groupEntity);

  Future<void> messageInGroup(MessageEntity messageEntity, String groupid);
  Stream<List<MessageEntity>> getGroupMessage(String groupId);
  Future<void> deleteGroupMessage(String messageid);
}
