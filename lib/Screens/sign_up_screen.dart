import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plan_it/Widgets/sign_up.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: SignUp(),
        ),
      ),
    );
  }
}