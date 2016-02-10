
@available(OSX 10.10, *)
enum NCUpdateResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case newData
  case noData
  case failed
}
protocol NCWidgetProviding : ExtensionRequestHandling {
  @available(OSX 10.10, *)
  optional func widgetPerformUpdateWith(completionHandler completionHandler: ((NCUpdateResult) -> Void)!)
  optional func widgetMarginInsetsFor(proposedMarginInsets defaultMarginInset: EdgeInsets) -> EdgeInsets
  optional var widgetAllowsEditing: Bool { get }
  optional func widgetDidBeginEditing()
  optional func widgetDidEndEditing()
}
extension NSViewController {
  @available(OSX 10.10, *)
  func presentIn(widget viewController: NSViewController!)
}
