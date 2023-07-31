import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zon/core/resources/manager/font.dart';
import 'package:zon/core/resources/manager/manager_strings.dart';

import 'package:zon/routes/routes.dart';

import '../core/constant/constant.dart';
import '../core/resources/manager/manager_colors.dart';
import '../core/resources/manager/manager_fontsizes.dart';
import '../core/resources/manager/manager_fontweight.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Navigator.pushReplacementNamed(context, routes.bioScreen);}
    Future.delayed(const Duration(seconds: constant.second3), () {
      Get.offNamed(routes.main);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
          gradient:LinearGradient(colors: [

            ColorsApp.PrimaryColor,
            ColorsApp.secondaryColor
          ],
            end: Alignment.bottomLeft,
            begin: Alignment.topRight,

          ),

        ),
        child: const Center(

          child: Text(
            Manager_string.S_Azkar,
            style: TextStyle(fontSize: Manager_fontsizes.siz33,
                fontWeight: Manager_fontweight.font_w600,
                fontFamily
                :font.font_ReemKufiFun),
          ),
        ),
      ),
    );
  }
}
