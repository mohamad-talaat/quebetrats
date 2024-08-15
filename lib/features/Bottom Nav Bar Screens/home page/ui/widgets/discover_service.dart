import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quebetrats/core/constant/app_styles.dart';

class DiscoverService extends StatelessWidget {
  const DiscoverService({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Discover Our Services",
          style: AppTextStyle.aBeeZeefont20boldblack,
        ),
        SizedBox(height: 16.h),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200],
          ),
          child: Column(
            children: [
              ...List.generate(
                4,
                (index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 100.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        const Image(image: AssetImage('assets/images/one.PNG')),
                        Text(
                          "Discover Our Services",
                          style: AppTextStyle.aBeeZeefont20boldblack,
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
