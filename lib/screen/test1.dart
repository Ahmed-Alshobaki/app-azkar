import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../contral/homecontral.dart';
import 'main.dart';

class test1 extends StatelessWidget {
   test1({super.key});
  contral zon = Get.put(contral());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(onPressed: () {
          Get.to(mainazkar());
        }, child: Text("${zon.number}"),),
      ),
    );
  }
}
