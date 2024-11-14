import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app/colors.dart';
import '../../utils/app/widgets/common_button.dart';
import '../../utils/app/widgets/common_header.dart';
import '../../utils/app/widgets/common_title_and_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.white,
          body: Column(
            children: [
              CommonHeader.header(
                  textTitle: "Create A New Account",
                  textContent: "Register & Get The Best Air Travel Experience"),
              Expanded(child: const RegisterForm()),
            ],
          )),
    );
    ;
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 48).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            42.verticalSpace,
            CommonTitleAndTextField.titleAndTextField(
                title: "User Name",
                hintText: "Enter Email Address",
                preIcon: Icons.person),
            42.verticalSpace,
            CommonTitleAndTextField.titleAndTextField(
                title: "Email",
                hintText: "Enter Email Address",
                preIcon: Icons.email),
            42.verticalSpace,
            CommonTitleAndTextField.titleAndTextField(
                title: "Phone Number",
                hintText: "Enter Phone Number",
                preIcon: Icons.phone),
            42.verticalSpace,
            CommonTitleAndTextField.titleAndTextField(
                title: "Password",
                hintText: "Enter Password",
                preIcon: Icons.lock,
                isPassWord: true),
            42.verticalSpace,
            CommonTitleAndTextField.titleAndTextField(
                title: "Referral Code (optional)",
                hintText: "Enter Password",
                preIcon: Icons.lock),
            60.verticalSpace,
            _buildAcceptTermAndCondition(),
            22.verticalSpace,
            const Divider(
              color: Color(0xFFEEEEEE),
              indent: 0,
              endIndent: 0,
            ),
            60.verticalSpace,
            _buildTextAndRegisterNow(),
            60.verticalSpace,
            CommonButton.buttonElevated(textButton: "Sign In"),
            60.verticalSpace,
          ],
        ),
      ),
    );
  }
}

Widget _buildAcceptTermAndCondition() {
  return Row(children: [
    Checkbox(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12).w,
      ),
      value: false,
      onChanged: (value) {},
    ),
    Text(
      "Accept the Terms & Condition",
      style: GoogleFonts.urbanist(
          color: AppColors.contentTextField, fontSize: 28.sp),
    )
  ]);
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
