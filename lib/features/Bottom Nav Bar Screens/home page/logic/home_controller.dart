import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/requests/ui/requests.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/home%20page/ui/home_page.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/my%20brands/ui/my_brands.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/profile/ui/person.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/qhub/ui/qhub.dart';

abstract class HomeController extends GetxController {
  pageIndex(int index);
}

class HomeControllerImp extends HomeController {
  int page = 2;

  @override
  pageIndex(int index) {
    page = index;
    update();
  }

  List bottomNavPagesIcon = [
    const GButton(
      icon: Icons.home,
      text: 'Home',
    ),
    const GButton(
      icon: Icons.shopping_cart,
      text: 'Requests',
    ),
    const GButton(
      icon: Icons.location_city_outlined,
      text: 'My Brands',
    ),
    const GButton(
      icon: Icons.hub_outlined,
      text: 'GHub',
    ),
    const GButton(
      icon: Icons.person_2_sharp,
      text: 'Profile',
    ),
  ];

  List<Widget> bottomNavPagesScreen = [
    const HomePage(),
    const CartScreen(),
    const MyBrandsScreen(),
    const QubitHubScreen(),
    SettingsPage(),
  ];
}
