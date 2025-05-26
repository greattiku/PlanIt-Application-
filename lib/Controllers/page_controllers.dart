import 'package:get/get.dart';

class PagesController extends GetxController{
 final  currentPageIndex = 0.obs;
   var previousPageIndex = 0.obs;

  void changePageIndex(int index) {
    previousPageIndex.value = currentPageIndex.value;
    currentPageIndex.value = index;
  }

}