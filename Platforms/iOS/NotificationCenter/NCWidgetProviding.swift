
@available(iOS 8.0, *)
enum NCUpdateResult : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case NewData
  case NoData
  case Failed
}
protocol NCWidgetProviding : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func widgetPerformUpdateWithCompletionHandler(_ completionHandler: (NCUpdateResult) -> Void)
  optional func widgetMarginInsetsForProposedMarginInsets(_ defaultMarginInsets: UIEdgeInsets) -> UIEdgeInsets
}
extension UIVibrancyEffect {
  class func notificationCenterVibrancyEffect() -> UIVibrancyEffect
}
