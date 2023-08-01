import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
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

}