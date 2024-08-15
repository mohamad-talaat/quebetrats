import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quebetrats/core/constant/app_styles.dart';
import 'package:quebetrats/core/constant/color.dart';
import 'package:quebetrats/features/onboarding/logic/onboarding_controller.dart';

class CustomButtonOnBoarding extends GetView<OnboardingControllerImp> {
  const CustomButtonOnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: IconButton(
          //  MaterialButton(
          //     padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
          //     textColor: Colors.white,
          onPressed: () {
            controller.next();
          },
          // color: AppColor.primaryColor,
          icon: const Icon(
            Icons.arrow_forward_ios,
            size: 30,
          ) // Text("8".tr)

          ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final void Function() onPressed;
  final String buttonName;
  final Color buttonColor;
  final Color textColor;
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.buttonName,
      required this.buttonColor,
      required this.textColor});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      child: Container(
        margin: const EdgeInsets.only(bottom: 5),
        height: 50,
        child: MaterialButton(
            //   padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 2),
            textColor: textColor,
            onPressed: onPressed,
            color: buttonColor,
            child: Text(
              buttonName.tr,
              style: AppTextStyle.aBeeZeefont20boldblack.copyWith(
                color: textColor,
              ),
            )),
      ),
    );
  }
}
