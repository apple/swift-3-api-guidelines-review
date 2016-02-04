
@available(iOS 5.0, *)
class GKNotificationBanner : NSObject {
  @available(iOS 5.0, *)
  class func showBannerWithTitle(title: String?, message: String?, completionHandler: (() -> Void)?)
  @available(iOS 6.0, *)
  class func showBannerWithTitle(title: String?, message: String?, duration: NSTimeInterval, completionHandler: (() -> Void)?)
  init()
}
