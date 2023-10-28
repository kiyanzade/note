import 'package:get/get.dart';
import '../themes/controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThemeController(), fenix: true);
    
  }
}
