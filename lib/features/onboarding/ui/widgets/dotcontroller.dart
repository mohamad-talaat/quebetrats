import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quebetrats/core/constant/color.dart';
import 'package:quebetrats/features/onboarding/data/model/onboarding_list.dart';
import 'package:quebetrats/features/onboarding/logic/onboarding_controller.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length + 1,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 7),
                          duration: const Duration(milliseconds: 500),
                          width: controller.currentPage == index ? 26 : 12,
                          height: 5,
                          decoration: BoxDecoration(
                            color: controller.currentPage == index
                                ? AppColor.black
                                : AppColor.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ))
              ],
            ));
  }
}
