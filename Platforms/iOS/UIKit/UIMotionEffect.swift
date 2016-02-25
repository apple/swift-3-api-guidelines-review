
@available(iOS 7.0, *)
class UIMotionEffect : NSObject, NSCopying, NSCoding {
  init?(coder aDecoder: NSCoder)
  func keyPathsAndRelativeValues(forViewerOffset viewerOffset: UIOffset) -> [String : AnyObject]?
  @available(iOS 7.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 7.0, *)
  func encode(with aCoder: NSCoder)
}
enum UIInterpolatingMotionEffectType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case tiltAlongHorizontalAxis
  case tiltAlongVerticalAxis
}
@available(iOS 7.0, *)
class UIInterpolatingMotionEffect : UIMotionEffect {
  init(keyPath keyPath: String, type type: UIInterpolatingMotionEffectType)
  var keyPath: String { get }
  var type: UIInterpolatingMotionEffectType { get }
  var minimumRelativeValue: AnyObject?
  var maximumRelativeValue: AnyObject?
}
@available(iOS 7.0, *)
class UIMotionEffectGroup : UIMotionEffect {
  var motionEffects: [UIMotionEffect]?
}
