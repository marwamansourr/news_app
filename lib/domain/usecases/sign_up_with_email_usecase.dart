import 'package:news_app/domain/repository/base_firebase_repo.dart';

class SignUpWithEmailUseCase{
  final BaseFireBaseRepo baseFireBaseRepo;
  SignUpWithEmailUseCase(this.baseFireBaseRepo);
  Future<void> call(String email, String password)async{
   return await baseFireBaseRepo.signUp(email,password);
  }
 }