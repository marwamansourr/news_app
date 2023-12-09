import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class SignUpWithEmailEvent extends AuthEvent {
  final String email;
  final String password;

  const SignUpWithEmailEvent({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

class SignUpWithGoogleEvent extends AuthEvent {
  final String email;
  const SignUpWithGoogleEvent({required this.email});
  @override
  List<Object?> get props => [email];
}
