import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home.dart';
import '../../utils/auth.dart';
import '../../utils/utils.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sync Player',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      foregroundImage: NetworkImage(
                          currentUser?.photoURL ?? 'http://google.com'),
                      radius: 30,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      child: Text(
                        getInitials(currentUser?.displayName ?? 'User'),
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    ),
                  ),
                  Text(
                    currentUser?.displayName ?? 'User',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                  Text(currentUser?.email ?? 'Email',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary))
                ],
              )),
          ...HomeController.navEntries.map<Widget>((entry) => ListTile(
                title: Text(entry.drawerTitle),
                leading: entry.drawerIcon,
                tileColor: _.currentEntry.screen == entry.screen
                    ? Colors.grey[300]
                    : null,
                onTap: entry.onDrawerTap,
              )),
        ],
      )),
    );
  }
}
