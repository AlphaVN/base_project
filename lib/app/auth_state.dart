part of 'auth_cubit.dart';

class AuthState extends Equatable {
  bool isAuthenticated;

  AuthState({this.isAuthenticated = false});

  AuthState copyWith({
    bool? isAuthenticated,
  }) {
    return AuthState(
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
    );
  }

  @override
  List<Object> get props => [isAuthenticated];
}
