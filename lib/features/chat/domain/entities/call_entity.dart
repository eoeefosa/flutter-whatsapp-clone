import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';


/// Call type can be voice or video call
enum CallType { voice, video }
/// CallStatus can be missed answered or declined
enum CallStatus { missed, answered, declined }

/// The call entity should
/// have a unique id
/// a caller
/// a callee
/// a type(voice or video)
/// time stamp of call
/// a duration
/// a status(missed, answered, declined)
/// a call can be made between 2 users or within a
/// group
class CallEntity extends Equatable {
  final String? id;
  final String? callInitaitorId;
  final String? callReciverId;
  final Timestamp? calledAt;
  final CallType? callType;
  final CallStatus? callStatus;
  final Duration? duration;

  const CallEntity( {
    this.id,
    this.callInitaitorId,
    this.callReciverId,
    this.calledAt,
    this.callType,
    this.callStatus,
    this.duration,
  });

  @override
  List<Object?> get props => throw UnimplementedError();
}
