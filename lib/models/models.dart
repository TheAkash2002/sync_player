import 'package:flutter/material.dart';

enum AppPermissions { postNotif }

extension PermText on AppPermissions {
  String text() {
    switch (this) {
      case AppPermissions.postNotif:
        return 'Push notifications for new expenses';
    }
  }
}

enum AppPermissionStatus { granted, loading, denied }

extension PermIcon on AppPermissionStatus {
  Icon icon() {
    switch (this) {
      case AppPermissionStatus.granted:
        return const Icon(Icons.check);
      case AppPermissionStatus.loading:
        return const Icon(Icons.hourglass_bottom_outlined);
      case AppPermissionStatus.denied:
        return const Icon(Icons.clear);
    }
  }
}
