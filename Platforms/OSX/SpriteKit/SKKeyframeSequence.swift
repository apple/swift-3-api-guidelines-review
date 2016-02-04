
enum SKInterpolationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Linear
  case Spline
  case Step
}
enum SKRepeatMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Clamp
  case Loop
}
class SKKeyframeSequence : NSObject, NSCoding, NSCopying {
  init(keyframeValues values: [AnyObject], times: [NSNumber])
  convenience init(capacity numItems: Int)
  init?(coder aDecoder: NSCoder)
  func count() -> Int
  func addKeyframeValue(value: AnyObject, time: CGFloat)
  func removeLastKeyframe()
  func removeKeyframeAtIndex(index: Int)
  func setKeyframeValue(value: AnyObject, forIndex index: Int)
  func setKeyframeTime(time: CGFloat, forIndex index: Int)
  func setKeyframeValue(value: AnyObject, time: CGFloat, forIndex index: Int)
  func getKeyframeValueForIndex(index: Int) -> AnyObject
  func getKeyframeTimeForIndex(index: Int) -> CGFloat
  func sampleAtTime(time: CGFloat) -> AnyObject?
  var interpolationMode: SKInterpolationMode
  var repeatMode: SKRepeatMode
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
