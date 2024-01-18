import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alphavn_base/app/auth_cubit.dart';
import 'package:flutter_alphavn_base/di/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  void handleLogin(BuildContext context) {
    var authCubit = injector<AuthCubit>();
    // var authCubit = BlocProvider.of<AuthCubit>(context);
    authCubit.onLogin();
  }
}
