import 'package:flutter/material.dart';
 
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quebetrats/core/constant/app_styles.dart';

Widget businessProblem() {
  return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Image(
            image: const AssetImage('assets/images/one.PNG'),
            fit: BoxFit.cover,
            height: 270.h,
          ),
          SizedBox(
            height: 20.h,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Do you have a business Problem?",
                style: AppTextStyle.aBeeZeefont20boldblack),
            TextSpan(
                text: "\nGet FREE Consulting",
                style: AppTextStyle.aBeeZeefont16boldblue),
          ])),
          const Divider(
            indent: 3,
            thickness: 2,
            color: Colors.white,
            endIndent: 3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: Text(
                style:
                    AppTextStyle.aBeeZeefont16w500black.copyWith(height: 1.2),
                "With our business consultants, we can help you adapt to today's market dynamics and continue to compete no matter the threats you might be facing. Tools to enable optimal remote work can help minimize or prevent disruption in your operations. \n \nOur business consultants are experienced leaders and practitioners who are customer-focused, are delivery-excellence driven, and can navigate and manage complex projects, working effectively across diverse business and technology Home"),
          )
        ],
      ));
}
