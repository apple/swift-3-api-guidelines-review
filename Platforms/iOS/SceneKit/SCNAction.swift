
@available(iOS 8.0, *)
enum SCNActionTimingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case linear
  case easeIn
  case easeOut
  case easeInEaseOut
}
typealias SCNActionTimingFunction = (Float) -> Float
protocol SCNActionable : ObjectProtocol {
  @available(iOS 8.0, *)
  func run(action: SCNAction)
  @available(iOS 8.0, *)
  func run(action: SCNAction, completionHandler block: (() -> Void)? = nil)
  @available(iOS 8.0, *)
  func run(action: SCNAction, forKey key: String?)
  @available(iOS 8.0, *)
  func run(action: SCNAction, forKey key: String?, completionHandler block: (() -> Void)? = nil)
  @available(iOS 8.0, *)
  var hasActions: Bool { get }
  @available(iOS 8.0, *)
  func actionFor(key key: String) -> SCNAction?
  @available(iOS 8.0, *)
  func removeActionFor(key key: String)
  @available(iOS 8.0, *)
  func removeAllActions()
  @available(iOS 8.0, *)
  var actionKeys: [String] { get }
}
@available(iOS 8.0, *)
class SCNAction : Object, Copying, SecureCoding {
  var duration: TimeInterval
  var timingMode: SCNActionTimingMode
  var timingFunction: SCNActionTimingFunction?
  var speed: CGFloat
  func reversed() -> SCNAction
  class func moveBy(x deltaX: CGFloat, y deltaY: CGFloat, z deltaZ: CGFloat, duration: TimeInterval) -> SCNAction
  class func moveBy(delta: SCNVector3, duration: TimeInterval) -> SCNAction
  class func moveTo(location: SCNVector3, duration: TimeInterval) -> SCNAction
  class func rotateBy(x xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: TimeInterval) -> SCNAction
  class func rotateTo(x xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: TimeInterval) -> SCNAction
  class func rotateTo(x xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: TimeInterval, shortestUnitArc: Bool) -> SCNAction
  class func rotateBy(angle angle: CGFloat, aroundAxis axis: SCNVector3, duration: TimeInterval) -> SCNAction
  class func rotateTo(axisAngle axisAngle: SCNVector4, duration: TimeInterval) -> SCNAction
  class func scaleBy(scale: CGFloat, duration sec: TimeInterval) -> SCNAction
  class func scaleTo(scale: CGFloat, duration sec: TimeInterval) -> SCNAction
  class func sequence(actions: [SCNAction]) -> SCNAction
  class func group(actions: [SCNAction]) -> SCNAction
  class func repeatAction(action: SCNAction, count: Int) -> SCNAction
  class func repeatForever(action: SCNAction) -> SCNAction
  class func fadeIn(duration sec: TimeInterval) -> SCNAction
  class func fadeOut(duration sec: TimeInterval) -> SCNAction
  class func fadeOpacityBy(factor: CGFloat, duration sec: TimeInterval) -> SCNAction
  class func fadeOpacityTo(opacity: CGFloat, duration sec: TimeInterval) -> SCNAction
  @available(iOS 9.0, *)
  class func hide() -> SCNAction
  @available(iOS 9.0, *)
  class func unhide() -> SCNAction
  class func waitFor(duration sec: TimeInterval) -> SCNAction
  class func waitFor(duration sec: TimeInterval, withRange durationRange: TimeInterval) -> SCNAction
  class func removeFromParentNode() -> SCNAction
  class func run(block: (SCNNode) -> Void) -> SCNAction
  class func run(block: (SCNNode) -> Void, queue: dispatch_queue_t) -> SCNAction
  class func javaScriptActionWith(script script: String, duration seconds: TimeInterval) -> SCNAction
  class func customActionWith(duration seconds: TimeInterval, actionBlock block: (SCNNode, CGFloat) -> Void) -> SCNAction
  @available(iOS 9.0, *)
  class func play(source: SCNAudioSource, waitForCompletion wait: Bool) -> SCNAction
  init()
  @available(iOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
