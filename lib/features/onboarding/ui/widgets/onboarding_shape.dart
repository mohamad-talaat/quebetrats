import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quebetrats/core/constant/app_styles.dart';
import 'package:quebetrats/features/onboarding/data/model/onboarding_list.dart';
import 'package:quebetrats/features/onboarding/logic/onboarding_controller.dart';

class OnBoardingWidgets extends StatelessWidget {
  const OnBoardingWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    OnboardingControllerImp c = Get.put(OnboardingControllerImp());
    return PageView.builder(
        onPageChanged: (index) {
          c.onPageChanged(index);
        },
        controller: c.pageController,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        // shrinkWrap :true,
        itemCount: onBoardingList.length,
        itemBuilder: (context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image(
                    image: AssetImage(onBoardingList[index].image!),
                    fit: BoxFit.fill,
                    width: 200.w,
                    height: 200.h,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  onBoardingList[index].title!,
                  style: AppTextStyle.aBeeZeefont20boldblack,
                ),
                const SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    onBoardingList[index].description!,
                    style: AppTextStyle.aBeeZeefont12boldw500
                        .copyWith(fontSize: 15, height: 1.5),
                  ),
                ),
              ],
            ));
  }
}
