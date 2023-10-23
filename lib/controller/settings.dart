import 'package:get/get.dart';

import '../models/models.dart';

/// Controller for Settings page.
class SettingsController extends GetxController {
  Map<AppPermissions, AppPermissionStatus> status = {
    for (AppPermissions p in AppPermissions.values)
      p: AppPermissionStatus.loading
  };

  @override
  void onInit() async {
    super.onInit();
    for (AppPermissions perm in AppPermissions.values) {
      await refreshPermission(perm);
    }
  }

  void setStatus(AppPermissions perm, AppPermissionStatus stat) {
    status[perm] = stat;
    update();
  }

  Future<AppPermissionStatus> checkStatus(AppPermissions perm) async {
    AppPermissionStatus result = AppPermissionStatus.denied;
    //TODO: Implement
    return result;
  }

  Future<void> refreshPermission(AppPermissions perm) async {
    setStatus(perm, AppPermissionStatus.loading);
    setStatus(perm, await checkStatus(perm));
  }

  Future<void> requestPermission(AppPermissions perm) async {
    setStatus(perm, AppPermissionStatus.loading);
    //TODO: Implement
  }
}
