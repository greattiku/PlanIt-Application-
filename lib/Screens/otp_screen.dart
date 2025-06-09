import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plan_it/Widgets/otp.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: IconButton(
              onPressed: (){
                
            }, 
            icon: Icon(Icons.arrow_back)),
          ),
        ),
        body: Otp(),
      ) 
    
    );
  }
}