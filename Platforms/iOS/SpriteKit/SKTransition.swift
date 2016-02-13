
@available(iOS 7.0, *)
enum SKTransitionDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case up
  case down
  case right
  case left
}
class SKTransition : Object, Copying {
  class func crossFade(duration sec: TimeInterval) -> SKTransition
  class func fade(duration sec: TimeInterval) -> SKTransition
  class func fade(color: UIColor, duration sec: TimeInterval) -> SKTransition
  class func flipHorizontal(duration sec: TimeInterval) -> SKTransition
  class func flipVertical(duration sec: TimeInterval) -> SKTransition
  class func reveal(direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func moveIn(direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func push(direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func doorsOpenHorizontal(duration sec: TimeInterval) -> SKTransition
  class func doorsOpenVertical(duration sec: TimeInterval) -> SKTransition
  class func doorsCloseHorizontal(duration sec: TimeInterval) -> SKTransition
  class func doorsCloseVertical(duration sec: TimeInterval) -> SKTransition
  class func doorway(duration sec: TimeInterval) -> SKTransition
  /*not inherited*/ init(ciFilter filter: CIFilter, duration sec: TimeInterval)
  var pausesIncomingScene: Bool
  var pausesOutgoingScene: Bool
  init()
  func copy(zone: Zone = nil) -> AnyObject
}
