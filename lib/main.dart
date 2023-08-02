
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:zon/routes/routes.dart';
import 'package:zon/screen/main.dart';
import 'package:zon/screen/splash_screen.dart';


import 'Localization/Localization.dart';
import 'Localization/Localizationcontral.dart';
import 'screen/test2.dart';


void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {

    Get.put(Localizationcontral1());
    return GetMaterialApp(
      initialRoute:  routes.splash,
      locale: Get.deviceLocale,
      translations: Localizationsz(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true ,
      ),
      getPages: [
        GetPage(name: routes.main, page: ()=>mainazkar()),
        GetPage(name: routes.splash, page: ()=>splash_screen()),


      ],

    );
  }
}
