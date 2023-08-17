import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_whatsapp_clone/features/domain/entities/call_entity.dart';

class CallModel extends CallEntity {
  const CallModel({
    String? id,
    String? callInitaitorId,
    String? callReciverId,
    Timestamp? calledAt,
    CallType? callType,
    CallStatus? callStatus,
    Duration? duration,
  }) : super(
          id: id,
          callInitaitorId: callInitaitorId,
          callReciverId: callReciverId,
          calledAt: calledAt,
          callStatus: callStatus,
          duration: duration,
        );
}
