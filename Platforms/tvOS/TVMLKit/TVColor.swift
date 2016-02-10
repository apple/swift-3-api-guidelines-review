
@available(tvOS 9.0, *)
enum TVColorType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case plain
  case linearGradientTopToBottom
  case linearGradientLeftToRight
}
@available(tvOS 9.0, *)
class TVColor : Object, Copying {
  var colorType: TVColorType { get }
  var color: UIColor? { get }
  var gradientColors: [UIColor]? { get }
  var gradientPoints: [Number]? { get }
  init()
  @available(tvOS 9.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
