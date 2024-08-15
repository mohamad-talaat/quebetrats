// ignore_for_file: unused_local_variable

import 'package:quebetrats/core/constant/color.dart';
import 'package:quebetrats/core/functions/alertexitapp.dart';
import 'package:quebetrats/core/functions/validinput.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quebetrats/core/handlingdata/handlingdataview.dart';
import 'package:quebetrats/features/login/ui/widgets/custombuttonauth.dart';
import 'package:quebetrats/features/login/ui/widgets/customtextbodyauth.dart';
import 'package:quebetrats/features/login/ui/widgets/customtextformauth.dart';
import 'package:quebetrats/features/login/ui/widgets/customtexttitleauth.dart';
import 'package:quebetrats/features/login/ui/widgets/logoauth.dart';
import 'package:quebetrats/features/login/ui/widgets/textsignup.dart';
import 'package:quebetrats/features/register/logic/signup_controller.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: AppColor.backgroundcolor,
      //   elevation: 0.0,
      //   title: Text('17'.tr,
      //       style: Theme.of(context)
      //           .textTheme
      //           .displayLarge!
      //           .copyWith(color: AppColor.grey)),
      // ),
      body:
          //  WillPopScope(
          //   onWillPop: alertExitApp,
          //   child:
          GetBuilder<SignUpControllerImp>(
              assignId: true,
              builder: (controller) => HandlingDataRequest(
                  statusRequest: controller.statusRequest,
                  widget: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Form(
                      key: controller.formstate,
                      child: ListView(children: <Widget>[
                        const SizedBox(height: 20),
                        const Apptitle(),
                        CustomTextTitleAuth(text: "10".tr),
                        const SizedBox(height: 10),
                        CustomTextBodyAuth(text: "24".tr),
                        const SizedBox(height: 15),
                        CustomTextFormAuth(
                          isNumber: false,
                          valid: (val) {
                            return validInput(val!, 3, 20, "name");
                          },
                          mycontroller: controller.name,
                          hinttext: "23".tr,
                          iconData: Icons.person_outline,
                          labeltext: "20".tr,
                          // mycontroller: ,
                        ),
                        CustomTextFormAuth(
                          isNumber: false,

                          valid: (val) {
                            return validInput(val!, 3, 40, "email");
                          },
                          mycontroller: controller.email,
                          hinttext: "12".tr,
                          iconData: Icons.email_outlined,
                          labeltext: "18".tr,
                          // mycontroller: ,
                        ),
                        CustomTextFormAuth(
                          isNumber: true,
                          valid: (val) {
                            return validInput(val!, 7, 11, "phone");
                          },
                          mycontroller: controller.phone,
                          hinttext: "22".tr,
                          iconData: Icons.phone_android_outlined,
                          labeltext: "21".tr,
                          // mycontroller: ,
                        ),
                        // GetBuilder<SignUpControllerImp>(
                        //     builder: (controller) =>
                        CustomTextFormAuth(
                          obscureText: controller.isshowpassword,
                          onTapIcon: () {
                            controller.showPassword();
                          },
                          isNumber: false,

                          valid: (val) {
                            return validInput(val!, 3, 30, "password");
                          },

                          mycontroller: controller.password,
                          hinttext: "13".tr,
                          iconData: Icons.lock_outline,
                          labeltext: "19".tr,
                          // mycontroller: ,
                        ),
                        //),
                        CustomButtonAuth(
                            text: "17".tr,
                            onPressed: () {
                              controller.signUp();
                            }),
                        const SizedBox(height: 10),
                        CustomButtonAuth(
                            text: "50".tr,
                            onPressed: () {
                              controller.signUp();
                            }),
                        const SizedBox(height: 40),
                        CustomTextSignUpOrSignIn(
                          textone: "25".tr,
                          texttwo: "26".tr,
                          onTap: () {
                            controller.goToSignIn();
                          },
                        ),
                      ]),
                    ),
                  ))),
      //)
    );
  }
}
