import 'package:fclubs/utils/app/colors.dart';
import 'package:fclubs/utils/app/strings.dart';
import 'package:fclubs/utils/app/widgets/asset_image_loader.dart';
import 'package:fclubs/utils/app/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          _buildIconAndTitle(),
          53.verticalSpace,
          _buildGroupButton(),
          100.verticalSpace,
          _buildButtonSignIn(),
          38.verticalSpace,
          _buildTextAndRegisterNow()
        ],
      ),
    ));
  }

  Widget _buildIconAndTitle() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 80),
          width: 276.r,
          height: 276.r,
          color: Colors.black,
        ),
        30.verticalSpace,
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            AppStrings.textStarted,
            style: GoogleFonts.urbanist(
                color: AppColors.contentText, fontSize: 35.sp),
          ),
        ),
      ],
    );
  }

  Widget _buildGroupButton() {
    return Column(
      children: [
        _btnSignInPlatform(AppStrings.signInGoogleText, "google"),
        36.verticalSpace,
        _btnSignInPlatform(AppStrings.signInFacebookText, "facebook"),
        36.verticalSpace,
        _btnSignInPlatform(AppStrings.signInAppleText, "apple-logo"),
      ],
    );
  }

  Widget _btnSignInPlatform(String text, String iconPlatform) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          minimumSize: Size(double.infinity, 50.sp),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          side: const BorderSide(color: AppColors.borderButton),
          padding: EdgeInsets.zero,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
                child: AssetImageLoader.loadAssetImage(iconPlatform)),
            Expanded(
              child: Text(
                text,
                style: GoogleFonts.urbanist(
                    color: AppColors.contentText,
                    fontWeight: FontWeight.bold,
                    fontSize: 32.sp),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonSignIn() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: CommonButton.buttonElevated(
            textButton: AppStrings.signInUsingPassWord));
  }

  Widget _buildTextAndRegisterNow() {
    return RichText(
      text: TextSpan(
        text: "New To [App Name]? ",
        style: GoogleFonts.urbanist(
          fontSize: 30.sp,
          color: AppColors.contentText,
        ),
        children: <TextSpan>[
          TextSpan(
            text: "Register Now",
            style: GoogleFonts.urbanist(
              fontSize: 30.sp,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              color: AppColors.textColorRegister,
            ),
          ),
        ],
      ),
    );
  }
}
