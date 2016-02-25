
enum SKInterpolationMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Linear
  case Spline
  case Step
}
enum SKRepeatMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Clamp
  case Loop
}
class SKKeyframeSequence : NSObject, NSCoding, NSCopying {
  init(keyframeValues values: [AnyObject], times times: [NSNumber])
  convenience init(capacity numItems: Int)
  init?(coder aDecoder: NSCoder)
  func count() -> Int
  func addKeyframeValue(_ value: AnyObject, time time: CGFloat)
  func removeLastKeyframe()
  func removeKeyframeAtIndex(_ index: Int)
  func setKeyframeValue(_ value: AnyObject, forIndex index: Int)
  func setKeyframeTime(_ time: CGFloat, forIndex index: Int)
  func setKeyframeValue(_ value: AnyObject, time time: CGFloat, forIndex index: Int)
  func getKeyframeValueForIndex(_ index: Int) -> AnyObject
  func getKeyframeTimeForIndex(_ index: Int) -> CGFloat
  func sampleAtTime(_ time: CGFloat) -> AnyObject?
  var interpolationMode: SKInterpolationMode
  var repeatMode: SKRepeatMode
  func encodeWithCoder(_ aCoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
