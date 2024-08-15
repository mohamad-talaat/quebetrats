import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/home%20page/logic/home_controller.dart';

class BottomNavBarWidgets extends GetView<HomeControllerImp> {
  const BottomNavBarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp c = Get.put(HomeControllerImp());

    return GNav(
      tabs: [
        ...List.generate(
            c.bottomNavPagesIcon.length, (index) => c.bottomNavPagesIcon[index])
      ],
      rippleColor: Colors.grey[300]!,
      hoverColor: Colors.amber,
      gap: 8,
      activeColor: Colors.black,
      iconSize: 24,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      duration: const Duration(milliseconds: 400),
      tabBackgroundColor: Colors.amber,
      color: Colors.black,
      selectedIndex: c.page,
      onTabChange: (index) {
        c.pageIndex(index);
      },
    );
  }
}
