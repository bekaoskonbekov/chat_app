import 'package:group_chat/feature/data/remote_data_source/firebase_remote_data_source.dart';
import 'package:group_chat/feature/domain/entities/user_entity.dart';
import 'package:group_chat/feature/domain/repositories/firebase_repository.dart';

class FireBaseRepositoryImpl implements FirebaseRepository {
  final FirebaseRemoteDataSource remoteDataSource;

  FireBaseRepositoryImpl({required this.remoteDataSource});

  @override
  Future<void> forgotPassword(String email) async =>
      remoteDataSource.forgotPassword(email);

  @override
  Future<void> getCreateCurrentUser(UserEntity user) async =>
      remoteDataSource.getCreateCurrentUser(user);

  @override
  Future<String> getCurrentUserId() async =>
      remoteDataSource.getCurrentUserId();

  @override
  Future<void> getUpdateUser(UserEntity ) async =>
      remoteDataSource.getUpdateUser(UserEntity);

  @override
  Future<void> googleAuth() async => remoteDataSource.googleAuth();

  @override
  Future<bool> isSignIn() async => remoteDataSource.isSignIn();

  @override
  Future<void> signOut() async => remoteDataSource.signOut();

  @override
  Future<void> signUp(UserEntity user) async => remoteDataSource.signUp(user);

  @override
  Future<void> singnIn(UserEntity user) => remoteDataSource.singnIn(user);
}
