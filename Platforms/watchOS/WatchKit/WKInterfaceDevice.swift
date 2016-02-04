
@available(watchOS 2.0, *)
enum WKHapticType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Notification
  case DirectionUp
  case DirectionDown
  case Success
  case Failure
  case Retry
  case Start
  case Stop
  case Click
}
@available(watchOS 2.1, *)
enum WKInterfaceLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LeftToRight
  case RightToLeft
}
@available(watchOS 2.1, *)
enum WKInterfaceSemanticContentAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Playback
  case Spatial
  case ForceLeftToRight
  case ForceRightToLeft
}
class WKInterfaceDevice : Object {
  class func current() -> WKInterfaceDevice
  var screenBounds: CGRect { get }
  var screenScale: CGFloat { get }
  var preferredContentSizeCategory: String { get }
  @available(watchOS 2.1, *)
  var layoutDirection: WKInterfaceLayoutDirection { get }
  @available(watchOS 2.1, *)
  class func interfaceLayoutDirectionFor(semanticContentAttribute: WKInterfaceSemanticContentAttribute) -> WKInterfaceLayoutDirection
  @available(watchOS 2.0, *)
  var systemVersion: String { get }
  @available(watchOS 2.0, *)
  var name: String { get }
  @available(watchOS 2.0, *)
  var model: String { get }
  @available(watchOS 2.0, *)
  var localizedModel: String { get }
  @available(watchOS 2.0, *)
  var systemName: String { get }
  @available(watchOS 2.0, *)
  func play(type: WKHapticType)
  init()
}
