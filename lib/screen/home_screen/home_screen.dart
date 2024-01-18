import 'package:flutter/material.dart';
import 'package:flutter_alphavn_base/screen/home_screen/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(),
      child: const Scaffold(
        body: Center(
          child: Text("HOME"),
        ),
      ),
    );
  }
}
