import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    String? id,
    String? name,
    String? phoneNumber,
    String? profilePicture,
    String? about,
    String? status,
  }) : super(
          id: id,
          about: about,
          name: name,
          phoneNumber: phoneNumber,
          profilePicture: profilePicture,
          status: status,
        );
  
}
