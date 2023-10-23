import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ui/screens/landing.dart';
import '../ui/screens/settings.dart';
import '../utils/auth.dart';
import 'loading_mixin.dart';

enum HomeScreen {
  landing,
  settings,
  logout,
}

/// Controller for Home screen.
class HomeController extends GetxController with LoadingMixin {
  HomeNavigationEntry currentEntry = navEntries
      .where((element) => element.screen == HomeScreen.landing)
      .toList()[0];

  void setScreen(HomeScreen newScreen) {
    currentEntry =
        navEntries.where((element) => element.screen == newScreen).toList()[0];
    update();

    //Dismiss Drawer
    Navigator.of(Get.context!).pop();
  }

  static List<HomeNavigationEntry> navEntries = [
    HomeNavigationEntry(
      screen: HomeScreen.landing,
      widget: const Landing(),
      screenTitle: 'Landing',
      actions: [],
      drawerIcon: const Icon(Icons.attach_money),
      drawerTitle: 'Landing',
    ),
    HomeNavigationEntry(
      screen: HomeScreen.settings,
      widget: const Settings(),
      screenTitle: 'Settings',
      actions: [],
      drawerIcon: const Icon(Icons.settings),
      drawerTitle: 'Settings',
    ),
    HomeNavigationEntry(
      screen: HomeScreen.logout,
      widget: Container(),
      screenTitle: 'Log Out',
      actions: [],
      onTap: navigateToLoginPage,
      drawerIcon: const Icon(Icons.logout),
      drawerTitle: 'Log Out',
    )
  ];
}

/// Class representing a screen accessible from the Home page.
class HomeNavigationEntry {
  HomeScreen screen;
  Widget widget;
  String screenTitle;
  List<IconButton> actions;
  FloatingActionButton? fab;
  Icon drawerIcon;
  String drawerTitle;
  void Function() onDrawerTap;

  HomeNavigationEntry(
      {required this.screen,
      required this.widget,
      required this.screenTitle,
      required this.actions,
      this.fab,
      required this.drawerIcon,
      required this.drawerTitle,
      void Function()? onTap})
      : onDrawerTap =
            onTap ?? (() => Get.find<HomeController>().setScreen(screen));
}
