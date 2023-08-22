import 'package:flutter_whatsapp_clone/features/chat/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> getuser();
}
