
@available(OSX 10.9, *)
enum SKTransitionDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Up
  case Down
  case Right
  case Left
}
class SKTransition : NSObject, NSCopying {
  class func crossFadeWithDuration(sec: NSTimeInterval) -> SKTransition
  class func fadeWithDuration(sec: NSTimeInterval) -> SKTransition
  class func fadeWithColor(color: NSColor, duration sec: NSTimeInterval) -> SKTransition
  class func flipHorizontalWithDuration(sec: NSTimeInterval) -> SKTransition
  class func flipVerticalWithDuration(sec: NSTimeInterval) -> SKTransition
  class func revealWithDirection(direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
  class func moveInWithDirection(direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
  class func pushWithDirection(direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
  class func doorsOpenHorizontalWithDuration(sec: NSTimeInterval) -> SKTransition
  class func doorsOpenVerticalWithDuration(sec: NSTimeInterval) -> SKTransition
  class func doorsCloseHorizontalWithDuration(sec: NSTimeInterval) -> SKTransition
  class func doorsCloseVerticalWithDuration(sec: NSTimeInterval) -> SKTransition
  class func doorwayWithDuration(sec: NSTimeInterval) -> SKTransition
  /*not inherited*/ init(CIFilter filter: CIFilter, duration sec: NSTimeInterval)
  var pausesIncomingScene: Bool
  var pausesOutgoingScene: Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
