import 'package:fclubs/utils/app/widgets/common_button.dart';
import 'package:fclubs/utils/app/widgets/common_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app/colors.dart';
import '../../utils/app/widgets/common_title_and_text_field.dart';

class SignInUsingPasswordPage extends StatelessWidget {
  const SignInUsingPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.white,
          body: Column(
            children: [
              CommonHeader.header(
                  textTitle: "Welcome",
                  textContent: "Let’s Get You Started With [App Name]"),
              const SignInForm(),
            ],
          )),
    );
  }
}

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _emailTextController = TextEditingController();
  final _passWordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 48).w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          42.verticalSpace,
          CommonTitleAndTextField.titleAndTextField(
              title: "Email",
              controller: _emailTextController,
              hintText: "Enter Email Address",
              preIcon: Icons.email),
          42.verticalSpace,
          CommonTitleAndTextField.titleAndTextField(
              title: "Password",
              controller: _passWordTextController,
              hintText: "Enter Password",
              preIcon: Icons.lock),
          60.verticalSpace,
          _buildRememberAndForgotPassWord(),
          22.verticalSpace,
          const Divider(
            color: Color(0xFFEEEEEE),
            indent: 0,
            endIndent: 0,
          ),
          60.verticalSpace,
          _buildTextAndRegisterNow(),
          60.verticalSpace,
          CommonButton.buttonElevated(textButton: "Sign In")
        ],
      ),
    );
  }
}

Widget _buildRememberAndForgotPassWord() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _buildRememberPassWord(),
      _buildForgotPassWord(),
    ],
  );
}

Widget _buildRememberPassWord() {
  return Row(children: [
    Checkbox(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12).w,
      ),
      value: false,
      onChanged: (value) {},
    ),
    Text(
      "Remember Password",
      style: GoogleFonts.urbanist(
          color: AppColors.contentTextField, fontSize: 28.sp),
    )
  ]);
}

Widget _buildForgotPassWord() {
  return Text(
    "Forgot Password?",
    style: GoogleFonts.urbanist(
      fontSize: 30.sp,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
      color: AppColors.textColorRegister,
    ),
  );
}

Widget _buildTextAndRegisterNow() {
  return Center(
    child: RichText(
      text: TextSpan(
        text: "Don’t have an account? ",
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
    ),
  );
}
