import 'package:flutter_whatsapp_clone/core/resources/data_state.dart';
import 'package:flutter_whatsapp_clone/core/usecases/usecase.dart';

import '../../entities/call_entity.dart';
import '../../repository/call_repository.dart';

class GetCallForUserUseCase
    implements UseCase<DataState<List<CallEntity>>, (String, bool)> {
  final CallRepository _callrepository;

  GetCallForUserUseCase(this._callrepository);

  @override
  Future<DataState<List<CallEntity>>> call({(String, bool)? params}) {
    return _callrepository.getCallsForUser(params!.$1,onlyIncoming: params.$2);
  }
}
