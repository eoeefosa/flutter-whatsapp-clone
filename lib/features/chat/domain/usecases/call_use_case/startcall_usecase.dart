import 'package:flutter_whatsapp_clone/core/usecases/usecase.dart';
import 'package:flutter_whatsapp_clone/features/chat/domain/repository/call_repository.dart';

import '../../entities/call_entity.dart';

class StartCallUseCase implements UseCase<void, CallEntity> {
  final CallRepository _callrepository;
  StartCallUseCase(this._callrepository);
  @override
  Future<void> call({CallEntity? params}) {
    return _callrepository.startCall(params!);
  }
}
