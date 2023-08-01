import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zon/screen/test1.dart';

import '../contral/homecontral.dart';
import 'main.dart';

class test2 extends StatelessWidget {
   test2({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            TextButton(onPressed:(){
              Get.off(()=>mainazkar());
            } , child: Text("1")),
            TextButton(onPressed:(){
              Get.to(test1());
            } , child: Text("2")),
          ],
        ),
      ),
    );
  }
}
