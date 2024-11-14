import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class CommonTitleAndTextField {
  static Widget titleAndTextField(
      {required String title,
      TextEditingController? controller,
      required String hintText,
      required IconData preIcon,
      bool? isPassWord}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.urbanist(
              color: AppColors.contentTextField,
              fontWeight: FontWeight.bold,
              fontSize: 50.sp),
        ),
        20.verticalSpace,
        TextFormField(
          obscureText: isPassWord ?? false,
          controller: controller,
          style: TextStyle(
              color: Colors.black, // Set the color of the input text
              fontSize: 32.sp),
          decoration: InputDecoration(
            prefixIcon: Icon(
              preIcon,
              color: AppColors.textField,
            ),
            fillColor: Colors.grey,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: AppColors.textField, fontSize: 32.sp),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 52, horizontal: 32).w,
          ),
        ),
      ],
    );
  }
}
