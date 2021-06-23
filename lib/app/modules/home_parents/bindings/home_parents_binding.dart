import 'package:get/get.dart';

import '../controllers/home_parents_controller.dart';

class HomeParentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeParentsController>(
      () => HomeParentsController(),
    );
  }
}
