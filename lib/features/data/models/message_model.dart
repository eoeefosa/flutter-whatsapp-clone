import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_whatsapp_clone/features/domain/entities/message_entity.dart';

class MessageModel extends MessageEntity {
  const MessageModel({
    String? recipientid,
    String? senderId,
    Type? type,
    Timestamp? timestamp,
    String? content,
    Status? status,
    String? receiverName,
    String? messageid,
  }) : super(
          recipientid: recipientid,
          senderId: senderId,
          type: type,
          content: content,
          messageid: messageid,
          receiverName: receiverName,
          status: status,
          timestamp: timestamp,
        );
}
