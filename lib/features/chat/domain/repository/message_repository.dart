import 'package:flutter_whatsapp_clone/features/chat/domain/entities/message_entity.dart';


abstract class MessageRepository {
  Future<void> sendMessage(MessageEntity messageEntity);
  Stream<List<MessageEntity>> receiveMessage();
}
