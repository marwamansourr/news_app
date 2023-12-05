import 'package:news_app/domain/entities/user_entity.dart';

abstract class BaseFireBaseRepo {
  Future<void> signUp(String email, String password);

}