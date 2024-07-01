import 'package:camera/camera.dart';
class camera{
 late CameraController _controller;
  Future<void> _initController() async {
    try {
      List _cameras = await availableCameras();
      _controller = CameraController(_cameras.first, ResolutionPreset.low);
      await _controller.initialize();
    } catch (Exception) {
      print(Exception);
    }
  }

  _disposeController() {
    _controller.dispose();
  }
}
