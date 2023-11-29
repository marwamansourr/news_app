import 'package:equatable/equatable.dart';

class UserEntity extends Equatable{
  final int uId;
  final String userName;
  final String email;
  final String password;
  final String gender;
  final String photoUrl;

  const UserEntity({
    required this.uId,
    required this.userName,
    required this.email,
    required this.password,
    required this.gender,
    required this.photoUrl,
  });


  @override

  List<Object?> get props => [uId,userName,email,password,gender,photoUrl];

}
