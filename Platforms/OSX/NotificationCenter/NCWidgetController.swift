
@available(OSX 10.10, *)
class NCWidgetController : NSObject {
  class func widgetController() -> Self!
  @available(*, deprecated, message="Use widgetController instead.")
  class func defaultWidgetController() -> NCWidgetController!
  func setHasContent(flag: Bool, forWidgetWithBundleIdentifier bundleID: String!)
  init()
}
