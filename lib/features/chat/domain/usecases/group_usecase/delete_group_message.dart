import 'package:flutter_whatsapp_clone/core/usecases/usecase.dart';
import 'package:flutter_whatsapp_clone/features/chat/domain/entities/group_entity.dart';
import 'package:flutter_whatsapp_clone/features/chat/domain/repository/group_repository.dart';

class DeleteGroupUseCase implements UseCase<void, GroupEntity> {
  final GroupRepository _groupRepository;

  DeleteGroupUseCase( this._groupRepository);
  
  @override
  Future<void> call({GroupEntity? params}) async{
    await _groupRepository.deleteGroup(params!);
  }
  
}
