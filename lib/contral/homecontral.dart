import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../screen/main.dart';
class contral extends GetxController{
       int number=0  ;

  void plass(){
    number++;
    update();
  }
  void mains(){
    number--;
    update();
  }
    void s3 ()async{
      Future.delayed(Duration(seconds: 3),(){
        Get.to(()=>mainazkar());
      });
    }
}