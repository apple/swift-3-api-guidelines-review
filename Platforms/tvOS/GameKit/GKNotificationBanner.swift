
@available(tvOS 5.0, *)
class GKNotificationBanner : NSObject {
  @available(tvOS 5.0, *)
  class func showBannerWithTitle(_ title: String?, message message: String?, completionHandler completionHandler: (() -> Void)?)
  @available(tvOS 6.0, *)
  class func showBannerWithTitle(_ title: String?, message message: String?, duration duration: NSTimeInterval, completionHandler completionHandler: (() -> Void)?)
}
