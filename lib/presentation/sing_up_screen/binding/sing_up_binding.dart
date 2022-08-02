import '../controller/sing_up_controller.dart';
import 'package:get/get.dart';

class SingUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SingUpController());
  }
}
