
@available(tvOS 7.0, *)
class UIMotionEffect : Object, Copying, Coding {
  init()
  init?(coder aDecoder: Coder)
  func keyPathsAndRelativeValues(forViewerOffset viewerOffset: UIOffset) -> [String : AnyObject]?
  @available(tvOS 7.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(tvOS 7.0, *)
  func encode(withCoder aCoder: Coder)
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
  init?(coder aDecoder: Coder)
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
  init?(coder aDecoder: Coder)
}
