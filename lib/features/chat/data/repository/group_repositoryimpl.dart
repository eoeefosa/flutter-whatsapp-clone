import 'package:flutter_whatsapp_clone/features/chat/domain/entities/group_entity.dart';
import 'package:flutter_whatsapp_clone/features/chat/domain/entities/message_entity.dart';
import 'package:flutter_whatsapp_clone/features/chat/domain/repository/group_repository.dart';

class GroupRepositoryImpl implements GroupRepository {
  @override
  Future<void> createGroup(GroupEntity groupEntity) {
    // TODO: implement createGroup
    throw UnimplementedError();
  }

  @override
  Future<void> deleteGroupMessage(String messageid) {
    // TODO: implement deleteGroupMessage
    throw UnimplementedError();
  }

  @override
  Stream<List<GroupEntity>> getGroup() {
    // TODO: implement getGroup
    throw UnimplementedError();
  }

  @override
  Stream<List<MessageEntity>> getGroupMessage(String groupId) {
    // TODO: implement getGroupMessage
    throw UnimplementedError();
  }

  @override
  Future<void> joinGroup(String groupid) {
    // TODO: implement joinGroup
    throw UnimplementedError();
  }

  @override
  Future<void> updateGroup(GroupEntity groupEntity) {
    // TODO: implement updateGroup
    throw UnimplementedError();
  }

  @override
  Future<void> messageInGroup(messageEntity, String groupid) {
    // TODO: implement messageInGroup
    throw UnimplementedError();
  }
  
  @override
  Future<void> deleteGroup( GroupEntity groupEntity) {
    // TODO: implement deleteGroup
    throw UnimplementedError();
  }
}
