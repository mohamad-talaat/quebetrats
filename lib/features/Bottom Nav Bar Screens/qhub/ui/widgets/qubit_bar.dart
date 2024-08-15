
import 'package:flutter/material.dart';
import 'package:quebetrats/core/constant/app_styles.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

Widget qubitHubBar() {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        const Icon(Icons.hub_outlined),
        const SizedBox(
          width: 10,
        ),
        GradientText(
          ' QubitHub',
          style: AppTextStyle.aBeeZeefont16boldblue.copyWith(
            fontSize: 20,
          ),
          colors: const [
            Colors.blue,
            Colors.red,
            //  Colors.teal,
          ],
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    ),
  );
}
