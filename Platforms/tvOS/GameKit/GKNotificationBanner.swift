
@available(tvOS 5.0, *)
class GKNotificationBanner : Object {
  @available(tvOS 5.0, *)
  class func show(title title: String?, message: String?, completionHandler: (() -> Void)? = nil)
  @available(tvOS 6.0, *)
  class func show(title title: String?, message: String?, duration: TimeInterval, completionHandler: (() -> Void)? = nil)
  init()
}
