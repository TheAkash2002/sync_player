import 'package:get/get.dart';

import '../controller/loading_mixin.dart';
import '../utils/auth.dart';

/// Controller for Splash screen.
class SplashController extends GetxController with LoadingMixin {
  @override
  void onInit() async {
    super.onInit();
    setLoadingState(true);
    //TODO: Check Permissions
    setLoadingState(false);
    checkLoginStatus();
  }

  void checkLoginStatus() {
    Future.delayed(const Duration(seconds: 2), () {
      if (isLoggedIn()) {
        Get.offAllNamed('/');
      } else {
        Get.offAllNamed('/login');
      }
    });
  }
}
