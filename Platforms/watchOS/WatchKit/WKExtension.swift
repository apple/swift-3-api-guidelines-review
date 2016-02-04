
@available(watchOS 2.0, *)
class WKExtension : NSObject {
  class func sharedExtension() -> WKExtension
  func openSystemURL(url: NSURL)
  weak var delegate: @sil_weak WKExtensionDelegate?
  var rootInterfaceController: WKInterfaceController? { get }
  init()
}
@available(watchOS 2.0, *)
protocol WKExtensionDelegate : NSObjectProtocol {
  optional func applicationDidFinishLaunching()
  optional func applicationDidBecomeActive()
  optional func applicationWillResignActive()
  optional func handleActionWithIdentifier(identifier: String?, forRemoteNotification remoteNotification: [NSObject : AnyObject])
  optional func handleActionWithIdentifier(identifier: String?, forLocalNotification localNotification: UILocalNotification)
  optional func handleActionWithIdentifier(identifier: String?, forRemoteNotification remoteNotification: [NSObject : AnyObject], withResponseInfo responseInfo: [NSObject : AnyObject])
  optional func handleActionWithIdentifier(identifier: String?, forLocalNotification localNotification: UILocalNotification, withResponseInfo responseInfo: [NSObject : AnyObject])
  optional func handleUserActivity(userInfo: [NSObject : AnyObject]?)
  optional func didReceiveRemoteNotification(userInfo: [NSObject : AnyObject])
  optional func didReceiveLocalNotification(notification: UILocalNotification)
}
