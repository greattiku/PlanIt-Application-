import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import 'package:plan_it/Controllers/auth_controller.dart';
import 'package:plan_it/Utilities/extensions.dart';
import 'package:plan_it/Widgets/reusable_text_field.dart';
import 'package:plan_it/Widgets/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
    var controller =  Get.find<AuthController>();
    final _formKey = GlobalKey<FormState>();

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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 70, left: 15,right: 15,bottom: 15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sign Up',
              style: titleMediumBold.copyWith(
                fontSize: 24
              ),
              ),
              Text('let\'s do this together!',
              style: titleSmall.copyWith(
                fontSize: 18,
                color: AppColors.ashTextColor,
              ),
              ),
              SizedBox(height: 10.0.h,),
          
              
              ReusableTextField(
                controller: nameController,
                text: 'Full name',
                validator: (value){
                    if( value!.isEmpty){
                      return 'Please enter your name ';
                    }
                    return null;
                },
                onSaved: (value){
                    nameText = value!;
                },
                ),
          
              SizedBox(height: 10.0.h,),
              
              ReusableTextField(
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
          
              SizedBox(height: 10.0.h,),
              
              
                Obx(()=>
                   ReusableTextField(
                    controller: passwordController,
                    text: 'Password',
                    isPasswordField: true,
                    icon: 
                             IconButton(onPressed: (){
                              controller.passwordToggleObscure();
                            }, icon: Icon(
                              controller.isPasswordObscured.value ? Icons.visibility_off : Icons.visibility,
                            )),
                          
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
                ),
          
              SizedBox(height: 10.0.h,),
              
              Obx(()=>
                 ConfirmPasswordField(
                  controller: confirmPasswordController,
                  text: 'Confirm Pasword',
                  suffixIcon: 
                             IconButton(onPressed: (){
                              controller.confirmPasswordToggleObscure();
                            }, icon: Icon(
                              controller.isConfirmPasswordObscured.value ? Icons.visibility_off : Icons.visibility,
                            )),
                  validator: (value){
                    if(value == null){
                        return 'Please confirm your password';
                    } else if (value != passwordController.text){
                      return 'Passwords do not match';
                    }else if(value == passwordController.text ){
                        controller.validatePasswordMatch(value, passwordController.text);
                    }
                    return null;
                  },
                  onSaved: (value){
                    confirmPasswordText = value!;
                  },
                  ),
              ),
          
      
                SizedBox(height: 15.0.h,),
               ElevatedButton(onPressed: (){
            //  Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity3Screen(scheduleModel: sch)));
                if(_formKey.currentState!.validate()){
                  _formKey.currentState!.save();
                  print('Loggged in succeefully======================================');
                }
            }, 
            style: ButtonStyles.elevatedButtonStyle(
              backgroundColor: AppColors.appPrimaryColor,
              minimumSize: Size(390.0.w, 52.0.h),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 7.0.w,),
                Text('Create account',
                style: titleSmall.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.whiteTextColor
                ),
                ),
              ],
            )
            ),
      
              // ElevatedButton(onPressed: (){
              //   if(_formKey.currentState!.validate()){
              //     _formKey.currentState!.save();
              //     print('Loggged in succeefully======================================');
              //   }
              // }, child: Text('Sign Up'))
          
            ],
          ),
        ),
      ),
    );
  }
}