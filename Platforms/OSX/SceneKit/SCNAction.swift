
@available(OSX 10.10, *)
enum SCNActionTimingMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Linear
  case EaseIn
  case EaseOut
  case EaseInEaseOut
}
typealias SCNActionTimingFunction = (Float) -> Float
protocol SCNActionable : NSObjectProtocol {
  @available(OSX 10.10, *)
  func runAction(_ action: SCNAction)
  @available(OSX 10.10, *)
  func runAction(_ action: SCNAction, completionHandler block: (() -> Void)?)
  @available(OSX 10.10, *)
  func runAction(_ action: SCNAction, forKey key: String?)
  @available(OSX 10.10, *)
  func runAction(_ action: SCNAction, forKey key: String?, completionHandler block: (() -> Void)?)
  @available(OSX 10.10, *)
  var hasActions: Bool { get }
  @available(OSX 10.10, *)
  func actionForKey(_ key: String) -> SCNAction?
  @available(OSX 10.10, *)
  func removeActionForKey(_ key: String)
  @available(OSX 10.10, *)
  func removeAllActions()
  @available(OSX 10.10, *)
  var actionKeys: [String] { get }
}
@available(OSX 10.10, *)
class SCNAction : NSObject, NSCopying, NSSecureCoding {
  var duration: NSTimeInterval
  var timingMode: SCNActionTimingMode
  var timingFunction: SCNActionTimingFunction?
  var speed: CGFloat
  func reversedAction() -> SCNAction
  class func moveByX(_ deltaX: CGFloat, y deltaY: CGFloat, z deltaZ: CGFloat, duration duration: NSTimeInterval) -> SCNAction
  class func moveBy(_ delta: SCNVector3, duration duration: NSTimeInterval) -> SCNAction
  class func moveTo(_ location: SCNVector3, duration duration: NSTimeInterval) -> SCNAction
  class func rotateByX(_ xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration duration: NSTimeInterval) -> SCNAction
  class func rotateToX(_ xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration duration: NSTimeInterval) -> SCNAction
  class func rotateToX(_ xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration duration: NSTimeInterval, shortestUnitArc shortestUnitArc: Bool) -> SCNAction
  class func rotateByAngle(_ angle: CGFloat, aroundAxis axis: SCNVector3, duration duration: NSTimeInterval) -> SCNAction
  class func rotateToAxisAngle(_ axisAngle: SCNVector4, duration duration: NSTimeInterval) -> SCNAction
  class func scaleBy(_ scale: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func scaleTo(_ scale: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func sequence(_ actions: [SCNAction]) -> SCNAction
  class func group(_ actions: [SCNAction]) -> SCNAction
  class func repeatAction(_ action: SCNAction, count count: Int) -> SCNAction
  class func repeatActionForever(_ action: SCNAction) -> SCNAction
  class func fadeInWithDuration(_ sec: NSTimeInterval) -> SCNAction
  class func fadeOutWithDuration(_ sec: NSTimeInterval) -> SCNAction
  class func fadeOpacityBy(_ factor: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func fadeOpacityTo(_ opacity: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  @available(OSX 10.11, *)
  class func hide() -> SCNAction
  @available(OSX 10.11, *)
  class func unhide() -> SCNAction
  class func waitForDuration(_ sec: NSTimeInterval) -> SCNAction
  class func waitForDuration(_ sec: NSTimeInterval, withRange durationRange: NSTimeInterval) -> SCNAction
  class func removeFromParentNode() -> SCNAction
  class func runBlock(_ block: (SCNNode) -> Void) -> SCNAction
  class func runBlock(_ block: (SCNNode) -> Void, queue queue: dispatch_queue_t) -> SCNAction
  class func javaScriptActionWithScript(_ script: String, duration seconds: NSTimeInterval) -> SCNAction
  class func customActionWithDuration(_ seconds: NSTimeInterval, actionBlock block: (SCNNode, CGFloat) -> Void) -> SCNAction
  @available(OSX 10.11, *)
  class func playAudioSource(_ source: SCNAudioSource, waitForCompletion wait: Bool) -> SCNAction
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
