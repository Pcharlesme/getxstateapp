import 'package:chatbot/myhomeepage.dart';
import 'package:chatbot/service/init_dependecy.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'service/init_controller.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: InitDep(),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
