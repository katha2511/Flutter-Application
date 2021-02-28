import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    //GMSServices.provideAPIKey("AIzaSyB4De_tupoBSCVdzAccq1hJ6wvQGzYpEGw")
    GMSServices.provideAPIKey("AIzaSyDs7AlZEzYqp3opDupPcffE5OGt7jUtjaM")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
