import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import '../Controllers/auth_controller.dart';

class ReusableTextField extends StatefulWidget {
  const ReusableTextField({super.key,
  this.text,
  required this.controller,
  this.validator,
  this.onSaved,
  this.isPasswordField = false,
  this.icon,
  });
  final String? text;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  
  final bool isPasswordField;
  final Widget? icon;

  @override
  State<ReusableTextField> createState() => _ReusableTextFieldState();
}

class _ReusableTextFieldState extends State<ReusableTextField> {
    var controller =  Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
            Text(widget.text ?? '',
                style: titleSmallBold.copyWith(
                  fontSize: 16
                ),
            ),
               TextFormField(
                obscureText: widget.isPasswordField  ? controller.isPasswordObscured.value : false,
                validator: widget.validator,
                controller: widget.controller,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                   suffixIcon: widget.icon,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColors.borderColor,
                    )
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
              )
              ),
      ],
    );
  }
}




class ConfirmPasswordField extends StatefulWidget {
  const ConfirmPasswordField({super.key,
  this.text,
  required this.controller,
  this.validator,
  this.onSaved,
  this.suffixIcon,
  });
  final String? text;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final Widget? suffixIcon;
  
  @override
  State<ConfirmPasswordField> createState() => _ConfirmPasswordFieldState();
}

class _ConfirmPasswordFieldState extends State<ConfirmPasswordField> {

  var controller =  Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  Text(widget.text ?? '',
                style: titleSmallBold.copyWith(
                  fontSize: 16
                ),),
                   TextFormField(
                    obscureText: controller.isConfirmPasswordObscured.value, 
                    validator: widget.validator,
                    controller: widget.controller,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                       suffixIcon: widget.suffixIcon,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 1,
                          color: AppColors.borderColor,
                        )
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
                                 )
                                 ),
                      Text(
                        controller.isPasswordMatch.value ? 'Password matches Sucessfully' : '',
                        style: TextStyle(
                          color: controller.isPasswordMatch.value ? Colors.green : Colors.transparent,
                        ),
                      )
                 ],
               );
  }
}