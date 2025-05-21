import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/colors.dart';

class AppThemes {
    
       final lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    fontFamily: GoogleFonts.inter().fontFamily,
    colorScheme: const ColorScheme.light(
        primary: AppColors.appPrimaryColor,
       // secondary: AppColors.lightSecondaryColor,
        background: AppColors.whiteBackgroundColor),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.whiteBackgroundColor,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.appPrimaryColor,
    ),
  );

}
