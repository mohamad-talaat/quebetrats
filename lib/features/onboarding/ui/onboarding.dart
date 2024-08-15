import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quebetrats/core/constant/color.dart';
import 'package:quebetrats/features/onboarding/ui/widgets/custombutton.dart';
import 'package:quebetrats/features/onboarding/ui/widgets/dotcontroller.dart';
import 'package:quebetrats/features/onboarding/ui/widgets/onboarding_shape.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Expanded(
              flex: 4,
              child: OnBoardingWidgets(),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: CustomDotControllerOnBoarding(),
                      ),
                      Spacer(flex: 2),
                      CustomButtonOnBoarding()
                    ],
                  ),
                ))
          ]),
        ));
  }
}
