
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
  func removeKeyframeAt(index: Int)
  func setKeyframeValue(value: AnyObject, forIndex index: Int)
  func setKeyframeTime(time: CGFloat, forIndex index: Int)
  func setKeyframeValue(value: AnyObject, time: CGFloat, forIndex index: Int)
  func getKeyframeValueFor(index: Int) -> AnyObject
  func getKeyframeTimeFor(index: Int) -> CGFloat
  func sampleAtTime(time: CGFloat) -> AnyObject?
  var interpolationMode: SKInterpolationMode
  var repeatMode: SKRepeatMode
  convenience init()
  func encodeWith(aCoder: Coder)
  func copyWith(zone: Zone = nil) -> AnyObject
}
