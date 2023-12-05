import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseFireBaseRemoteDataSource{
  Future<void> signUp(String email, String password);
  
}
class FireBaseRemoteDataSource extends BaseFireBaseRemoteDataSource{
  @override
  Future<void> signUp(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
          email: email, password: password);
      print('User created: ${userCredential.user?.uid}');
    } catch (e) {
      print('Error creating user: $e');
    }
  }
}