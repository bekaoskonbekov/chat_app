import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:group_chat/feature/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    final String? name,
    final String? email,
    final String? phoneNumber,
    final String? uid,
    final String? status,
    final String? profileUrl,
    final String? password,
    final String? dob,
    final String? gender,
    final bool? isOnline,
  }) : super(
            name: name,
            email: email,
            phoneNumber: phoneNumber,
            uid: uid,
            status: status,
            profileUrl: profileUrl,
            password: password,
            dob: dob,
            gender: gender,
            isOnline: isOnline);

  factory UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    return UserModel(
        status: snapshot.get("status"),
        profileUrl: snapshot.get('profileUrl'),
        phoneNumber: snapshot.get('phoneNumber'),
        name: snapshot.get('name'),
        email: snapshot.get('email'),
        uid: snapshot.get('uid'),
        password: snapshot.get('paasword'),
        dob: snapshot.get('dob'),
        gender: snapshot.get('gender'),
        isOnline: snapshot.get('isOnline'));
  }
  Map<String, dynamic> toDocument() {
    return {
      "name": name,
      "email": email,
      "phoneNumber": phoneNumber,
      "uid": uid,
      "status": status,
      "profileUrl": profileUrl,
      "password": password,
      "dob": dob,
      "gender": gender,
      "isOnline": isOnline
    };
  }
}
