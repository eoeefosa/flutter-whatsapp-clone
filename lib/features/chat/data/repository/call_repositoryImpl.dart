import 'package:flutter_whatsapp_clone/core/resources/data_state.dart';
import 'package:flutter_whatsapp_clone/features/chat/data/data_source/remote/call_service_remote.dart';
import 'package:flutter_whatsapp_clone/features/chat/domain/entities/call_entity.dart';

import '../../domain/repository/call_repository.dart';

class CallRepostoryImpl implements CallRepository {
  final CallServiceRemote _callServiceRemote;
  CallRepostoryImpl(this._callServiceRemote);
  @override
  Future<void> endCall(String callId, Duration callDuration) async {
    // Todo: put in a try catch block
    await _callServiceRemote.endCall(callId, callDuration);
    // if (httpResponse.respon)
  }

  @override
  Future<DataState<List<CallEntity>>> getCallsForUser(String userId,
      {bool onlyIncoming = false}) async {
    // use http response to rap this
    try {
      final data = await _callServiceRemote.getCallsForUser(userId);
      if (data != null || data.isEmpty) {
        return DataSucess(data);
      } else {
        return DataFailed(Exception('Check your internet connection'));
      }
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<void> startCall(callEntity) async {
    await _callServiceRemote.startCall(callEntity);
  }
}
