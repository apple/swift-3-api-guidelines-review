
@available(iOS 7.0, *)
class UIMotionEffect : Object, Copying, Coding {
  init()
  init?(coder aDecoder: Coder)
  func keyPathsAndRelativeValuesFor(viewerOffset viewerOffset: UIOffset) -> [String : AnyObject]?
  @available(iOS 7.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 7.0, *)
  func encodeWith(aCoder: Coder)
}
enum UIInterpolatingMotionEffectType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case TiltAlongHorizontalAxis
  case TiltAlongVerticalAxis
}
@available(iOS 7.0, *)
class UIInterpolatingMotionEffect : UIMotionEffect {
  init(keyPath: String, type: UIInterpolatingMotionEffectType)
  init?(coder aDecoder: Coder)
  var keyPath: String { get }
  var type: UIInterpolatingMotionEffectType { get }
  var minimumRelativeValue: AnyObject?
  var maximumRelativeValue: AnyObject?
  convenience init()
}
@available(iOS 7.0, *)
class UIMotionEffectGroup : UIMotionEffect {
  var motionEffects: [UIMotionEffect]?
  init()
  init?(coder aDecoder: Coder)
}
