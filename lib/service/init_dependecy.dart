import 'package:chatbot/controller/list_controller.dart';
import 'package:get/get.dart';

import '../controller/tap_controller.dart';

class InitDep implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(() => TapController());
    Get.lazyPut(() => ListController());
  }
}
