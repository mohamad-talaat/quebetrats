import 'package:flutter/material.dart';
import 'package:quebetrats/core/constant/app_styles.dart';
import 'package:quebetrats/core/constant/imgaeasset.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 70,
        backgroundColor: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(0), // Border radius
          child: ClipOval(
            child: Image.asset(
              AppImageAsset.logo,
            ),
          ),
        ));
  }
}

class Apptitle extends StatelessWidget {
  const Apptitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(0), // Border radius
        child: ClipOval(
          child: Text('Qubit', style: AppTextStyle.aBeeZeefont30boldblack),
        ),
      ),
    );
  }
}
