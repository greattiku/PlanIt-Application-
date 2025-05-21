import 'package:flutter/material.dart';
import 'package:plan_it/Utilities/extensions.dart';

import '../Constants/custom_textstyles.dart';
import 'widgets.dart';

class Categories extends StatelessWidget {
  const Categories({super.key,
    required this.text,
    required this.pics
  });

    final String text;
    final Widget pics;

  @override
  Widget build(BuildContext context) {
    return Container(
                       height: 75,
                       width: 75,
                       decoration: BoxDecoration(
                       color: const Color(0XFFFFFFFF),
                       borderRadius: BorderRadius.circular(8.0),
                       border: Border.all(
                         width: 1.0,
                         color: const Color(0XFFE8E8E8),
                            )
                          ),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomClipOvalWidget(
                        width: 38.0.w,
                        height: 38.0.h,
                        //borderRadius: 20,
                        backgroundColor: const Color(0XFF008080).withOpacity(0.1),
                        child: pics),
                      
                      Text(text,
                      style: bodySmall.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                      ),
                    ],
                                  ),
                                );
  }
}