import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static final TextStyle title = GoogleFonts.montserrat(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle titleBold = GoogleFonts.montserrat(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle heading = GoogleFonts.montserrat(
    color: AppColors.black,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle heading40 = GoogleFonts.montserrat(
    color: AppColors.white,
    fontSize: 40,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle dateHeading = GoogleFonts.montserrat(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w100,
  );

  static final TextStyle heading80 = GoogleFonts.montserrat(
    color: AppColors.black,
    fontSize: 80,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle heading15 = GoogleFonts.montserrat(
    color: AppColors.black,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle bodyWhite20 = GoogleFonts.montserrat(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle body11 = GoogleFonts.montserrat(
    color: AppColors.grey,
    fontSize: 11,
    fontWeight: FontWeight.normal,
  );
}
