import 'package:flutter_whatsapp_clone/core/usecases/usecase.dart';
import 'package:flutter_whatsapp_clone/features/chat/domain/entities/group_entity.dart';
import 'package:flutter_whatsapp_clone/features/chat/domain/repository/group_repository.dart';

class CreateGroupUseCase implements UseCase<void, GroupEntity> {
  final GroupRepository _groupRepository;

  CreateGroupUseCase(this._groupRepository);

  @override
  Future<void> call({GroupEntity? params}) async {
    await _groupRepository.createGroup(params!);
  }
}
