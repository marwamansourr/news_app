import 'package:news_app/domain/entities/userEntity.dart';

abstract class BaseFireBaseRepo {
  Future<void> signUp(String email, String password);

}