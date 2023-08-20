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
          callType: callType,
          callStatus: callStatus,
          duration: duration,
        );

  factory CallModel.fromsnapshot(DocumentSnapshot snapshot) {
    return CallModel(
      id: snapshot.get('id'),
      callInitaitorId: snapshot.get('callInitaitorId'),
      callReciverId: snapshot.get('callReciverId'),
      calledAt: snapshot.get('calledAt'),
      callType: snapshot.get('callType'),
      callStatus: snapshot.get('callStatus'),
      duration: snapshot.get('duration'),
    );
  }

  factory CallModel.fromJson(Map<String, dynamic> map) {
    return CallModel(
      id: map['id'],
      callInitaitorId: map['callInitaitorId'],
      callReciverId: map['callReciverId'],
      calledAt: map['calledAt'],
      callType: map['callType'],
      callStatus: map['callStatus'],
      duration: map['duration'],
    );
  }

  factory CallModel.fromEntity(CallEntity entity) {
    return CallModel(
      id: entity.id,
      callInitaitorId: entity.callInitaitorId,
      callReciverId: entity.callReciverId,
      calledAt: entity.calledAt,
      callType: entity.callType,
      callStatus: entity.callStatus,
      duration: entity.duration,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "callInitaitorId": callInitaitorId,
      "callReciverId": callReciverId,
      "calledAt": calledAt,
      "callType": callType,
      "callStatus": callStatus,
      "duration": duration
    };
  }
   Map<String, dynamic> toDocument() {
    return {
      "id": id,
      "callInitaitorId": callInitaitorId,
      "callReciverId": callReciverId,
      "calledAt": calledAt,
      "callType": callType,
      "callStatus": callStatus,
      "duration": duration
    };
  }
}

