import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quebetrats/core/constant/app_styles.dart';
import 'package:quebetrats/core/constant/color.dart';
import 'package:quebetrats/core/functions/alertexitapp.dart';
import 'package:quebetrats/core/functions/validinput.dart';
import 'package:quebetrats/core/handlingdata/handlingdataview.dart';
import 'package:quebetrats/features/login/logic/login_controller.dart';
import 'package:quebetrats/features/login/ui/widgets/custombuttonauth.dart';
import 'package:quebetrats/features/login/ui/widgets/customtextbodyauth.dart';
import 'package:quebetrats/features/login/ui/widgets/customtextformauth.dart';
import 'package:quebetrats/features/login/ui/widgets/customtexttitleauth.dart';
import 'package:quebetrats/features/login/ui/widgets/logoauth.dart';
import 'package:quebetrats/features/login/ui/widgets/textsignup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: AppColor.backgroundcolor,
      //   elevation: 0.0,
      //   title: Text('Qubit', style: AppTextStyle.aBeeZeefont30boldblack),
      // ),
      body:
          // WillPopScope(
          //   onWillPop: alertExitApp,
          //   child:
          GetBuilder<LoginControllerImp>(
              assignId: true,
              builder: (controller) => HandlingDataRequest(
                  statusRequest: controller.statusRequest,
                  widget: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Form(
                      key: controller.formstate,
                      child: ListView(children: [
                        //  const LogoAuth(),
                        const Apptitle(),
                        const SizedBox(height: 20),
                        CustomTextTitleAuth(text: "10".tr),
                        const SizedBox(height: 10),
                        CustomTextBodyAuth(text: "11".tr),
                        const SizedBox(height: 15),
                        CustomTextFormAuth(
                          isNumber: false,

                          valid: (val) {
                            return validInput(val!, 5, 100, "email");
                          },
                          mycontroller: controller.email,
                          hinttext: "12".tr,
                          iconData: Icons.email_outlined,
                          labeltext: "18".tr,
                          // mycontroller: ,
                        ),
                        // GetBuilder<LoginControllerImp>(
                        //   builder: (controller) =>
                        CustomTextFormAuth(
                          obscureText: controller.isshowpassword,
                          onTapIcon: () {
                            controller.showPassword();
                          },
                          isNumber: false,
                          valid: (val) {
                            return validInput(val!, 5, 30, "password");
                          },
                          mycontroller: controller.password,
                          hinttext: "13".tr,
                          iconData: Icons.lock_outline,
                          labeltext: "19".tr,
                          // mycontroller: ,
                        ),
                        //   ),
                        InkWell(
                          onTap: () {
                            // controller.goToForgetPassword();
                          },
                          child: Text(
                            "14".tr,
                            textAlign: TextAlign.right,
                            style: AppTextStyle.aBeeZeefont16boldblue.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        CustomButtonAuth(
                            text: "15".tr,
                            onPressed: () {
                              controller.goToLogin();
                            }),
                        const SizedBox(height: 10),
                        CustomButtonAuth(
                            text: "50".tr,
                            onPressed: () {
                              controller.goToAsAGhost();
                            }),
                        const SizedBox(height: 40),
                        CustomTextSignUpOrSignIn(
                          textone: "16".tr,
                          texttwo: "17".tr,
                          onTap: () {
                            controller.goToRegister();
                          },
                        )
                      ]),
                    ),
                  ))),
      //)
    );
  }
}
