 import 'package:quebetrats/core/middleware/mymiddleware.dart';
import 'package:quebetrats/core/pagescall/pagename.dart';

import 'package:get/get.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/bottomNavBarScreens.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/requests/ui/requests.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/home%20page/ui/home_page.dart';
import 'package:quebetrats/features/login/ui/login.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/my%20brands/ui/my_brands.dart';
 import 'package:quebetrats/features/onboarding/ui/onboarding.dart';
import 'package:quebetrats/features/onboarding/ui/widgets/fourth_onboarding_screen.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/profile/ui/person.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/qhub/ui/qhub.dart';
import 'package:quebetrats/features/register/ui/register_screen.dart';

List<GetPage<dynamic>> routes = [
  GetPage(name: PageName.onBoarding, page: () =>     const OnboardingScreen(), middlewares: [MyMiddleWare()]),
   GetPage(name: PageName.fourthOnboardingScreen, page: () => const FourthOnboardingScreen()),//fourthOnboardingScreen
   GetPage(name: PageName.login, page: () => const LoginScreen()),//register
   GetPage(name: PageName.register, page: () => const RegisterScreen()),//HomeScreen
   GetPage(name: PageName.bottomNavBar, page: () => const bottomNavBar()),//HomeScreen
      GetPage(name: PageName.homePage, page: () => const HomePage()),//HomeScreen
      GetPage(name: PageName.qubitHub, page: () => const QubitHubScreen()),//HomeScreenQubitHubScreen
      GetPage(name: PageName.settings, page: () =>   SettingsPage()),//MyBrandsScreen
      GetPage(name: PageName.myBrand, page: () =>   const MyBrandsScreen()),//cart
      GetPage(name: PageName.cart, page: () =>   const CartScreen()),//cart

  // GetPage(
  //     name: "/", page: () =>   Language(), middlewares: [MyMiddleWare()]),
 
];


// class AppRouter {
//   Route generateRoute(RouteSettings settings) {
//     //this arguments to be passed in any screen like this ( arguments as ClassName )
//     final arguments = settings.arguments;

//     switch (settings.name) {
//       case Routes.onBoardingScreen:
//         return MaterialPageRoute(
//           builder: (_) => const OnboardingScreen(),
//         );
      
    
//       default:
//         return MaterialPageRoute(
//           builder: (_) => Scaffold(
//             body: Center(
//               child: Text('No route defined for ${settings.name}'),
//             ),
//           ),
//         );
//     }
//   }
// }
