import 'package:flutter/material.dart';
import 'package:quebetrats/core/constant/app_styles.dart';

Widget AddNewBrand(String add, onPressed) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "My Brands",
        style: AppTextStyle.aBeeZeefont16boldblue.copyWith(color: Colors.black),
      ),
      Card(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "   $add",
                    style: AppTextStyle.aBeeZeefont16boldblue
                        .copyWith(color: Colors.white, fontSize: 25),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: onPressed,
                      icon: const Icon(
                        Icons.add,
                        color: Colors.blue,
                        size: 28,
                      ))
                ],
              )
            ],
          ),
        ),
      )
    ],
  );
}
