import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class BaseFireBaseRemoteDataSource {
  Future<void> signUp(String email, String password);
  Future<void> signUpWithGoogle(String email);
}

class FireBaseRemoteDataSource extends BaseFireBaseRemoteDataSource {
  @override
  Future<void> signUp(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      // Handle the signed-up user, if needed
      User? user = userCredential.user;
      print("User signed up: ${user?.uid}");
    } catch (e) {
      print(e);
      // Handle the error, if needed
    }
  }

  @override
  Future<void> signUpWithGoogle(String email) async {
    try {
      // Trigger Google Sign-In
      final GoogleSignInAccount? googleSignInAccount =
      await GoogleSignIn().signIn();

      if (googleSignInAccount != null) {
        // Obtain GoogleSignInAuthentication
        final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

        // Create GoogleAuthProvider credential
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        // Sign in with the Google credential
        UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

        // Handle the signed-in user, if needed
        User? user = userCredential.user;
        print("User signed in with Google: ${user?.uid}");
      } else {
        // Handle the case where Google Sign-In is canceled
        print("Google Sign-In canceled");
      }
    } catch (e) {
      print(e);
      // Handle the error, if needed
    }
  }
}
