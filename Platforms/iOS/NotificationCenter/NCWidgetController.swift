
@available(iOS 8.0, *)
class NCWidgetController : NSObject {
  class func widgetController() -> Self
  func setHasContent(flag: Bool, forWidgetWithBundleIdentifier bundleID: String)
  init()
}
