
@available(OSX 10.10, *)
class NCWidgetController : Object {
  class func widgetController() -> Self!
  @available(*, deprecated, message="Use widgetController instead.")
  class func defaultWidgetController() -> NCWidgetController!
  func setHasContent(flag: Bool, forWidgetWithBundleIdentifier bundleID: String!)
  init()
}
