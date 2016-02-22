
@available(iOS 5.0, *)
class GKNotificationBanner : NSObject {
  @available(iOS 5.0, *)
  class func show(title title: String?, message: String?, completionHandler: (() -> Void)? = nil)
  @available(iOS 6.0, *)
  class func show(title title: String?, message: String?, duration: NSTimeInterval, completionHandler: (() -> Void)? = nil)
  init()
}
