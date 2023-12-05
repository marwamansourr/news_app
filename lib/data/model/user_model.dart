import 'package:news_app/domain/entities/user_entity.dart';

class UserModel extends UserEntity{
  const UserModel({
    required super.uId,
    required super.userName,
    required super.email,
    required super.password,
    required super.gender,
    required super.photoUrl,
  });
factory UserModel.fromjson(Map<String, dynamic>json)=>UserModel(
    uId: json['uid'] ?? "",
    userName: json['name'] ?? "",
    email: json['email'] ?? "",
    password:json['password'] ?? "",
    gender: json['gender'] ?? "",
    photoUrl: json['profileUrl'] ?? "",
);
}