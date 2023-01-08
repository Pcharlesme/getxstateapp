import 'package:chatbot/controller/list_controller.dart';
import 'package:chatbot/controller/tap_controller.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => TapController());
  Get.lazyPut(() => ListController());
}
