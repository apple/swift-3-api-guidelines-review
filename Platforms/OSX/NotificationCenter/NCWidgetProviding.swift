
@available(OSX 10.10, *)
enum NCUpdateResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NewData
  case NoData
  case Failed
}
protocol NCWidgetProviding : ExtensionRequestHandling {
  @available(OSX 10.10, *)
  optional func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)!)
  optional func widgetMarginInsetsForProposedMarginInsets(defaultMarginInset: EdgeInsets) -> EdgeInsets
  optional var widgetAllowsEditing: Bool { get }
  optional func widgetDidBeginEditing()
  optional func widgetDidEndEditing()
}
extension NSViewController {
  @available(OSX 10.10, *)
  func presentInWidget(viewController: NSViewController!)
}
