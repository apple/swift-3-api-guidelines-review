
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
class SKKeyframeSequence : NSObject, NSCoding, NSCopying {
  init(keyframeValues values: [AnyObject], times: [NSNumber])
  convenience init(capacity numItems: Int)
  init?(coder aDecoder: NSCoder)
  func count() -> Int
  func addKeyframeValue(value: AnyObject, time: CGFloat)
  func removeLastKeyframe()
  func removeKeyframe(at index: Int)
  func setKeyframeValue(value: AnyObject, for index: Int)
  func setKeyframeTime(time: CGFloat, for index: Int)
  func setKeyframeValue(value: AnyObject, time: CGFloat, for index: Int)
  func getKeyframeValue(for index: Int) -> AnyObject
  func getKeyframeTime(for index: Int) -> CGFloat
  func sample(atTime time: CGFloat) -> AnyObject?
  var interpolationMode: SKInterpolationMode
  var repeatMode: SKRepeatMode
  convenience init()
  func encode(with aCoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
}
