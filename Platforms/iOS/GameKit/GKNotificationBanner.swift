
@available(iOS 5.0, *)
class GKNotificationBanner : Object {
  @available(iOS 5.0, *)
  class func showWithTitle(title: String?, message: String?, completionHandler: (() -> Void)? = nil)
  @available(iOS 6.0, *)
  class func showWithTitle(title: String?, message: String?, duration: TimeInterval, completionHandler: (() -> Void)? = nil)
  init()
}
