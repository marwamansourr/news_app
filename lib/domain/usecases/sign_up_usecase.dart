 import 'package:news_app/domain/entities/userEntity.dart';
import 'package:news_app/domain/repository/base_firebase_repo.dart';

class SignUpUseCase{
  final BaseFireBaseRepo baseFireBaseRepo;
  SignUpUseCase(this.baseFireBaseRepo);
  Future<void> call(String email, String password)async{
   return await baseFireBaseRepo.signUp(email,password);
  }
 }