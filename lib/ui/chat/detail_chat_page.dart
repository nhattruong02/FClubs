import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app/colors.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backGroundColor,
        appBar: AppBar(
          leading: const Icon(CupertinoIcons.back),
          title: Text(
            "Athalia Putri",
            style: GoogleFonts.urbanist(
                fontSize: 35.sp,
                color: AppColors.contentText,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            const Icon(Icons.search),
            16.horizontalSpace,
            Container(
                margin: const EdgeInsets.only(right: 40).w,
                child: const Icon(Icons.menu)),
          ],
        ),
        body: const BuildDetailChatPage(),
      ),
    );
  }
}

class BuildDetailChatPage extends StatefulWidget {
  const BuildDetailChatPage({super.key});

  @override
  State<BuildDetailChatPage> createState() => _BuildDetailChatPageState();
}

class _BuildDetailChatPageState extends State<BuildDetailChatPage> {
  final List<Map<String, dynamic>> items = [
    {
      'title': 'Athalia Putri',
      'id': '1',
    },
    {
      'title': 'Erlan Sadewa',
      'id': '1',
    },
    {
      'title': 'Erlan Sadewa',
      'id': '1',
    },
    {
      'title': 'Erlan Sadewa',
      'id': '2',
    },
    {
      'title': 'Athalia Putri',
      'id': '1',
    },
    {
      'title': 'Erlan Sadewa',
      'id': '1',
    },
    {
      'title': 'Erlan Sadewa',
      'id': '1',
    },
    {
      'title': 'Erlan Sadewa',
      'id': '2',
    },
    {
      'title': 'Athalia Putri',
      'id': '1',
    },
    {
      'title': 'Erlan Sadewa',
      'id': '1',
    },
    {
      'title': 'Erlan Sadewa',
      'id': '1',
    },
    {
      'title': 'Erlan Sadewa',
      'id': '2',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_buildListMessage(), _buildBottomChat()],
    );
  }

  Widget _buildListMessage() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40.h),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            if (items[index]["id"] == "1") {
              return _buildLeftMessage(items[index]["title"]);
            } else {
              return _buildRightMessage(items[index]["title"]);
            }
          },
        ),
      ),
    );
  }

  Widget _buildLeftMessage(String message) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40).w,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message,
                style: GoogleFonts.urbanist(
                  fontSize: 35.sp,
                  color: Colors.black,
                ),
              ),
              10.verticalSpace,
              Text(
                "16:46",
                style: GoogleFonts.urbanist(
                  fontSize: 25.sp,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRightMessage(String message) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40).w,
      child: Align(
          alignment: Alignment.centerRight,
          child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: AppColors.colorButton,
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(
                  message,
                  style: GoogleFonts.urbanist(
                    fontSize: 35.sp,
                    color: AppColors.white,
                  ),
                ),
                10.verticalSpace,
                Row(mainAxisSize: MainAxisSize.min, children: [
                  Text(
                    "16:50",
                    style: GoogleFonts.urbanist(
                      fontSize: 25.sp,
                      color: AppColors.white,
                    ),
                  ),
                  10.verticalSpace,
                  Text(
                    " · Read",
                    style: GoogleFonts.urbanist(
                      fontSize: 25.sp,
                      color: AppColors.white,
                    ),
                  ),
                ])
              ]))),
    );
  }

  Widget _buildBottomChat() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40).w,
      height: 110.h,
      child: Row(
        children: [
          const Icon(
            CupertinoIcons.plus,
            color: AppColors.contentText,
          ),
          20.horizontalSpace,
          Expanded(
            child: TextFormField(
              style: TextStyle(
                  color: Colors.black, // Set the color of the input text
                  fontSize: 32.sp),
              decoration: InputDecoration(
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),
            ),
          ),
          20.horizontalSpace,
          const Icon(
            Icons.send,
            color: AppColors.colorButton,
          )
        ],
      ),
    );
  }
}
