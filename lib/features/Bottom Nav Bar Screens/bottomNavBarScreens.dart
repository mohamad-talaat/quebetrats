 import 'package:flutter/material.dart';
 import 'package:get/get.dart';
 import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/home%20page/logic/home_controller.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/home%20page/ui/widgets/bottom_nav_bar.dart';
 
class BottomNavBar extends GetView<HomeControllerImp> {
 const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp c = Get.put(HomeControllerImp());
    return Scaffold(
        body: GetBuilder<HomeControllerImp>(
            builder: (controller) =>
                c.bottomNavPagesScreen[c.page]), //Get builder here
        bottomNavigationBar: const BottomNavBarWidgets());
  }
}
