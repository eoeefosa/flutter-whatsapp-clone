import '../../../../../core/usecases/usecase.dart';
import '../../entities/group_entity.dart';
import '../../repository/group_repository.dart';

class UpdateGroupUseCase implements UseCase<void, GroupEntity> {
  final GroupRepository _groupRepository;

  UpdateGroupUseCase(this._groupRepository);

  @override
  Future<void> call({GroupEntity? params}) async {
    await _groupRepository.updateGroup(params!);
  }
}
