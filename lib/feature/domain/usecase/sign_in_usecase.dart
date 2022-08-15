import 'package:group_chat/feature/domain/entities/user_entity.dart';
import 'package:group_chat/feature/domain/repositories/firebase_repository.dart';

class SignInUseCase {
  final FirebaseRepository repository;

  SignInUseCase({required this.repository});
  Future<void> signIn(UserEntity user) {
    return repository.singnIn(user);
  }
}
