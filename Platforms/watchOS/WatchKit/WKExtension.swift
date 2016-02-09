
@available(watchOS 2.0, *)
class WKExtension : Object {
  class func shared() -> WKExtension
  func openSystemURL(url: URL)
  weak var delegate: @sil_weak WKExtensionDelegate?
  var rootInterfaceController: WKInterfaceController? { get }
  init()
}
@available(watchOS 2.0, *)
protocol WKExtensionDelegate : ObjectProtocol {
  optional func applicationDidFinishLaunching()
  optional func applicationDidBecomeActive()
  optional func applicationWillResignActive()
  optional func handleAction(withIdentifier identifier: String?, forRemoteNotification remoteNotification: [Object : AnyObject])
  optional func handleAction(withIdentifier identifier: String?, forLocalNotification localNotification: UILocalNotification)
  optional func handleAction(withIdentifier identifier: String?, forRemoteNotification remoteNotification: [Object : AnyObject], withResponseInfo responseInfo: [Object : AnyObject])
  optional func handleAction(withIdentifier identifier: String?, forLocalNotification localNotification: UILocalNotification, withResponseInfo responseInfo: [Object : AnyObject])
  optional func handleUserActivity(userInfo: [Object : AnyObject]?)
  optional func didReceiveRemoteNotification(userInfo: [Object : AnyObject])
  optional func didReceive(notification: UILocalNotification)
}
