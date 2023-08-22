import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/call_entity.dart';

class CallModel extends CallEntity {
  const CallModel({
    String? id,
    String? callInitiatorId,
    String? callReciverId,
    Timestamp? calledAt,
    CallType? callType,
    CallStatus? callStatus,
    Duration? duration,
  }) : super(
          id: id,
          callInitaitorId: callInitiatorId,
          callReciverId: callReciverId,
          calledAt: calledAt,
          callType: callType,
          callStatus: callStatus,
          duration: duration,
        );

  factory CallModel.fromDocumentSnapShot(DocumentSnapshot snapshot) {
    return CallModel(
      id: snapshot.get('id'),
      callInitiatorId: snapshot.get('callInitaitorId'),
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
      callInitiatorId: map['callInitaitorId'],
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
      callInitiatorId: entity.callInitaitorId,
      callReciverId: entity.callReciverId,
      calledAt: entity.calledAt,
      callType: entity.callType,
      callStatus: entity.callStatus,
      duration: entity.duration,
    );
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

