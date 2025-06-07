
import 'package:get/get.dart';
import 'package:plan_it/Controllers/auth_controller.dart';
import 'package:plan_it/Controllers/customcalendar_controller.dart';
import 'package:plan_it/Controllers/cmmunity_controller.dart';

import '../Controllers/page_controllers.dart';


class MyBindings implements Bindings{
  @override
  void dependencies() {
   Get.put(PagesController(),permanent: true);
   Get.put(CommunityController());
   Get.put(CustomCalendarController(), permanent: true);
   Get.put(AuthController());
  }
  
}