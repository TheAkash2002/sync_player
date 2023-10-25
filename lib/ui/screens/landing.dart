import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sync_player/controller/landing.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LandingController>(
      init: LandingController(),
      builder: (_) => const Center(child: Text('Landing screen')),
    );
  }
}
