import 'package:equatable/equatable.dart';

/// The user entity has
/// unique id,
/// a name,
/// a phone number,
/// a about with describes the user
/// a profile picture,
/// a status
/// The user can send and recieve messages,
/// create and join groups,
/// make and receive calls
/// update their profile and settings

class UserEntity extends Equatable {
  final String? id;
  final String? name;
  final String? phoneNumber;
  final String? profilePicture;
  final String? about;
  final String? status;

  const UserEntity({
    this.id,
    this.name,
    this.phoneNumber,
    this.profilePicture,
    this.about,
    this.status,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        phoneNumber,
        profilePicture,
        about,
        status,
      ];
}
