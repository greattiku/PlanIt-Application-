import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:plan_it/Constants/app_validation.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import 'package:plan_it/Utilities/extensions.dart';
import 'package:plan_it/Widgets/widgets.dart';

class Otp extends StatelessWidget {
   Otp({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Check email',
            style: titleMediumBold.copyWith(
              fontSize: 24
            ),
            ),
            Text('To confirm your email put in the code we sent to your email address',
            style: titleSmall.copyWith(
              fontSize: 18,
              color: AppColors.ashTextColor
            ),
            ),
            SizedBox(height: 10.0.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: 
                
                List.generate(4, (index)=>
                _buildOtpUi(context, index),
                )
              
            ),
            SizedBox(height: 10.0.h,),
            buildTimer(),

            SizedBox(height: 10.0.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Didn\'t recieve OTP?',
                    style: titleSmall.copyWith(
                      color: AppColors.ashTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                      ),
                  ),
                  
                  TextButton(onPressed: (){
                   validationController.isTimerRunning ? null : resetTimer();
                  }, 
                  child: Text('Resend OTP',
                  style: titleSmallBold.copyWith(
                    color: AppColors.appPrimaryColor,
                    fontSize: 16,
                      fontWeight: FontWeight.w500
                  ),))
                  
                ],
              ),

            SizedBox(height: 15.0.h,),
                   ElevatedButton(onPressed: (){
                final completer = Completer<String>();
                   if (validateOtp()) {
                 // Get.offAll(SplashScreen());
                  } else {
                    completer.completeError('invalid otp');
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
                    Text('Verify code',
                    style: titleSmall.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.whiteTextColor
                    ),
                    ),
                  ],
                )
                ),
        
        ],
        ),
      ),
    );
  }

  Widget buildTimer(){
    return Center(
      child: Container(
        width: 85.0.w,
        height: 50.0.h,
        decoration: BoxDecoration(
          color: AppColors.borderColor,//Color(0XFFF1F1F1),
          borderRadius: BorderRadius.circular(100)
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.timer_outlined,color: AppColors.appPrimaryColor,),
            SizedBox(width: 2.0.w,),
            Obx(()=>
               Text(validationController.timeLeft.value.toString(),
              style: titleSmallBold.copyWith(
                color: AppColors.appPrimaryColor,
              ),),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildOtpUi(BuildContext context,int index){
    return Column(
      children: [
        SizedBox(
        height: 68.0.h,
        width: 64.0.w,
        child: Obx(()=>
           TextFormField(
            controller: otpControllers[index],
            cursorColor: AppColors.appPrimaryColor,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value){
              if(value.length == 1){
                FocusScope.of(context).nextFocus();
              }else if (value.isEmpty) {
                FocusScope.of(context).previousFocus();
              }
          
            },
            onSaved: (pin){
              print('success $pin=======================');
            },
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: otpDecoration()
          ),
        ),
        ),
        
      ],
    );
  }

  InputDecoration otpDecoration(){
    return InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 1,
                    color:  validationController.isOtpCorrect.value ? Colors.green : AppColors.borderColor,
                  ),
            ),
            focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 1,
                    color:  AppColors.appPrimaryColor,
                  )
                ),

                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 1,
                    color: validationController.isOtpCorrect.value ? Colors.transparent : Colors.red ,
                  )
                )
                
          );
  }
}

