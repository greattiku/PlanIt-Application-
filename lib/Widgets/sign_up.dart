import 'package:flutter/widgets.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import 'package:plan_it/Utilities/extensions.dart';
import 'package:plan_it/Widgets/text_controller.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController = TextEditingController();

    var nameText = '';
    var emailText = '';
    var passwordText = '';
    var confirmPasswordText = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, left: 15,right: 15,bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sign Up',
          style: titleMediumBold.copyWith(
            fontSize: 24
          ),
          ),
          //SizedBox(height: 5.0.h,),
          Text('let\'s do this together!',
          style: titleSmall.copyWith(
            fontSize: 18,
            color: AppColors.ashTextColor,
          ),
          ),
          SizedBox(height: 4.0.h,),

          //Text('Full name'),
          TextController(
            controller: nameController,
            text: 'Full name',
            validator: (value){
                if(nameText.isEmpty){
                  return 'Please enter your name ';
                }
                null;
            },
            onSaved: (value){
                nameText = value!;
            },
            ),

          SizedBox(height: 10.0.h,),
          
          TextController(
            controller: emailController,
            text: 'Email',
            validator: (value){
              if(value == null){
                return 'Please enter your email address';
              } else if(!value.contains('@')||!value.contains('.')){
                return 'invalid email';
              }
                return null;
            },
            onSaved: (value)=> emailText = value!,
            ),

          SizedBox(height: 4.0.h,),
          
          TextController(
            controller: passwordController,
            text: 'Password',
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a password';
              } else if (value.length < 8) {
                return 'Password must be at least 8 characters';
              } else if (!value.contains(RegExp(r'[A-Z]'))) {
                return 'Password must contain at least one uppercase letter';
              } else if (!value.contains(RegExp(r'[a-z]'))) {
                return 'Password must contain at least one lowercase letter';
              } else if (!value.contains(RegExp(r'[0-9]'))) {
                return 'Password must contain at least one number';
              }
              return null;
            },
            onSaved: (value) => passwordText = value!,

            ),

          SizedBox(height: 4.0.h,),
          
          TextController(
            controller: confirmPasswordController,
            text: 'Confirm Pasword',
            ),
        ],
      ),
    );
  }
}