
import '../../../domain/entities/call_entity.dart';

abstract class CallServiceRemote {
  factory CallServiceRemote() = _CallServiceRemote;
  //Todo: find the http response to use
  Future<void> startCall(CallEntity callEntity);
  Future<void> endCall(String callId, Duration callDuration);
  Future<List<CallEntity>> getCallsForUser(String userId,
      {bool onlyIncoming = false});
}

class _CallServiceRemote implements CallServiceRemote {
  @override
  Future<void> endCall(String callId, Duration callDuration) {
    // TODO: implement endCall
    throw UnimplementedError();
  }

  @override
  Future<List<CallEntity>> getCallsForUser(String userId,
      {bool onlyIncoming = false}) {
    // TODO: implement getCallsForUser
    throw UnimplementedError();
  }

  @override
  Future<void> startCall(CallEntity callEntity) {
    // TODO: implement startCall
    throw UnimplementedError();
  }
}
