import 'package:get/get.dart';
import 'package:sync_player/utils/utils.dart';

Future<void> signIn() async {
  try {
    //TODO: Implement
    Get.offAllNamed('/');
  } catch (e) {
    showToast(ToastType.error, 'Some error occured.');
    log.severe(e);
  }
}

/// Opens [Login] after a logout operation.
void navigateToLoginPage() async {
  try {
    //TODO: Implement
    Get.offAllNamed('/login');
  } catch (_) {
    showToast(ToastType.error, 'There was an error in logging the user out.');
  }
}

//TODO: Implement
bool isLoggedIn() => false;
