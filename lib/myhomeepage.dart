import 'package:chatbot/views/firstpage.dart';
import 'package:chatbot/views/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/tap_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(
              builder: (tapController) {
                return Container(
                  width: double.maxFinite,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 5, 80, 71)),
                  child: Center(
                    child: Text(
                      controller.x.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
            GestureDetector(
                onTap: () {
                  controller.increaseX();
                },
                child: CustomButton(
                  text: 'Tap',
                  colors: Colors.black,
                )),
            GestureDetector(
              onTap: () {
                Get.to(FirstScreen());
              },
              child: CustomButton(
                colors: Colors.greenAccent,
                text: "To First Page",
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(SecondScreen());
              },
              child: CustomButton(
                colors: Color.fromARGB(255, 105, 118, 240),
                text: "To Second Page",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Color colors;
  const CustomButton({
    required this.text,
    required this.colors,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        width: double.maxFinite,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: colors),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
