import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:news_app/domain/usecases/sign_up_usecase.dart';
import '../../../core/enums.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignUpUseCase signUpUseCase;

  AuthBloc(this.signUpUseCase) : super(const AuthState()) {
    on<SignUpWithEmailEvent>(_signUpWithEmail);
  }
  Future<void> _signUpWithEmail(
      SignUpWithEmailEvent event, Emitter<AuthState> emit) async {
    await signUpUseCase(event.email, event.password);
    emit(state.copyWith(
      state: AuthhState.success,
    ));
  }
}
