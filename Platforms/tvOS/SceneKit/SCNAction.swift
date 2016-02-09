
@available(tvOS 8.0, *)
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
  func action(forKey key: String) -> SCNAction?
  @available(tvOS 8.0, *)
  func removeAction(forKey key: String)
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
  class func move(byx deltaX: CGFloat, y deltaY: CGFloat, z deltaZ: CGFloat, duration: TimeInterval) -> SCNAction
  class func move(by delta: SCNVector3, duration: TimeInterval) -> SCNAction
  class func move(to location: SCNVector3, duration: TimeInterval) -> SCNAction
  class func rotate(byx xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: TimeInterval) -> SCNAction
  class func rotate(tox xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: TimeInterval) -> SCNAction
  class func rotate(tox xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: TimeInterval, shortestUnitArc: Bool) -> SCNAction
  class func rotate(byAngle angle: CGFloat, aroundAxis axis: SCNVector3, duration: TimeInterval) -> SCNAction
  class func rotate(toAxisAngle axisAngle: SCNVector4, duration: TimeInterval) -> SCNAction
  class func scale(by scale: CGFloat, duration sec: TimeInterval) -> SCNAction
  class func scale(to scale: CGFloat, duration sec: TimeInterval) -> SCNAction
  class func sequence(actions: [SCNAction]) -> SCNAction
  class func group(actions: [SCNAction]) -> SCNAction
  class func repeatAction(action: SCNAction, count: Int) -> SCNAction
  class func repeatForever(action: SCNAction) -> SCNAction
  class func fadeIn(duration sec: TimeInterval) -> SCNAction
  class func fadeOut(withDuration sec: TimeInterval) -> SCNAction
  class func fadeOpacity(by factor: CGFloat, duration sec: TimeInterval) -> SCNAction
  class func fadeOpacity(to opacity: CGFloat, duration sec: TimeInterval) -> SCNAction
  @available(tvOS 9.0, *)
  class func hide() -> SCNAction
  @available(tvOS 9.0, *)
  class func unhide() -> SCNAction
  class func wait(forDuration sec: TimeInterval) -> SCNAction
  class func wait(forDuration sec: TimeInterval, withRange durationRange: TimeInterval) -> SCNAction
  class func removeFromParentNode() -> SCNAction
  class func run(block: (SCNNode) -> Void) -> SCNAction
  class func run(block: (SCNNode) -> Void, queue: dispatch_queue_t) -> SCNAction
  class func javaScriptAction(withScript script: String, duration seconds: TimeInterval) -> SCNAction
  class func customAction(withDuration seconds: TimeInterval, actionBlock block: (SCNNode, CGFloat) -> Void) -> SCNAction
  @available(tvOS 9.0, *)
  class func play(source: SCNAudioSource, waitForCompletion wait: Bool) -> SCNAction
  init()
  @available(tvOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
