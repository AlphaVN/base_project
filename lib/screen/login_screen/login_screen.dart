

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alphavn_base/app/auth_cubit.dart';
import 'package:flutter_alphavn_base/common/constant/app_asset.dart';
import 'package:flutter_alphavn_base/common/constant/app_color.dart';
import 'package:flutter_alphavn_base/common/style/text_style.dart';
import 'package:flutter_alphavn_base/common/widget/input_icon.dart';
import 'package:flutter_alphavn_base/common/widget/my_button.dart';
import 'package:flutter_alphavn_base/screen/login_screen/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginCubit loginCubit;

  @override
  void initState() {
    super.initState();
    loginCubit = BlocProvider.of<LoginCubit>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(AppAsset.imgDecoration1),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(AppAsset.imgSubtract),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SafeArea(
                child: Text(
                  'Coppy right: AlphaVN',
                  style: MyTextStyle.version,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: MyTextStyle.titleStyle,
                  ),
                  const SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            style: MyTextStyle.noteStyle,
                            text: 'By signing in you are areeing \nour ',
                          ),
                          TextSpan(
                            style: MyTextStyle.linkStyle,
                            text: 'Term and privacy policy',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Terms of Service"');
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: MyTextStyle.titleStyle2,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        "Register",
                        style: MyTextStyle.titleStyle2,
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  const InputIcon(
                    hint: 'Phone number',
                    prefixIcon: Icon(Icons.phone_android),
                  ),
                  const SizedBox(height: 20),
                  const InputIcon(
                    hint: 'Password',
                    prefixIcon: Icon(Icons.lock_open_sharp),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (_) {},
                        checkColor: AppColor.whiteColor1,
                        // activeColor: Colors.transparent,
                        // focusColor: Colors.red,
                        // fillColor: MaterialStateProperty.resolveWith(AppColor.linkColor),
                      ),
                      Text(
                        "Remember password",
                        style: MyTextStyle.noteStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            child: Text(
                              "Forget password",
                              style: MyTextStyle.linkStyle.copyWith(
                                fontSize: 14,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                  BlocBuilder<AuthCubit, AuthState>(
                      buildWhen: (pre, cur) {
                        print(pre.toString());
                        print(cur.toString());
                        return true;
                      },
                      builder: (context, state) {
                    return Text(">>>>>>>> ${state.isAuthenticated}");
                  }),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: MyButton(
                      title: "Login",
                      onPress: () => loginCubit.handleLogin(context),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
