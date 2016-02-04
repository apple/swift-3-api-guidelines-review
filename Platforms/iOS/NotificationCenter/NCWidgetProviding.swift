
@available(iOS 8.0, *)
enum NCUpdateResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NewData
  case NoData
  case Failed
}
protocol NCWidgetProviding : ObjectProtocol {
  @available(iOS 8.0, *)
  optional func widgetPerformUpdateWithCompletionHandler(completionHandler: (NCUpdateResult) -> Void)
  optional func widgetMarginInsetsForProposedMarginInsets(defaultMarginInsets: UIEdgeInsets) -> UIEdgeInsets
}
extension UIVibrancyEffect {
  class func notificationCenter() -> UIVibrancyEffect
}
