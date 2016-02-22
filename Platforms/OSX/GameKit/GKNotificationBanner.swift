
@available(OSX 10.8, *)
class GKNotificationBanner : NSObject {
  @available(OSX 10.8, *)
  class func show(title title: String?, message: String?, completionHandler: (() -> Void)? = nil)
  @available(OSX 10.8, *)
  class func show(title title: String?, message: String?, duration: NSTimeInterval, completionHandler: (() -> Void)? = nil)
  init()
}
