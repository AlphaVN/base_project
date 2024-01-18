import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_alphavn_base/app/auth_cubit.dart';
import 'package:flutter_alphavn_base/common/constant/app_color.dart';
import 'package:flutter_alphavn_base/common/router/app_router.dart';
import 'package:flutter_alphavn_base/di/injection.dart';
import 'package:flutter_alphavn_base/my_bloc_observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<AuthCubit>(),
      // create: (context) => AuthCubit(),
      child: MaterialApp.router(
        routeInformationProvider: AppRouter.router.routeInformationProvider,
        routeInformationParser: AppRouter.router.routeInformationParser,
        routerDelegate: AppRouter.router.routerDelegate,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: AppColor.getMaterialColor(AppColor.primaryColor),
          primaryColor: AppColor.primaryColor,
          scaffoldBackgroundColor: Colors.grey.shade200,
        ),
      ),
    );
  }
}
