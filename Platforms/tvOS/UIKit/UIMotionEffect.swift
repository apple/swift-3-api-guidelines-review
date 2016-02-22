
@available(tvOS 7.0, *)
class UIMotionEffect : NSObject, NSCopying, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  func keyPathsAndRelativeValues(forViewerOffset viewerOffset: UIOffset) -> [String : AnyObject]?
  @available(tvOS 7.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 7.0, *)
  func encode(with aCoder: NSCoder)
}
enum UIInterpolatingMotionEffectType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case tiltAlongHorizontalAxis
  case tiltAlongVerticalAxis
}
@available(tvOS 7.0, *)
class UIInterpolatingMotionEffect : UIMotionEffect {
  init(keyPath: String, type: UIInterpolatingMotionEffectType)
  init?(coder aDecoder: NSCoder)
  var keyPath: String { get }
  var type: UIInterpolatingMotionEffectType { get }
  var minimumRelativeValue: AnyObject?
  var maximumRelativeValue: AnyObject?
  convenience init()
}
@available(tvOS 7.0, *)
class UIMotionEffectGroup : UIMotionEffect {
  var motionEffects: [UIMotionEffect]?
  init()
  init?(coder aDecoder: NSCoder)
}
