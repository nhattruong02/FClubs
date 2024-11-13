import 'package:fclubs/utils/app/colors.dart';
import 'package:fclubs/utils/app/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class StatedChildPage extends StatelessWidget {
/*
  final OnboardingPagePosition onboardingPagePosition;
*/

  const StatedChildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          _buildSkipButton(),
          _buildImage(),
          _buildTitleAndContent(),
          _buildOnboardingPageControl()
        ],
      ),
    ));
  }

  Widget _buildSkipButton() {
    return Container(
      alignment: AlignmentDirectional.topEnd,
      margin: const EdgeInsets.only(top: 58, right: 50).r,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24).w),
          backgroundColor: AppColors.skyBlue,
          minimumSize: Size(135.r, 112.r),
        ),
        child: Text(
          softWrap: false,
          AppStrings.skip,
          style: GoogleFonts.urbanist(
              fontSize: 32.sp,
              color: AppColors.white,
              fontWeight: FontWeight.bold),
          overflow: TextOverflow.visible,
          maxLines: 1,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      width: double.infinity,
      height: 900.r,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
      ),
    );
  }

  Widget _buildTitleAndContent() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 50).r,
          child: Text(
            "Your Adventures Starts Here",
            style: GoogleFonts.urbanist(
                fontSize: 64.sp,
                height: 1.6,
                color: AppColors.titleText,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        60.verticalSpace,
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 35).r,
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
            style: GoogleFonts.urbanist(
              fontSize: 32.sp,
              height: 2,
              color: AppColors.titleText,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  Widget _buildOnboardingPageControl() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 4,
            width: 26,
            decoration: BoxDecoration(
                color: AppColors.skyBlue,
                borderRadius: BorderRadius.circular(56)),
          ),
          Container(
            height: 4,
            width: 26,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
                color: AppColors.skyBlue,
                borderRadius: BorderRadius.circular(56)),
          ),
          Container(
            height: 4,
            width: 26,
            decoration: BoxDecoration(
                color: AppColors.skyBlue,
                borderRadius: BorderRadius.circular(56)),
          ),
        ],
      ),
    );
  }
}
