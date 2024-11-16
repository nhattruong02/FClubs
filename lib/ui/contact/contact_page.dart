import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app/colors.dart';
import '../../utils/app/widgets/asset_image_loader.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final List<Map<String, dynamic>> items = [
    {
      'title': 'Athalia Putri',
      'subtitle': 'Last seen yesterday',
    },
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
    {'title': 'Erlan Sadewa', 'subtitle': 'Online'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _buildTitlePage(),
              const Spacer(),
              _buildIconTopRight(),
            ],
          ),
          _buildSearchBar(),
          _buildListContact(),
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

  Widget _buildIconTopRight() {
    return Container(
      margin: const EdgeInsets.only(top: 28, right: 40).w,
      child: const Icon(CupertinoIcons.plus),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 32).w,
      child: TextFormField(
        style: TextStyle(
            color: Colors.black, // Set the color of the input text
            fontSize: 32.sp),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.textField,
          ),
          fillColor: AppColors.textField,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          hintText: "hintText",
          hintStyle: TextStyle(color: AppColors.textField, fontSize: 32.sp),
        ),
      ),
    );
  }

  Widget _buildListContact() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40.h),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return _buildLineContact(
                items[index]["title"], items[index]["subtitle"]);
          },
          separatorBuilder: (context, index) {
            return Divider(
              indent: 30,
              endIndent: 30,
              height: 1,
              color: Colors.grey[300],
            );
          },
        ),
      ),
    );
  }

  Widget _buildLineContact(String nameUser, String textStatus) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.h),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: Stack(
              children: [
                // Image
                Container(
                  color: Colors.black,
                  width: double.infinity,
                  height: double.infinity,
                ),
                // Circle Status
                Container(
                  alignment: Alignment.topRight,
                  child: AssetImageLoader.loadAssetImage("status",
                      width: 30.w, height: 30.h, fit: BoxFit.fill),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 32).h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameUser,
                  style: GoogleFonts.urbanist(
                      fontSize: 35.sp,
                      color: AppColors.contentText,
                      fontWeight: FontWeight.bold),
                ),
                8.verticalSpace,
                Text(
                  textStatus,
                  style: GoogleFonts.urbanist(
                      fontSize: 30.sp,
                      color: AppColors.contentText,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
