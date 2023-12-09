import 'package:news_app/domain/repository/base_firebase_repo.dart';

class SignUpWithGoogleUseCase{
  final BaseFireBaseRepo baseFireBaseRepo;
  SignUpWithGoogleUseCase(this.baseFireBaseRepo);
  Future<void> call(String email)async{
    return await baseFireBaseRepo.signUpWithGoogle(email);
  }
}