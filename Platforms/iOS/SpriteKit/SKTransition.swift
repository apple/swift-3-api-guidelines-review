
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
  class func revealWith(direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func moveIn(direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func push(direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func doorsOpenHorizontalWith(duration sec: TimeInterval) -> SKTransition
  class func doorsOpenVerticalWith(duration sec: TimeInterval) -> SKTransition
  class func doorsCloseHorizontalWith(duration sec: TimeInterval) -> SKTransition
  class func doorsCloseVerticalWith(duration sec: TimeInterval) -> SKTransition
  class func doorwayWith(duration sec: TimeInterval) -> SKTransition
  /*not inherited*/ init(ciFilter filter: CIFilter, duration sec: TimeInterval)
  var pausesIncomingScene: Bool
  var pausesOutgoingScene: Bool
  init()
  func copyWith(zone: Zone = nil) -> AnyObject
}
