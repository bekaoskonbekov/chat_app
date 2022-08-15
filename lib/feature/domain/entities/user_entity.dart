import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? name;
  final String? email;
  final String? phoneNumber;
  final String? uid;
  final String? status;
  final String? profileUrl;
  final String? password;
  final String? dob;
  final String? gender;
  final bool? isOnline;

  UserEntity({this.name, this.email, this.phoneNumber, this.uid, this.status,
      this.profileUrl, this.password, this.dob, this.gender, this.isOnline});

  @override
  List<Object?> get props => [
        name,
        email,
        phoneNumber,
        uid,
        status,
        profileUrl,
        password,
        dob,
        gender,
        isOnline
      ];
}
