
@available(OSX 10.9, *)
enum SKTransitionDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case up
  case down
  case right
  case left
}
class SKTransition : NSObject, NSCopying {
  class func crossFade(duration sec: NSTimeInterval) -> SKTransition
  class func fade(duration sec: NSTimeInterval) -> SKTransition
  class func fade(color: NSColor, duration sec: NSTimeInterval) -> SKTransition
  class func flipHorizontal(duration sec: NSTimeInterval) -> SKTransition
  class func flipVertical(duration sec: NSTimeInterval) -> SKTransition
  class func reveal(with direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
  class func moveIn(direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
  class func push(direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
  class func doorsOpenHorizontal(withDuration sec: NSTimeInterval) -> SKTransition
  class func doorsOpenVertical(withDuration sec: NSTimeInterval) -> SKTransition
  class func doorsCloseHorizontal(withDuration sec: NSTimeInterval) -> SKTransition
  class func doorsCloseVertical(withDuration sec: NSTimeInterval) -> SKTransition
  class func doorway(withDuration sec: NSTimeInterval) -> SKTransition
  /*not inherited*/ init(ciFilter filter: CIFilter, duration sec: NSTimeInterval)
  var pausesIncomingScene: Bool
  var pausesOutgoingScene: Bool
  init()
  func copy(with zone: NSZone = nil) -> AnyObject
}
