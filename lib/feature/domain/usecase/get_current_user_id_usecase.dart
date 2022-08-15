import 'package:group_chat/feature/domain/entities/user_entity.dart';
import 'package:group_chat/feature/domain/repositories/firebase_repository.dart';

class GetCurrentUserIdUseCase {
  final FirebaseRepository repository;

  GetCurrentUserIdUseCase({required this.repository});
  Future<String> call() {
    return repository.getCurrentUserId();
  }
}