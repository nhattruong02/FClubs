import 'package:fclubs/utils/app/colors.dart';
import 'package:fclubs/utils/app/strings.dart';
import 'package:fclubs/utils/app/widgets/asset_image_loader.dart';
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
          _buildGroupButton(),
          _buildButtonSignIn(),
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
                color: AppColors.contentText, fontSize: 32.sp),
          ),
        ),
      ],
    );
  }

  Widget _buildGroupButton() {
    return _btnSignInPlatform();
  }

  Widget _btnSignInPlatform() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(
              double.infinity, 50), // Make the button fill the available width
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding:
              EdgeInsets.zero, // Remove padding so the row takes full width
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16), // Padding around the icon
              child: AssetImageLoader.loadAssetImage("apple-logo"),
            ),
            Center(
              child: Text(
                "Sign In Using Google Account",
                style: TextStyle(
                    color: AppColors.contentText,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonSignIn() {
    return Container();
  }

  Widget _buildTextAndRegisterNow() {
    return Container();
  }
}
