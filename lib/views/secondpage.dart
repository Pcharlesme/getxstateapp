import 'package:chatbot/controller/list_controller.dart';
import 'package:chatbot/controller/tap_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    ListController listcontroller = Get.put(ListController());
    return SingleChildScrollView(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.yellow,
              ),
              child: Center(
                  child: Text(
                      " X Value" + Get.find<TapController>().x.toString())),
            ),
            SizedBox(
              height: 10,
            ),
            Obx(
              () => Column(
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.yellow,
                    ),
                    child: Center(
                        child: Text(" Y Value" +
                            Get.find<TapController>().y.value.toString())),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(255, 62, 255, 59),
                    ),
                    child: Center(
                        child: Text(" Total  Value" +
                            Get.find<TapController>().z.toString())),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.increaseY();
                // Get.find<TapController>().increaseY();
              },
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(255, 59, 65, 255),
                ),
                child: Center(child: Text("Increase Y")),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                controller.totalXY();
              },
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(255, 226, 59, 255),
                ),
                child: Center(child: Text("Total X + Y")),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                listcontroller.setValues(Get.find<TapController>().z);
              },
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(255, 226, 59, 255),
                ),
                child: Center(child: Text("Save Total")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
