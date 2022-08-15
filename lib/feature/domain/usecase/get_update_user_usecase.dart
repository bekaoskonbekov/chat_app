import 'package:group_chat/feature/domain/entities/user_entity.dart';
import 'package:group_chat/feature/domain/repositories/firebase_repository.dart';

class GetUpdateUserUseCase {
  final FirebaseRepository repository;

  GetUpdateUserUseCase({required this.repository});
  Future<void> getUpdateUser(UserEntity user) {
    return repository.getUpdateUser(user);
  }
}