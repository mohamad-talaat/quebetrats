import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quebetrats/core/Initialbinding.dart';
import 'package:quebetrats/core/localization/changelocal.dart';
import 'package:quebetrats/core/localization/translation.dart';
import 'package:quebetrats/core/pagescall/pagename.dart';
import 'package:quebetrats/core/pagescall/routes.dart';
import 'package:quebetrats/core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return GetMaterialApp(
            //  home: const HomeScreen(),
            translations: MyTranslation(),
            debugShowCheckedModeBanner: false,
            locale: controller.language,
            theme: controller.appTheme,
            initialBinding: InitialBinding(),
            initialRoute: PageName.bottomNavBar,
            getPages: routes,
          );
        });
  }
}
