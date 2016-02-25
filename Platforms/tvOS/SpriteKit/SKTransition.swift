
@available(tvOS 7.0, *)
enum SKTransitionDirection : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case up
  case down
  case right
  case left
}
class SKTransition : NSObject, NSCopying {
  class func crossFade(duration sec: NSTimeInterval) -> SKTransition
  class func fade(duration sec: NSTimeInterval) -> SKTransition
  class func fade(_ color: UIColor, duration sec: NSTimeInterval) -> SKTransition
  class func flipHorizontal(duration sec: NSTimeInterval) -> SKTransition
  class func flipVertical(duration sec: NSTimeInterval) -> SKTransition
  class func reveal(with direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
  class func moveIn(_ direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
  class func push(_ direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
  class func doorsOpenHorizontal(withDuration sec: NSTimeInterval) -> SKTransition
  class func doorsOpenVertical(withDuration sec: NSTimeInterval) -> SKTransition
  class func doorsCloseHorizontal(withDuration sec: NSTimeInterval) -> SKTransition
  class func doorsCloseVertical(withDuration sec: NSTimeInterval) -> SKTransition
  class func doorway(withDuration sec: NSTimeInterval) -> SKTransition
  /*not inherited*/ init(ciFilter filter: CIFilter, duration sec: NSTimeInterval)
  var pausesIncomingScene: Bool
  var pausesOutgoingScene: Bool
  func copy(with zone: NSZone = nil) -> AnyObject
}
