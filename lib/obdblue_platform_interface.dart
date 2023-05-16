import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'obdblue_method_channel.dart';

abstract class ObdbluePlatform extends PlatformInterface {
  /// Constructs a ObdbluePlatform.
  ObdbluePlatform() : super(token: _token);

  static final Object _token = Object();

  static ObdbluePlatform _instance = MethodChannelObdblue();

  /// The default instance of [ObdbluePlatform] to use.
  ///
  /// Defaults to [MethodChannelObdblue].
  static ObdbluePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ObdbluePlatform] when
  /// they register themselves.
  static set instance(ObdbluePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getRandomNumber() {
    throw UnimplementedError('getRandomNumber() has not been implemented.');
  }
}
