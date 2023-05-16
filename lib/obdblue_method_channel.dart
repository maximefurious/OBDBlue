import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'obdblue_platform_interface.dart';

/// An implementation of [ObdbluePlatform] that uses method channels.
class MethodChannelObdblue extends ObdbluePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('obdblue');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getRandomNumber() async {
    final randomNumber = await methodChannel.invokeMethod<String>('getRandomNumber');
    return randomNumber;
  }
}
