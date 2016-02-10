
enum SKInterpolationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case linear
  case spline
  case step
}
enum SKRepeatMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case clamp
  case loop
}
class SKKeyframeSequence : Object, Coding, Copying {
  init(keyframeValues values: [AnyObject], times: [Number])
  convenience init(capacity numItems: Int)
  init?(coder aDecoder: Coder)
  func count() -> Int
  func addKeyframeValue(value: AnyObject, time: CGFloat)
  func removeLastKeyframe()
  func removeKeyframe(at index: Int)
  func setKeyframeValue(value: AnyObject, for index: Int)
  func setKeyframeTime(time: CGFloat, for index: Int)
  func setKeyframeValue(value: AnyObject, time: CGFloat, for index: Int)
  func getKeyframeValue(for index: Int) -> AnyObject
  func getKeyframeTime(for index: Int) -> CGFloat
  func sampleAtTime(time: CGFloat) -> AnyObject?
  var interpolationMode: SKInterpolationMode
  var repeatMode: SKRepeatMode
  convenience init()
  func encode(with aCoder: Coder)
  func copy(with zone: Zone = nil) -> AnyObject
}
