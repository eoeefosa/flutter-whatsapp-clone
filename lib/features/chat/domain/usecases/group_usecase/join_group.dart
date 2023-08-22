import '../../../../../core/usecases/usecase.dart';
import '../../repository/group_repository.dart';

class JoinGroupUseCase implements UseCase<void, String> {
  final GroupRepository _groupRepository;

  JoinGroupUseCase( this._groupRepository);
  
  @override
  Future<void> call({String? params}) async{
    await _groupRepository.joinGroup(params!);
  }
  
}