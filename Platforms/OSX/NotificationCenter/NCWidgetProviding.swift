
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
  optional func widgetPerformUpdate(withCompletionHandler completionHandler: ((NCUpdateResult) -> Void)!)
  optional func widgetMarginInsets(forProposedMarginInsets defaultMarginInset: EdgeInsets) -> EdgeInsets
  optional var widgetAllowsEditing: Bool { get }
  optional func widgetDidBeginEditing()
  optional func widgetDidEndEditing()
}
extension NSViewController {
  @available(OSX 10.10, *)
  func present(inWidget viewController: NSViewController!)
}
