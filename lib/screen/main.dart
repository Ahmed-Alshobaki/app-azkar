import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zon/screen/test1.dart';

import '../Localization/Localizationcontral.dart';
import '../contral/homecontral.dart';
import '../core/resources/manager/font.dart';
import '../core/resources/manager/manager_colors.dart';
import '../core/resources/manager/manager_fontsizes.dart';
import '../core/resources/manager/manager_fontweight.dart';
import '../core/resources/manager/manager_strings.dart';

class mainazkar extends StatelessWidget {
  mainazkar({super.key});
  Localizationcontral1 Localizationcontral12 =Get.find();
  contral controller = Get.put(contral(), permanent: true);


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
              heroTag: "btn2",
              backgroundColor: Colors.black,
              child: Icon(Icons.add, color: Colors.white),
              onPressed: () {
                controller.plass();
              }),
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            actions: [],
            title: Text(
              "1".tr,
              style: TextStyle(
                  fontSize: Manager_fontsizes.siz33,
                  fontWeight: Manager_fontweight.font_w600,
                  fontFamily: font.font_ReemKufiFun),
            ),
            centerTitle: true,
            backgroundColor: ColorsApp.transparent,
          ),
          body: Stack(
            children: [
              Container(
                decoration:  BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/core/resources/images/img.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Align(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(5)),
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    child: Center(
                      child: GetBuilder<contral>(
                        init: contral(),
                        builder: (controller) => Text(
                          "${controller.number}",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: Manager_fontweight.font_w600,
                              color: Colors.white),
                        ),
                      ),
                    )),
              ),
              InkWell(
                onTap: () {
                  print("object");
                },
                child: Container(
                    alignment: AlignmentDirectional.bottomStart,
                    margin: EdgeInsetsDirectional.only(bottom: 14, start: 14),
                    child: FloatingActionButton(
                      heroTag: "btn1",
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.black,
                      onPressed: () {
                        controller.mains();
                      },
                    )),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 45,bottom: 25),
                color: Colors.black,
                child: MaterialButton(onPressed: () {
                  Localizationcontral12.chaeng("ar");
                },child: Text("ar",style: TextStyle(color: Colors.white),),),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 100,bottom: 25),
                color: Colors.black,
                child: MaterialButton(onPressed: () {
                  Localizationcontral12.chaeng("en");
                },child: Text("en",style: TextStyle(color: Colors.white)),),
              )

            ],
          )),
    );
  }
}
