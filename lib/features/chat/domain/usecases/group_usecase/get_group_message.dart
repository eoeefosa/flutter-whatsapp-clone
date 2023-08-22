import 'package:flutter_whatsapp_clone/core/usecases/usecase.dart';
import 'package:flutter_whatsapp_clone/features/chat/domain/entities/message_entity.dart';
import 'package:flutter_whatsapp_clone/features/chat/domain/repository/group_repository.dart';

class GetGroupMessageUseCase implements StreamUseCase<List<MessageEntity>, String> {
  final GroupRepository _groupRepository;

  GetGroupMessageUseCase(this._groupRepository);

  @override
  Stream<List<MessageEntity>> call({String? params}) {
    return _groupRepository.getGroupMessage(params!);
  }
}
