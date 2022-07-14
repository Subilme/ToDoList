import 'package:flutter/material.dart';

import 'signup.dart';
import 'login.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool isLogin = true;

  void toggle() => setState(() => isLogin = !isLogin);

  @override
  Widget build(BuildContext context) {
    return (isLogin
      ? Login(onClickedSignUp: toggle)
      : SignUp(onClickedSignUp: toggle));
  }
}
