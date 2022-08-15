import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:group_chat/feature/data/remote_data_source/firebase_remote_data_source.dart';
import 'package:group_chat/feature/data/remote_data_source/models/user_model.dart';
import 'package:group_chat/feature/data/repositories/firebase_repository_impl.dart';
import 'package:group_chat/feature/domain/entities/user_entity.dart';

class FireBaseRemoteDataSourceImpl implements FireBaseRepositoryImpl {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;
  final GoogleSignIn signIn;

  FireBaseRemoteDataSourceImpl(
      {required this.firestore, required this.auth, required this.signIn});
  @override
  Future<void> forgotPassword(String email) async {
    await auth.sendPasswordResetEmail(email: email);
  }

  @override
  Future<void> getCreateCurrentUser(UserEntity user) async {
    final userCollection = firestore.collection('User');
    final uid = await getCurrentUserId();
    userCollection.doc(uid).get().then((value) => (userDoc) {
          final newUser = UserModel(
                  name: user.name,
                  email: user.email,
                  phoneNumber: user.phoneNumber,
                  uid: user.uid,
                  status: user.status,
                  profileUrl: user.profileUrl,
                  password: user.password,
                  dob: user.dob,
                  gender: user.gender,
                  isOnline: user.isOnline)
              .toDocument();
          if (!userDoc.exists) {
            userCollection.doc(uid).set(newUser);
          }
        });
  }

  @override
  Future<String> getCurrentUserId() async => auth.currentUser!.uid;

  @override
  Future<void> getUpdateUser(UserEntity) {
    // TODO: implement getUpdateUser
    throw UnimplementedError();
  }

  @override
  Future<void> googleAuth() {
    // TODO: implement googleAuth
    throw UnimplementedError();
  }

  @override
  Future<bool> isSignIn() async => await auth.currentUser?.uid != null;

  @override
  Future<void> signOut() async => await auth.signOut();

  @override
  Future<void> signUp(UserEntity user) async {
    await auth.createUserWithEmailAndPassword(
        email: user.email!, password: user.password!);
  }

  @override
  Future<void> singnIn(UserEntity user) async {
    await auth.signInWithEmailAndPassword(
        email: user.email!, password: user.password!);
  }

  @override
  // TODO: implement remoteDataSource
  FirebaseRemoteDataSource get remoteDataSource => throw UnimplementedError();
}
