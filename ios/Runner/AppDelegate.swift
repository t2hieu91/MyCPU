import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    
    let deviceNameChannel = FlutterMethodChannel(name: "com.example.myCpu/deviceName", binaryMessenger: controller.binaryMessenger)
    
    deviceNameChannel.setMethodCallHandler { [weak self]  (call: FlutterMethodCall, result: FlutterResult) in
        guard call.method == "getDeviceName" else {
          result(FlutterMethodNotImplemented)
          return
        }
          self?.getDeviceName(result: result)
    }
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    private func getDeviceName(result: FlutterResult) {
        let deviceName = UIDevice.current.name
        if deviceName.isEmpty {
            result(FlutterError(code: "Device Name", message: "Device Name Empty", details: nil))
        }
        result(deviceName)
    }
}

