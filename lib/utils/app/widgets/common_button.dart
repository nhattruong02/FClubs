import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class CommonButton {
  static Widget buttonElevated({required String textButton}) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 60),
          backgroundColor: AppColors.colorButton,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Text(
        textButton,
        style: GoogleFonts.urbanist(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            fontSize: 32.sp),
        textAlign: TextAlign.center,
      ),
    );
  }
}
