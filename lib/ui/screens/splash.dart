import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/splash.dart';
import '../components/custom.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (_) => Scaffold(
          backgroundColor: Theme.of(context).colorScheme.primary,
          body: Stack(children: [
            Center(
              child: Text(
                'Sync Player',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: Theme.of(context).colorScheme.onPrimary),
              ),
            ),
            if (_.isLoading) const Loading(),
          ])),
    );
  }
}
