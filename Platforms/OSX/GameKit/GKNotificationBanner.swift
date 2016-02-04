
@available(OSX 10.8, *)
class GKNotificationBanner : NSObject {
  @available(OSX 10.8, *)
  class func showBannerWithTitle(title: String?, message: String?, completionHandler: (() -> Void)?)
  @available(OSX 10.8, *)
  class func showBannerWithTitle(title: String?, message: String?, duration: NSTimeInterval, completionHandler: (() -> Void)?)
  init()
}
