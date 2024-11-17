import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitlePage(),
          _buildInfoUser(),
          _buildMenu(),
        ],
      ),
    );
  }

  Widget _buildTitlePage() {
    return Container(
      margin: const EdgeInsets.only(top: 28, left: 40).w,
      child: Text(
        "Contacts",
        style: GoogleFonts.urbanist(
            fontSize: 45.sp,
            color: AppColors.contentText,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildInfoUser() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40).w,
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: 100.h,
              width: 100.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow,
              ),
              child: const Center(
                child: Icon(Icons.person),
              )),
          40.horizontalSpace,
          Column(
            children: [
              Text(
                "Almayra Zamzamy",
                style: GoogleFonts.urbanist(
                    fontSize: 30.sp,
                    color: AppColors.contentText,
                    fontWeight: FontWeight.bold),
              ),
              10.verticalSpace,
              Text(
                "+62 1309 - 1710 - 1920",
                style: GoogleFonts.urbanist(
                    fontSize: 26.sp,
                    color: AppColors.contentText,
                    fontWeight: FontWeight.bold),
              ),
              // Spacer(),
            ],
          ),
          const Spacer(),
          const Icon(
            CupertinoIcons.right_chevron,
            size: 20,
          )
        ],
      ),
    );
  }

  Widget _buildMenu() {
    return Column(
      children: [
        _buildItemMenu(Icons.perm_identity, "Account"),
        _buildItemMenu(Icons.chat_bubble_outline, "Chats"),
        const Divider(
          indent: 10,
          endIndent: 10,
        ),
        _buildItemMenu(Icons.light_mode, "Appereance"),
        _buildItemMenu(Icons.notifications_none, "Notification"),
        _buildItemMenu(Icons.privacy_tip_outlined, "Privacy"),
        _buildItemMenu(Icons.folder_open, "Data Usage"),
        const Divider(
          indent: 10,
          endIndent: 10,
        ),
        _buildItemMenu(Icons.help_outline, "Help"),
        _buildItemMenu(Icons.email_outlined, "Invite Your Friends")
      ],
    );
  }

  Widget _buildItemMenu(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20).w,
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 60.w,
          ),
          20.horizontalSpace,
          Text(
            title,
            style: GoogleFonts.urbanist(
                fontSize: 35.sp,
                color: AppColors.contentText,
                fontWeight: FontWeight.w400),
          ),
          const Spacer(),
          const Icon(
            CupertinoIcons.right_chevron,
            size: 20,
          )
        ],
      ),
    );
  }
}
