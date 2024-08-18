import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quebetrats/core/constant/app_styles.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/home%20page/ui/widgets/add_new_brand.dart';
 import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/home%20page/ui/widgets/build_features.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/home%20page/ui/widgets/build_qubit.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/home%20page/ui/widgets/business_problem.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/home%20page/ui/widgets/discover_service.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/home%20page/ui/widgets/icon_appbar.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/home%20page/ui/widgets/my_request_for_users.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              children: [
                Text(
                  'Qubit',
                  style: AppTextStyle.abyssinicaSilfont25boldblack
                      .copyWith(fontSize: 33.sp),
                ),
                const Spacer(),
                iconAppbar(() {}, Icons.add_circle_outline_outlined),
                iconAppbar(() {}, Icons.headset_mic),
                iconAppbar(() {}, Icons.add_circle_outline_outlined),
              ],
            ),
            SizedBox(height: 8.h),
            buildFeatured(),
            SizedBox(height: 8.h),
            myRequestsForUsersLogin(),
            SizedBox(height: 8.h),
            addNewBrand("Add New Brand", () {}),
            SizedBox(height: 16.h),
            buildQubitHub(),
            SizedBox(height: 8.h),
            const DiscoverService(),
            SizedBox(height: 8.h),
            businessProblem(),
          ],
        ),
      ),
    );
  }
}
