import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quebetrats/core/pagescall/pagename.dart';
import 'package:quebetrats/core/services/services.dart';
import 'package:quebetrats/features/onboarding/data/model/onboarding_list.dart';

abstract class OnboardingController extends GetxController {
  void next();
  void onPageChanged(int index);
  void goToLoginPage();
  void goToRegisterPage();
  void goToGhostPage();
}

class OnboardingControllerImp extends OnboardingController {
  int currentPage = 0;
  PageController pageController = PageController();
  MyServices myServices = Get.find();

  @override
  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      myServices.sharedPreferences.setString("onboarding", "skipIt");
      // Get.offAllNamed(PageName.login);
      Get.toNamed(PageName.fourthOnboardingScreen);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900),
          curve: Curves.easeInSine);
    }
  }

  @override
  void onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void goToGhostPage() {
    // TODO: implement goToGhostPage
    debugPrint("No Screen Exist");
  }

  @override
  void goToLoginPage() {
    Get.toNamed(PageName.login);
  }

  @override
  void goToRegisterPage() {
    Get.toNamed(PageName.register);
  }
}
