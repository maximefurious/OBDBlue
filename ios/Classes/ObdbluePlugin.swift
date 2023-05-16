import Flutter
import UIKit

public class ObdbluePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "obdblue", binaryMessenger: registrar.messenger())
    let instance = ObdbluePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "getRandomNumber":
      result("iOS " + 48)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
