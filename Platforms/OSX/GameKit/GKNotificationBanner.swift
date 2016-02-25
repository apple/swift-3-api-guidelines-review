
@available(OSX 10.8, *)
class GKNotificationBanner : NSObject {
  @available(OSX 10.8, *)
  class func showBannerWithTitle(_ title: String?, message message: String?, completionHandler completionHandler: (() -> Void)?)
  @available(OSX 10.8, *)
  class func showBannerWithTitle(_ title: String?, message message: String?, duration duration: NSTimeInterval, completionHandler completionHandler: (() -> Void)?)
}
