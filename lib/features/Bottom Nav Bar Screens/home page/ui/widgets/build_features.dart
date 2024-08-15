import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quebetrats/core/constant/color.dart';

Widget buildFeatured() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 200.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.sp),
              child: Card(
                shadowColor: AppColor.grey,
                child: SizedBox(
                  width: 160.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Container(
                            color: Colors.grey[300],
                            child: Center(
                              child: Icon(Icons.image, size: 50.sp),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.0.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Product ${index + 1}'),
                            SizedBox(height: 4.h),
                            // Text('\$${(index + 1) * 10}.99',
                            //     style: const TextStyle(
                            //         fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    ],
  );
}
