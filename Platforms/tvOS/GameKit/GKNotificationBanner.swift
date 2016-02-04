
@available(tvOS 5.0, *)
class GKNotificationBanner : NSObject {
  @available(tvOS 5.0, *)
  class func showBannerWithTitle(title: String?, message: String?, completionHandler: (() -> Void)?)
  @available(tvOS 6.0, *)
  class func showBannerWithTitle(title: String?, message: String?, duration: NSTimeInterval, completionHandler: (() -> Void)?)
  init()
}
