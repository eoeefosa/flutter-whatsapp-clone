import 'package:flutter_whatsapp_clone/core/usecases/usecase.dart';

import '../../repository/call_repository.dart';

class EndCallUseCase implements UseCase<void, (String, Duration)> {
  final CallRepository _callrepository;

  EndCallUseCase(this._callrepository);

  @override
  Future<void> call({(String, Duration)? params}) {
   return _callrepository.endCall(params!.$1, params.$2);
  }
}
