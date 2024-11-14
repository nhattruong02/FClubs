import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class CommonHeader {
  static Widget header(
      {required String textTitle, required String textContent}) {
    return Container(
      width: double.infinity,
      height: 500.r,
      color: Colors.blue,
      child: Stack(
        children: [
          _buildButtonBack(),
          buildTextAndTitle(textTitle, textContent)
        ],
      ),
    );
  }
}

Widget _buildButtonBack() {
  return Container(
    margin: const EdgeInsets.only(top: 42, left: 15).w,
    child: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.arrow_back),
      color: Colors.white,
    ),
  );
}

Widget buildTextAndTitle(String textTitle, String textContent) {
  return Container(
    margin: const EdgeInsets.only(top: 77, left: 48, bottom: 40).w,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          textTitle,
          style: GoogleFonts.urbanist(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 50.sp),
        ),
        5.verticalSpace,
        Text(
          textContent,
          style: GoogleFonts.urbanist(
              color: const Color(0xFFD1D1D1), fontSize: 32.sp),
        )
      ],
    ),
  );
}
