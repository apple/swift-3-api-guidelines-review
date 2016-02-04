
@available(tvOS 9.0, *)
enum TVColorType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Plain
  case LinearGradientTopToBottom
  case LinearGradientLeftToRight
}
@available(tvOS 9.0, *)
class TVColor : NSObject, NSCopying {
  var colorType: TVColorType { get }
  var color: UIColor? { get }
  var gradientColors: [UIColor]? { get }
  var gradientPoints: [NSNumber]? { get }
  init()
  @available(tvOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
