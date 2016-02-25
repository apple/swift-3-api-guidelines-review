
enum UIBarMetrics : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Compact
  case DefaultPrompt
  case CompactPrompt
  @available(tvOS, introduced=5.0, deprecated=8.0, message="Use UIBarMetricsCompact instead")
  static var LandscapePhone: UIBarMetrics { get }
  @available(tvOS, introduced=7.0, deprecated=8.0, message="Use UIBarMetricsCompactPrompt")
  static var LandscapePhonePrompt: UIBarMetrics { get }
}
@available(tvOS 7.0, *)
enum UIBarPosition : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Any
  case Bottom
  case Top
  case TopAttached
}
protocol UIBarPositioning : NSObjectProtocol {
  @available(tvOS 7.0, *)
  var barPosition: UIBarPosition { get }
}
protocol UIBarPositioningDelegate : NSObjectProtocol {
  @available(tvOS 7.0, *)
  optional func positionForBar(_ bar: UIBarPositioning) -> UIBarPosition
}
