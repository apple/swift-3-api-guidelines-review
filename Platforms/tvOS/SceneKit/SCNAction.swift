
@available(tvOS 8.0, *)
enum SCNActionTimingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Linear
  case EaseIn
  case EaseOut
  case EaseInEaseOut
}
typealias SCNActionTimingFunction = (Float) -> Float
protocol SCNActionable : ObjectProtocol {
  @available(tvOS 8.0, *)
  func run(action: SCNAction)
  @available(tvOS 8.0, *)
  func run(action: SCNAction, completionHandler block: (() -> Void)? = nil)
  @available(tvOS 8.0, *)
  func run(action: SCNAction, forKey key: String?)
  @available(tvOS 8.0, *)
  func run(action: SCNAction, forKey key: String?, completionHandler block: (() -> Void)? = nil)
  @available(tvOS 8.0, *)
  var hasActions: Bool { get }
  @available(tvOS 8.0, *)
  func actionForKey(key: String) -> SCNAction?
  @available(tvOS 8.0, *)
  func removeActionForKey(key: String)
  @available(tvOS 8.0, *)
  func removeAllActions()
  @available(tvOS 8.0, *)
  var actionKeys: [String] { get }
}
@available(tvOS 8.0, *)
class SCNAction : Object, Copying, SecureCoding {
  var duration: TimeInterval
  var timingMode: SCNActionTimingMode
  var timingFunction: SCNActionTimingFunction?
  var speed: CGFloat
  func reversed() -> SCNAction
  class func moveByX(deltaX: CGFloat, y deltaY: CGFloat, z deltaZ: CGFloat, duration: TimeInterval) -> SCNAction
  class func moveBy(delta: SCNVector3, duration: TimeInterval) -> SCNAction
  class func moveTo(location: SCNVector3, duration: TimeInterval) -> SCNAction
  class func rotateByX(xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: TimeInterval) -> SCNAction
  class func rotateToX(xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: TimeInterval) -> SCNAction
  class func rotateToX(xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: TimeInterval, shortestUnitArc: Bool) -> SCNAction
  class func rotateByAngle(angle: CGFloat, aroundAxis axis: SCNVector3, duration: TimeInterval) -> SCNAction
  class func rotateToAxisAngle(axisAngle: SCNVector4, duration: TimeInterval) -> SCNAction
  class func scaleBy(scale: CGFloat, duration sec: TimeInterval) -> SCNAction
  class func scaleTo(scale: CGFloat, duration sec: TimeInterval) -> SCNAction
  class func sequence(actions: [SCNAction]) -> SCNAction
  class func group(actions: [SCNAction]) -> SCNAction
  class func repeatAction(action: SCNAction, count: Int) -> SCNAction
  class func repeatForever(action: SCNAction) -> SCNAction
  class func fadeInWithDuration(sec: TimeInterval) -> SCNAction
  class func fadeOutWithDuration(sec: TimeInterval) -> SCNAction
  class func fadeOpacityBy(factor: CGFloat, duration sec: TimeInterval) -> SCNAction
  class func fadeOpacityTo(opacity: CGFloat, duration sec: TimeInterval) -> SCNAction
  @available(tvOS 9.0, *)
  class func hide() -> SCNAction
  @available(tvOS 9.0, *)
  class func unhide() -> SCNAction
  class func waitForDuration(sec: TimeInterval) -> SCNAction
  class func waitForDuration(sec: TimeInterval, withRange durationRange: TimeInterval) -> SCNAction
  class func removeFromParentNode() -> SCNAction
  class func run(block: (SCNNode) -> Void) -> SCNAction
  class func run(block: (SCNNode) -> Void, queue: dispatch_queue_t) -> SCNAction
  class func javaScriptActionWithScript(script: String, duration seconds: TimeInterval) -> SCNAction
  class func customActionWithDuration(seconds: TimeInterval, actionBlock block: (SCNNode, CGFloat) -> Void) -> SCNAction
  @available(tvOS 9.0, *)
  class func play(source: SCNAudioSource, waitForCompletion wait: Bool) -> SCNAction
  init()
  @available(tvOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
