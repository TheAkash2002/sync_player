import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class LandingController extends GetxController {
  final String url =
      'https://drive.google.com/uc?export=download&id=1pi4vWnNLt1yaUwE9TZko9IAg7MTUHCWO';

  final player = AudioPlayer();

  @override
  void onInit() {
    super.onInit();
    playAudio();
  }

  Future<void> playAudio() async {
    final duration = await player.setUrl(url);
    player.play();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    player.dispose();
  }
}
