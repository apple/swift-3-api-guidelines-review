
@available(iOS 8.0, *)
class NCWidgetController : Object {
  class func widgetController() -> Self
  func setHasContent(flag: Bool, forWidgetWithBundleIdentifier bundleID: String)
  init()
}
