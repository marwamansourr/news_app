abstract class BaseFireBaseRepo {
  Future<void> signUp(String email, String password);
  Future<void> signUpWithGoogle(String email);



}