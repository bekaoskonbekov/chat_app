

import 'package:group_chat/feature/domain/entities/user_entity.dart';

abstract class FirebaseRemoteDataSource {
  Future<void> singnIn(UserEntity user);
  Future<void> signUp(UserEntity user);
  Future<bool> isSignIn();
  Future<void> signOut();
  Future<void> forgotPassword(String email);
  Future<void> googleAuth();
  Future<void> getUpdateUser(UserEntity);
  Future<void> getCreateCurrentUser(UserEntity user);
  Future<String> getCurrentUserId();
}