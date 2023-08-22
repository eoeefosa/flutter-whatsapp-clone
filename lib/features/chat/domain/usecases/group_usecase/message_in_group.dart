import '../../../../../core/usecases/usecase.dart';
import '../../entities/message_entity.dart';
import '../../repository/group_repository.dart';

class MessageInGroupUseCase implements UseCase<void, (MessageEntity , String)> {
  final GroupRepository _groupRepository;

  MessageInGroupUseCase( this._groupRepository);
  
  @override
  Future<void> call({(MessageEntity , String)? params}) async{
    await _groupRepository.messageInGroup(params!.$1, params.$2);
  }
}