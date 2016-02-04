
@available(OSX 10.8, *)
class GKNotificationBanner : Object {
  @available(OSX 10.8, *)
  class func showWithTitle(title: String?, message: String?, completionHandler: (() -> Void)? = nil)
  @available(OSX 10.8, *)
  class func showWithTitle(title: String?, message: String?, duration: TimeInterval, completionHandler: (() -> Void)? = nil)
  init()
}
