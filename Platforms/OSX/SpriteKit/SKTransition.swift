
@available(OSX 10.9, *)
enum SKTransitionDirection : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Up
  case Down
  case Right
  case Left
}
class SKTransition : NSObject, NSCopying {
  class func crossFadeWithDuration(_ sec: NSTimeInterval) -> SKTransition
  class func fadeWithDuration(_ sec: NSTimeInterval) -> SKTransition
  class func fadeWithColor(_ color: NSColor, duration sec: NSTimeInterval) -> SKTransition
  class func flipHorizontalWithDuration(_ sec: NSTimeInterval) -> SKTransition
  class func flipVerticalWithDuration(_ sec: NSTimeInterval) -> SKTransition
  class func revealWithDirection(_ direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
  class func moveInWithDirection(_ direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
  class func pushWithDirection(_ direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
  class func doorsOpenHorizontalWithDuration(_ sec: NSTimeInterval) -> SKTransition
  class func doorsOpenVerticalWithDuration(_ sec: NSTimeInterval) -> SKTransition
  class func doorsCloseHorizontalWithDuration(_ sec: NSTimeInterval) -> SKTransition
  class func doorsCloseVerticalWithDuration(_ sec: NSTimeInterval) -> SKTransition
  class func doorwayWithDuration(_ sec: NSTimeInterval) -> SKTransition
  /*not inherited*/ init(CIFilter filter: CIFilter, duration sec: NSTimeInterval)
  var pausesIncomingScene: Bool
  var pausesOutgoingScene: Bool
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
