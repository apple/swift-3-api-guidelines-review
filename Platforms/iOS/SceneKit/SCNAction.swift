
@available(iOS 8.0, *)
enum SCNActionTimingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Linear
  case EaseIn
  case EaseOut
  case EaseInEaseOut
}
typealias SCNActionTimingFunction = (Float) -> Float
protocol SCNActionable : NSObjectProtocol {
  @available(iOS 8.0, *)
  func runAction(action: SCNAction)
  @available(iOS 8.0, *)
  func runAction(action: SCNAction, completionHandler block: (() -> Void)?)
  @available(iOS 8.0, *)
  func runAction(action: SCNAction, forKey key: String?)
  @available(iOS 8.0, *)
  func runAction(action: SCNAction, forKey key: String?, completionHandler block: (() -> Void)?)
  @available(iOS 8.0, *)
  var hasActions: Bool { get }
  @available(iOS 8.0, *)
  func actionForKey(key: String) -> SCNAction?
  @available(iOS 8.0, *)
  func removeActionForKey(key: String)
  @available(iOS 8.0, *)
  func removeAllActions()
  @available(iOS 8.0, *)
  var actionKeys: [String] { get }
}
@available(iOS 8.0, *)
class SCNAction : NSObject, NSCopying, NSSecureCoding {
  var duration: NSTimeInterval
  var timingMode: SCNActionTimingMode
  var timingFunction: SCNActionTimingFunction?
  var speed: CGFloat
  func reversedAction() -> SCNAction
  class func moveByX(deltaX: CGFloat, y deltaY: CGFloat, z deltaZ: CGFloat, duration: NSTimeInterval) -> SCNAction
  class func moveBy(delta: SCNVector3, duration: NSTimeInterval) -> SCNAction
  class func moveTo(location: SCNVector3, duration: NSTimeInterval) -> SCNAction
  class func rotateByX(xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: NSTimeInterval) -> SCNAction
  class func rotateToX(xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: NSTimeInterval) -> SCNAction
  class func rotateToX(xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: NSTimeInterval, shortestUnitArc: Bool) -> SCNAction
  class func rotateByAngle(angle: CGFloat, aroundAxis axis: SCNVector3, duration: NSTimeInterval) -> SCNAction
  class func rotateToAxisAngle(axisAngle: SCNVector4, duration: NSTimeInterval) -> SCNAction
  class func scaleBy(scale: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func scaleTo(scale: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func sequence(actions: [SCNAction]) -> SCNAction
  class func group(actions: [SCNAction]) -> SCNAction
  class func repeatAction(action: SCNAction, count: Int) -> SCNAction
  class func repeatActionForever(action: SCNAction) -> SCNAction
  class func fadeInWithDuration(sec: NSTimeInterval) -> SCNAction
  class func fadeOutWithDuration(sec: NSTimeInterval) -> SCNAction
  class func fadeOpacityBy(factor: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func fadeOpacityTo(opacity: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  @available(iOS 9.0, *)
  class func hide() -> SCNAction
  @available(iOS 9.0, *)
  class func unhide() -> SCNAction
  class func waitForDuration(sec: NSTimeInterval) -> SCNAction
  class func waitForDuration(sec: NSTimeInterval, withRange durationRange: NSTimeInterval) -> SCNAction
  class func removeFromParentNode() -> SCNAction
  class func runBlock(block: (SCNNode) -> Void) -> SCNAction
  class func runBlock(block: (SCNNode) -> Void, queue: dispatch_queue_t) -> SCNAction
  class func javaScriptActionWithScript(script: String, duration seconds: NSTimeInterval) -> SCNAction
  class func customActionWithDuration(seconds: NSTimeInterval, actionBlock block: (SCNNode, CGFloat) -> Void) -> SCNAction
  @available(iOS 9.0, *)
  class func playAudioSource(source: SCNAudioSource, waitForCompletion wait: Bool) -> SCNAction
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
