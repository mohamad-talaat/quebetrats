import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:quebetrats/core/constant/app_styles.dart';
  
 class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black),
              child: Column(
                children: [
                  Text(
                    "Mohammed",
                    style: AppTextStyle.aBeeZeefont16boldblue
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "Mohammed01013280650@gmail.com",
                    style: AppTextStyle.aBeeZeefont16boldblue.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400, width: 2.w),
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white70),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.sp),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(" General Data",
                            style: AppTextStyle.aBeeZeefont16boldblue
                                .copyWith(color: Colors.black, fontSize: 20)),
                        ...List.generate(
                          generalDataList.length,
                          (index) {
                            return settingsDefault(
                                generalDataList[index]["icon"],
                                generalDataList[index]["name"],
                                generalDataList[index]["onPressed"]);
                          },
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("  Info",
                            style: AppTextStyle.aBeeZeefont16boldblue
                                .copyWith(color: Colors.black, fontSize: 20)),
                        ...List.generate(
                          infoDataList.length,
                          (index) {
                            return settingsDefault(
                                infoDataList[index]["icon"],
                                infoDataList[index]["name"],
                                infoDataList[index]["onPressed"]);
                          },
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("  Settings",
                            style: AppTextStyle.aBeeZeefont16boldblue
                                .copyWith(color: Colors.black, fontSize: 20)),
                        ...List.generate(
                          settingsDataList.length,
                          (index) {
                            return settingsDefault(
                                settingsDataList[index]["icon"],
                                settingsDataList[index]["name"],
                                settingsDataList[index]["onPressed"]);
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List generalDataList = [
    {
      "name": "Requests",
      "icon": Icons.chat,
      "onPressed": () {
      //  Get.toNamed(PageName.homeScreen);
      }
    },
    {"name": "Brands ", "icon": Icons.bar_chart_rounded, "onPressed": () {}},
    {"name": "English", "icon": Icons.language_sharp, "onPressed": () {}},
  ];
  List infoDataList = [
    {"name": "About", "icon": Icons.info_outline, "onPressed": () {}},
    {
      "name": "Support ",
      "icon": Icons.support_agent_outlined,
      "onPressed": () {}
    },
    {
      "name": "Terms of Service",
      "icon": Icons.policy_outlined,
      "onPressed": () {}
    },
    {"name": "Privacy", "icon": Icons.privacy_tip, "onPressed": () {}},
  ];

  List settingsDataList = [
    {
      "name": "Reset Password",
      "icon": Icons.refresh_outlined,
      "onPressed": () {}
    },
    {"name": "Log out", "icon": Icons.logout_outlined, "onPressed": () {}},
    {
      "name": "Delete Account",
      "icon": Icons.delete_outline,
      "onPressed": () {}
    },
  ];

  Widget settingsDefault(
      IconData icon, String title, VoidCallback onPressedForArrowButton) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: 70.h,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400, width: 2),
            borderRadius: BorderRadius.circular(18),
            color: Colors.grey[300]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            children: [
              Icon(icon, color: Colors.black),
              SizedBox(width: 10.w),
              Text(title,
                  style: AppTextStyle.aBeeZeefont16boldblue.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15)),
              const Spacer(),
              IconButton(
                  onPressed: onPressedForArrowButton,
                  icon: const Icon(Icons.arrow_forward_ios)),
            ],
          ),
        ),
      ),
    );
  }
}
