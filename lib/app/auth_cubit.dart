import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState(isAuthenticated: false));

  void onLogin() {
    print("TRUUOCCC::  ${state.isAuthenticated}");
    emit(AuthState(isAuthenticated: true));
    print("SAUUUU::: ${state.isAuthenticated}");
  }

  void onLogout() {
    emit(AuthState(isAuthenticated: false));
  }
}
