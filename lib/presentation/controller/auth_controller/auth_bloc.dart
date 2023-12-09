import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:news_app/domain/usecases/sign_up_with_email_usecase.dart';
import '../../../core/enums.dart';
import '../../../domain/usecases/sign_up_with_google_usecase.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignUpWithEmailUseCase signUpUseCase;
  final SignUpWithGoogleUseCase signUpWithGoogleUseCase;

  AuthBloc(this.signUpUseCase, this.signUpWithGoogleUseCase) : super(const AuthState()) {
    on<SignUpWithEmailEvent>(_signUpWithEmail);
    on<SignUpWithGoogleEvent>(_signUpWithGoogle);

  }

  Future<void> _signUpWithEmail(
      SignUpWithEmailEvent event, Emitter<AuthState> emit) async {
    await signUpUseCase(event.email, event.password);
    emit(state.copyWith(
      state: AuthhState.success,
    ));
  }

  Future<void> _signUpWithGoogle(
      SignUpWithGoogleEvent event, Emitter<AuthState> emit) async {
    await signUpWithGoogleUseCase(event.email);
    emit(state.copyWith(
      state: AuthhState.success,
    ));
  }
}
