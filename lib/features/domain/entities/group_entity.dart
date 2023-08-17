import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

/// The group entity is an entity that has a
/// unique id
/// a name
/// an group image
/// a description
/// a list of members id
/// a group can have one or more admins
/// who can manage the group settings and members
/// A group can send and receive messafes from its members

class GroupEntity extends Equatable {
  final String? id;
  final String? groupName;
  final String? groupImage;
  final Timestamp? createdAt;
  final String? lastmessagesid;
  final String? description;
  final List<String?>? adminId;
  final List<String?>? membersId;

  const GroupEntity({
    this.id,
    this.groupName,
    this.groupImage,
    this.description,
    this.adminId,
    this.membersId,
    this.createdAt,
    this.lastmessagesid,
  });

  @override
  List<Object?> get props => [
        id,
        groupName,
        groupImage,
        description,
        adminId,
        membersId,
      ];
}
