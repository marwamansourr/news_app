import 'package:equatable/equatable.dart';
import 'package:news_app/domain/entities/user_entity.dart';
import '../../../core/enums.dart';

class AuthState extends Equatable {
  final List<UserEntity> user;
  final AuthhState state;

  const AuthState({
    this.user = const [],
    this.state = AuthhState.loading,
  });

  AuthState copyWith({
    List<UserEntity>? user,
    AuthhState? state,
  }) {
    return AuthState(
      user: user ?? this.user,
      state: state ?? this.state,
    );
  }

  @override
  List<Object> get props => [user, state];
}
