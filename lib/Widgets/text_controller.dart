import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Models/schedule/user_model.dart';

class TextController extends StatefulWidget {
  const TextController({super.key,
  this.text,
  required this.controller,
  this.validator,
  this.onSaved,
  this.obscureText,
  });
  final String? text;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final bool? obscureText;

  @override
  State<TextController> createState() => _TextControllerState();
}

class _TextControllerState extends State<TextController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Text(widget.userModel?.name ?? ''),
            Text(widget.text ?? ''),
            TextFormField(
              obscureText: widget.obscureText ?? false,
              validator: widget.validator,
              controller: widget.controller,
              style: TextStyle(),
              decoration: InputDecoration(
               // label: Text(widget.text ?? ''),
                
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