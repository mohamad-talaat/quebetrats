import 'package:flutter/material.dart';
import 'package:quebetrats/core/constant/color.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/qhub/ui/widgets/filter_search.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/qhub/ui/widgets/post.dart';
import 'package:quebetrats/features/Bottom%20Nav%20Bar%20Screens/qhub/ui/widgets/qubit_bar.dart';
// import 'package:share_plus/share_plus.dart';

class QubitHubScreen extends StatelessWidget {
  const QubitHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: AppColor.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColor.primaryColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    qubitHubBar(),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: FilterList(filterSearch: filterSearch)),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Post(
                'unleashing the power of SEO for business growth',
                'digital marketing',
                '7 months ago',
                () {},
                () {
                      // Share.share('تحقق من هذا المنشور الرائع: https://example.com/post');

                },
                "assets/images/one.PNG"),
          ],
        ),
      ),
    );
  }
}

List<String> filterSearch = [
  "All",
  "brand Identity",
  "Graphic  Designs",
  "Social Media Mangment",
  "Social Media Production"
];
