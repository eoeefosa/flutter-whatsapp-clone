import 'package:flutter_whatsapp_clone/core/resources/data_state.dart';
import 'package:flutter_whatsapp_clone/features/chat/domain/entities/call_entity.dart';

abstract class CallRepository {
  Future<void> startCall(CallEntity callEntity);
  Future<void> endCall(String callId, Duration callDuration);
  Future<DataState<List<CallEntity>>> getCallsForUser(String userId,
      {bool onlyIncoming = false});
}
