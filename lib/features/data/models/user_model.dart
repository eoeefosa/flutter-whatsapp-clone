import 'package:cloud_firestore/cloud_firestore.dart';

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
  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      id: entity.id,
      about: entity.about,
      name: entity.name,
      phoneNumber: entity.phoneNumber,
      profilePicture: entity.profilePicture,
      status: entity.status,
    );
  }
  factory UserModel.fromDocument(DocumentSnapshot snapshot) {
    return UserModel(
      id: snapshot.get('id'),
      about: snapshot.get('about'),
      name: snapshot.get('name'),
      phoneNumber: snapshot.get('phoneNumber'),
      profilePicture: snapshot.get('profilePicture'),
      status: snapshot.get('status'),
    );
  }
  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      about: map['about'],
      name: map['name'],
      phoneNumber: map['phoneNumber'],
      profilePicture: map['profilePicture'],
      status: map['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "about": about,
      "name": name,
      "phoneNumber": phoneNumber,
      "profilePicture": profilePicture,
      "status": status,
    };
  }

  Map<String, dynamic> toDocument() {
    return {
      "id": id,
      "about": about,
      "name": name,
      "phoneNumber": phoneNumber,
      "profilePicture": profilePicture,
      "status": status,
    };
  }
}
