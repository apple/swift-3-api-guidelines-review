
@available(iOS 7.0, *)
enum SKTransitionDirection : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case up
  case down
  case right
  case left
}
class SKTransition : NSObject, NSCopying {
  class func crossFade(withDuration sec: NSTimeInterval) -> SKTransition
  class func fade(withDuration sec: NSTimeInterval) -> SKTransition
  class func fade(with color: UIColor, duration sec: NSTimeInterval) -> SKTransition
  class func flipHorizontal(withDuration sec: NSTimeInterval) -> SKTransition
  class func flipVertical(withDuration sec: NSTimeInterval) -> SKTransition
  class func reveal(with direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
  class func moveIn(with direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
  class func push(with direction: SKTransitionDirection, duration sec: NSTimeInterval) -> SKTransition
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
