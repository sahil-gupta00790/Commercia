import 'package:get/get.dart';

class HomeController extends GetxController{
  final carousalCurrentIndex=0.obs;

  void updateIndicator(index){
    carousalCurrentIndex.value=index;
  }
}