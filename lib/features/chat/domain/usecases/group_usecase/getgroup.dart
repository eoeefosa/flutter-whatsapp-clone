import 'package:flutter_whatsapp_clone/core/usecases/usecase.dart';
import 'package:flutter_whatsapp_clone/features/chat/domain/repository/group_repository.dart';

import '../../entities/group_entity.dart';

class GetGroupUseCase implements StreamUseCase<List<GroupEntity>, void> {
  final GroupRepository _groupRepository;

  GetGroupUseCase(this._groupRepository);

  @override
  Stream<List<GroupEntity>> call({void params}) {
    return _groupRepository.getGroup();
  }
}
