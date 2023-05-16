import 'package:flutter_test/flutter_test.dart';
import 'package:obdblue/obdblue.dart';
import 'package:obdblue/obdblue_platform_interface.dart';
import 'package:obdblue/obdblue_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockObdbluePlatform
    with MockPlatformInterfaceMixin
    implements ObdbluePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ObdbluePlatform initialPlatform = ObdbluePlatform.instance;

  test('$MethodChannelObdblue is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelObdblue>());
  });

  test('getPlatformVersion', () async {
    Obdblue obdbluePlugin = Obdblue();
    MockObdbluePlatform fakePlatform = MockObdbluePlatform();
    ObdbluePlatform.instance = fakePlatform;

    expect(await obdbluePlugin.getPlatformVersion(), '42');
  });
}
