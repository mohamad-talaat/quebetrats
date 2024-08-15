import 'package:quebetrats/core/class/crud.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  Crud crud = Crud();
  @override
  void dependencies() {
    Get.put(crud);
  }
}
