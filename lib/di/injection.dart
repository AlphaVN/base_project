import 'package:flutter_alphavn_base/app/app_cubit.dart';
import 'package:flutter_alphavn_base/app/auth_cubit.dart';
import 'package:flutter_alphavn_base/repository/auth_repository.dart';
import 'package:flutter_alphavn_base/repository/impl/auth_repository_impl.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> initDependencies() async {
  injector.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());

  injector.registerLazySingleton(() => AuthCubit());
  injector.registerLazySingleton(() => AppCubit());
}
