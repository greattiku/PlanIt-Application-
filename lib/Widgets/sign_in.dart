import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plan_it/Constants/app_validation.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import 'package:plan_it/Screens/sign_in_screen.dart';
import 'package:plan_it/Screens/sign_up_screen.dart';
import 'package:plan_it/Screens/splash_screen.dart';
import 'package:plan_it/Utilities/extensions.dart';
import 'package:plan_it/Widgets/reusable_text_field.dart';
import 'package:plan_it/Widgets/widgets.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  
    final _formKey = GlobalKey<FormState>();
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
                  Text('Sign In',
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
                  controller: emailController,
                  text: 'Email',
                  validator: 
                    validateEmail
                  ),
            
                SizedBox(height: 10.0.h,),
      
                Obx(()=>
                     ReusableTextField(
                      controller: passwordController,
                      text: 'Password',
                      isPasswordField: true,
                      icon: 
                        IconButton(onPressed: (){
                         validationController.passwordToggleObscure();
                         }, icon: Icon(
                           validationController.isPasswordObscured.value ? Icons.visibility_off : Icons.visibility,
                          )),
                            
                     validator: validatePassword
                      ),
                  ),
            
                SizedBox(height: 10.0.h,),
      
               SizedBox(height: 15.0.h,),
                 ElevatedButton(onPressed: (){
              //  Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity3Screen(scheduleModel: sch)));
                  if(_formKey.currentState!.validate()){
                    _formKey.currentState!.save();
                      signIn('','');
                      Get.offAll(SplashScreen());
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
                  Text('Login',
                  style: titleSmall.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.whiteTextColor
                  ),
                  ),
                ],
              )
              ),

              SizedBox(height: 10.0.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?',
                    style: titleSmall.copyWith(
                      color: AppColors.ashTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                      ),
                  ),
                  //SizedBox(width: 1.0.h,),
                  TextButton(onPressed: (){
                    Get.to(SignUpScreen());
                  }, 
                  child: Text('SignUp',
                  style: titleSmallBold.copyWith(
                    color: AppColors.appPrimaryColor,
                    fontSize: 16,
                      fontWeight: FontWeight.w500
                  ),))
                  
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}