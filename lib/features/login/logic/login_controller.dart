 
 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quebetrats/core/class/statusrequest.dart';
import 'package:quebetrats/core/pagescall/pagename.dart';
import 'package:quebetrats/core/services/services.dart';

abstract class LoginController extends GetxController {
   goToRegister();
  goToLogin();
   goToAsAGhost();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  late TextEditingController email;
  late TextEditingController password;
  StatusRequest statusRequest = StatusRequest.none;

  MyServices myServices = Get.find();

  // LoginData testLoginData = LoginData(Get.find());
  // @override
  // login() async {
  //   if (formstate.currentState!.validate()) {
  //     statusRequest = StatusRequest.loading;
  //     update();
  //     var response = await testLoginData.postData(email.text, password.text);
  //     print("=============================== Controller $response ");
  //     statusRequest = handlingData(response);
  //     if (StatusRequest.success == statusRequest) {
  //       // then the data exist and no problem ::::
  //       if (response['status'] == "success") {
  //         // data.addAll(response['data']);
  //         if (response['data']['users_approve'] == 1) {
  //           myServices.sharedPreferences.setString("step", "2");
  //           Get.offNamed(AppRoute.homePage);
  //           myServices.sharedPreferences
  //               .setString("id", response['data']['users_id'].toString())
  //               .toString();
  //           myServices.sharedPreferences
  //               .setString("name", response['data']['users_name']);
  //           myServices.sharedPreferences
  //               .setString("email", response['data']['users_email']);
  //           myServices.sharedPreferences
  //               .setString("phone", response['data']['users_phone']);
  //         } else {
  //           Get.offNamed(AppRoute.verfiyCodeSignUp,
  //               arguments: {"email": email.text});
  //         }
  //       } else {
  //         Get.defaultDialog(
  //             title: "Warning",
  //             titleStyle: const TextStyle(color: Colors.red),
  //             middleText: "Email or Password is Not Correct");
  //         statusRequest = StatusRequest.failure;
  //       }
  //     }
  //     update();

  //     //   print("Valid");
  //     // } else {
  //     //   print("Not Valid");
  //   }
  // }
 
  @override
  void onInit() {
    // FirebaseMessaging.instance.getToken().then((value) {
    //   print(value);
    //   //  String? token = value;
    // });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToRegister() {
    Get.offNamed(PageName.register);
  }
 


  @override
  goToLogin() {
    Get.offNamed(PageName.login); //homePageAsGhost
  }
    @override
  goToAsAGhost() {
    Get.offNamed(PageName.homePage); //homePageAsGhost
  }

}
