import 'package:equatable/equatable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

///
///The MessageEntity should have
///a unique id,
///a sender,
///a receiver,
///a content,
///a timestamp,
///and a status (sent, delivered, read).
///A message can be text, image, video, audio, document, or location.
///A message can belong to a group or a direct chat.
enum Status { sent, delivered, read }

enum MessageType { text, image, audio, document }

class MessageEntity extends Equatable {
  ///The recipient id of the message i might not
  ///I might not know this when sending a message
  final String? recipientid;

  /// The id of the sender of the message
  final String? senderId;

  /// todo: i don't need this seens the sender id is already hear
  // final String? senderName;
  ///The type of the message text, image, video, audio, document
  final Type? type;

  ///The timestamp of the message
  final Timestamp? timestamp;
  // The content of the message
  final String? content;

  ///The status of the message ( sent, delivered, read)
  final Status? status;
  final String? receiverName;
  final String? messageid;

  const MessageEntity({
    this.recipientid,
    this.senderId,
    // this.senderName,
    this.type,
    this.receiverName,
    this.timestamp,
    this.content,
    this.status,
    this.messageid,
  });

  @override
  List<Object?> get props => [
        recipientid,
        senderId,
        type,
        receiverName,
        timestamp,
        content,
        status,
        messageid,
      ];
}
