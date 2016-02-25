
@available(iOS 7.0, *)
class UIMotionEffect : NSObject, NSCopying, NSCoding {
  init?(coder aDecoder: NSCoder)
  func keyPathsAndRelativeValuesForViewerOffset(_ viewerOffset: UIOffset) -> [String : AnyObject]?
  @available(iOS 7.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 7.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
}
enum UIInterpolatingMotionEffectType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case TiltAlongHorizontalAxis
  case TiltAlongVerticalAxis
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
