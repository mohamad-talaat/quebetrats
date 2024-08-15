import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quebetrats/core/constant/color.dart';
import 'package:quebetrats/features/onboarding/logic/onboarding_controller.dart';
import 'package:quebetrats/features/onboarding/ui/widgets/custombutton.dart';

class FourthOnboardingScreen extends GetView<OnboardingControllerImp> {
  const FourthOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingControllerImp c = Get.find();
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 500,
            ),
            Container(
              color: Colors.black.withOpacity(0.5),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  buttonColor: AppColor.black,
                  textColor: AppColor.white,
                  onPressed: () {
                    c.goToLoginPage();
                  },
                  buttonName: 'Sign In',
                ),
                SizedBox(height: 10.h),
                CustomButton(
                  buttonColor: AppColor.black,
                  textColor: AppColor.white,
                  onPressed: () {
                    c.goToRegisterPage();
                  },
                  buttonName: 'Sign Up',
                ),
                SizedBox(height: 10.h),
                CustomButton(
                  buttonColor: AppColor.white,
                  textColor: AppColor.black,
                  onPressed: () {
                    c.goToGhostPage();
                  },
                  buttonName: 'Explore as a Ghost',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
