import 'package:flutter/material.dart';
import 'package:quebetrats/core/constant/app_styles.dart';

Widget myRequestsForUsersLogin() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "My Requests",
        style: AppTextStyle.aBeeZeefont20boldblack,
      ),
      Row(
        children: [
          Expanded(
              child: insideCardInfo(
                  Colors.black, "Active Requests", 0, () {}, Colors.white)),
          SizedBox(
            width: 5,
          ),
          Expanded(
              child: insideCardInfo(
                  Colors.amberAccent, "in Progress", 0, () {}, Colors.black)),
        ],
      ),
    ],
  );
}

Widget insideCardInfo(Color? color, String name, int number,
    Function()? onPressed, Color? Textcolor) {
  return Card(
    color: color,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            "  $name  ",
            style:
                AppTextStyle.aBeeZeefont16boldblue.copyWith(color: Textcolor),
          ),
        ),
        Row(
          children: [
            Text(
              "  $number",
              style: AppTextStyle.aBeeZeefont16boldblue
                  .copyWith(color: Colors.white, fontSize: 50),
            ),
            const Spacer(),
            IconButton(
                onPressed: onPressed,
                icon: const Icon(
                  Icons.rotate_left_sharp,
                  color: Colors.blue,
                  size: 28,
                ))
          ],
        )
      ],
    ),
  );
}
