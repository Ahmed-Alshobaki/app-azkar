import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zon/core/resources/manager/font.dart';
import 'package:zon/core/resources/manager/manager_strings.dart';

import 'package:zon/routes/routes.dart';

import '../contral/homecontral.dart';
import '../core/constant/constant.dart';
import '../core/resources/manager/manager_colors.dart';
import '../core/resources/manager/manager_fontsizes.dart';
import '../core/resources/manager/manager_fontweight.dart';
// class  extends StatelessWidget {
//   const ({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  contral contral1 = Get.put(contral());
  @override
  void initState() {
    // TODO: implement initState
    contral1.s3();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
        child:  Center(

          child: Text(
            "1".tr,
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
