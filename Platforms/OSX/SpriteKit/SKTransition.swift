
@available(OSX 10.9, *)
enum SKTransitionDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Up
  case Down
  case Right
  case Left
}
class SKTransition : Object, Copying {
  class func crossFadeWithDuration(sec: TimeInterval) -> SKTransition
  class func fadeWithDuration(sec: TimeInterval) -> SKTransition
  class func fadeWith(color: NSColor, duration sec: TimeInterval) -> SKTransition
  class func flipHorizontalWithDuration(sec: TimeInterval) -> SKTransition
  class func flipVerticalWithDuration(sec: TimeInterval) -> SKTransition
  class func revealWith(direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func moveInWith(direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func pushWith(direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func doorsOpenHorizontalWithDuration(sec: TimeInterval) -> SKTransition
  class func doorsOpenVerticalWithDuration(sec: TimeInterval) -> SKTransition
  class func doorsCloseHorizontalWithDuration(sec: TimeInterval) -> SKTransition
  class func doorsCloseVerticalWithDuration(sec: TimeInterval) -> SKTransition
  class func doorwayWithDuration(sec: TimeInterval) -> SKTransition
  /*not inherited*/ init(ciFilter filter: CIFilter, duration sec: TimeInterval)
  var pausesIncomingScene: Bool
  var pausesOutgoingScene: Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
