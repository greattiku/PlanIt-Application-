import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:plan_it/Constants/app_validation.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import 'package:plan_it/Utilities/extensions.dart';
import 'package:plan_it/Widgets/sign_up.dart';
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
            
            SizedBox(height: 15.0.h,),
                   ElevatedButton(onPressed: (){
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity3Screen(scheduleModel: sch)));
                    bool allEmpty = otpControllers.every((controller) => controller.text.isEmpty);
  if(allEmpty){
   Get.snackbar('Failed','please enter a value');
  }
  
                    if(formKey.currentState!.validate()){
                      formKey.currentState!.save();
                        validateOtp();
                        //signUp('','');
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

  Widget _buildOtpUi(BuildContext context,int index){
    return Column(
      children: [
        SizedBox(
        height: 68.0.h,
        width: 64.0.w,
        child: TextFormField(
          controller: otpControllers[index],
          cursorColor: AppColors.appPrimaryColor,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: otpValidator,
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
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 1,
                    color: AppColors.borderColor,
                  ),
            ),
            focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 1,
                    color: AppColors.appPrimaryColor,
                  )
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.red
                  )
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.red
                  )
                )
          ),
        ),
        )
      ],
    );
  }
}

// class ReusableOtpTextField extends StatelessWidget {
//   const ReusableOtpTextField({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         SizedBox(
//         height: 68.0.h,
//         width: 64.0.w,
//         child: TextFormField(
//           cursorColor: AppColors.appPrimaryColor,
//           onChanged: (value){
//             if(value.length == 1){
//               FocusScope.of(context).nextFocus();
//             }
//           },
//           onSaved: (pin1){},
//           keyboardType: TextInputType.number,
//           textAlign: TextAlign.center,
//           inputFormatters: [
//             LengthLimitingTextInputFormatter(1),
//             FilteringTextInputFormatter.digitsOnly,
//           ],
//           decoration: InputDecoration(
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: AppColors.borderColor,
//                   ),
//             ),
//             focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8),
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: AppColors.appPrimaryColor,
//                   )
//                 ),
//                 errorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8),
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Colors.red
//                   )
//                 ),
//                 focusedErrorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8),
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Colors.red
//                   )
//                 )
//           ),
//         ),
//         ),
//       ],
//     );
//   }
// }