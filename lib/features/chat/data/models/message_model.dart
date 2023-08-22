import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_whatsapp_clone/features/chat/domain/entities/message_entity.dart';

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

  factory MessageModel.fromDocumentSnapShot(DocumentSnapshot snapshot) {
    return MessageModel(
      recipientid: snapshot.get('recipientid'),
      senderId: snapshot.get('senderId'),
      type: snapshot.get('type'),
      content: snapshot.get('content'),
      messageid: snapshot.get('messageid'),
      receiverName: snapshot.get('receiverName'),
      status: snapshot.get('status'),
      timestamp: snapshot.get('timestamp'),
    );
  }
  factory MessageModel.fromEntity(MessageEntity entity) {
    return MessageModel(
      recipientid: entity.receiverName,
      senderId: entity.senderId,
      type: entity.type,
      content: entity.content,
      messageid: entity.messageid,
      receiverName: entity.receiverName,
      status: entity.status,
      timestamp: entity.timestamp,
    );
  }
  factory MessageModel.fromJson(Map<String, dynamic> map) {
    return MessageModel(
      recipientid: map['recipientid'],
      senderId: map['senderId'],
      type: map['type'],
      content: map['content'],
      messageid: map['messageid'],
      receiverName: map['receiverName'],
      status: map['status'],
      timestamp: map['timestamp'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "recipientid": recipientid,
      "senderId": senderId,
      "type": type,
      "content": content,
      "messageid": messageid,
      "receiverName": receiverName,
      "status": status,
      "timestamp": timestamp,
    };
  }

  
}
