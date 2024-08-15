import 'package:quebetrats/core/pagescall/pagename.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quebetrats/core/class/statusrequest.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
   goToAsAGhost();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  StatusRequest statusRequest = StatusRequest.none;

  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  // SignupData testDataSignUp = SignupData(Get.find());
  // List data = [];
  // @override
  // signUp() async {
  //   if (formstate.currentState!.validate()) {
  //     statusRequest = StatusRequest.loading;
  //     update();
  //     var response = await testDataSignUp.postData(
  //         name.text, email.text, password.text, phone.text);
  //     print("------------------$response------------------");
  //     statusRequest = handlingData(response);

  //     if (StatusRequest.success == statusRequest) {
  //       if (response['status'] == "success") {
  //         //   data.addAll(response['data']);
  //         Get.offNamed(AppRoute.verfiyCodeSignUp,
  //             arguments: {"email": email.text});
  //       } else {
  //         Get.defaultDialog(
  //             title: "Warning",
  //             titleStyle: const TextStyle(color: Colors.red),
  //             middleText: "Phone Number or Email is Already Exist");
  //         statusRequest = StatusRequest.failure;
  //       }
  //     }
  //     update();
  //   } else {}
  // }

  @override
  goToSignIn() {
    Get.offNamed(PageName.login);
  }

  @override
  void onInit() {
    name = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  signUp() {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      // TODO: Implement the sign up logic here
      // statusRequest = StatusRequest.success;
      // update();
    } else {
      statusRequest = StatusRequest.failure;
      update();
    }
  }

  @override
  goToAsAGhost() {
    Get.offNamed(PageName.homePage); //homePageAsGhost
  }
}
