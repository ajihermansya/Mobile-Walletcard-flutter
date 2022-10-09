import 'package:card_wallet/app/modules/home_page/views/home_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp()
    // GetMaterialApp(
    //   title: "Application",
    //   initialRoute: AppPages.INITIAL,
    //   getPages: AppPages.routes,
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}