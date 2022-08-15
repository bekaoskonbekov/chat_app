import 'package:group_chat/feature/domain/repositories/firebase_repository.dart';

class SignOutUseCase {
  final FirebaseRepository repository;

  SignOutUseCase({required this.repository});
  Future<void> signOut() {
    return repository.signOut();
  }
}
