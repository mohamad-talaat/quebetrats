
import 'package:flutter/material.dart';
import 'package:quebetrats/core/constant/color.dart';

Widget iconAppbar(Function()? onPressed, IconData? icon) {
  return Padding(
    padding: const EdgeInsets.only(left: 4.0),
    child: Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: AppColor.primaryColor),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 30,
          )),
    ),
  );
}
