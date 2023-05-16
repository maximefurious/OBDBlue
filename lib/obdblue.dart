
import 'obdblue_platform_interface.dart';

class Obdblue {
  Future<String?> getPlatformVersion() {
    return ObdbluePlatform.instance.getPlatformVersion();
  }

  Future<String?> getRandomNumber() {
    return ObdbluePlatform.instance.getRandomNumber();
  }
}
