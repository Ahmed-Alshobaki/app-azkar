import 'dart:ui';

import 'package:get/get.dart';

class Localizationcontral1 extends GetxController{

  void chaeng(String language){
    Locale locale = Locale(language);
    Get.updateLocale(locale);
  }



}