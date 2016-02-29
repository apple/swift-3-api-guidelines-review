
@available(iOS 8.0, *)
enum SCNActionTimingMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case linear
  case easeIn
  case easeOut
  case easeInEaseOut
}
typealias SCNActionTimingFunction = (Float) -> Float
protocol SCNActionable : NSObjectProtocol {
  @available(iOS 8.0, *)
  func run(_ action: SCNAction)
  @available(iOS 8.0, *)
  func run(_ action: SCNAction, completionHandler block: (() -> Void)? = nil)
  @available(iOS 8.0, *)
  func run(_ action: SCNAction, forKey key: String?)
  @available(iOS 8.0, *)
  func run(_ action: SCNAction, forKey key: String?, completionHandler block: (() -> Void)? = nil)
  @available(iOS 8.0, *)
  var hasActions: Bool { get }
  @available(iOS 8.0, *)
  func action(forKey key: String) -> SCNAction?
  @available(iOS 8.0, *)
  func removeAction(forKey key: String)
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
  func reversed() -> SCNAction
  class func moveBy(x deltaX: CGFloat, y deltaY: CGFloat, z deltaZ: CGFloat, duration duration: NSTimeInterval) -> SCNAction
  class func move(by delta: SCNVector3, duration duration: NSTimeInterval) -> SCNAction
  class func move(to location: SCNVector3, duration duration: NSTimeInterval) -> SCNAction
  class func rotateBy(x xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration duration: NSTimeInterval) -> SCNAction
  class func rotateTo(x xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration duration: NSTimeInterval) -> SCNAction
  class func rotateTo(x xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration duration: NSTimeInterval, shortestUnitArc shortestUnitArc: Bool) -> SCNAction
  class func rotate(byAngle angle: CGFloat, aroundAxis axis: SCNVector3, duration duration: NSTimeInterval) -> SCNAction
  class func rotate(toAxisAngle axisAngle: SCNVector4, duration duration: NSTimeInterval) -> SCNAction
  class func scale(by scale: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func scale(to scale: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func sequence(_ actions: [SCNAction]) -> SCNAction
  class func group(_ actions: [SCNAction]) -> SCNAction
  class func repeatAction(_ action: SCNAction, count count: Int) -> SCNAction
  class func repeatForever(_ action: SCNAction) -> SCNAction
  class func fadeIn(withDuration sec: NSTimeInterval) -> SCNAction
  class func fadeOut(withDuration sec: NSTimeInterval) -> SCNAction
  class func fadeOpacity(by factor: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func fadeOpacity(to opacity: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  @available(iOS 9.0, *)
  class func hide() -> SCNAction
  @available(iOS 9.0, *)
  class func unhide() -> SCNAction
  class func wait(forDuration sec: NSTimeInterval) -> SCNAction
  class func wait(forDuration sec: NSTimeInterval, withRange durationRange: NSTimeInterval) -> SCNAction
  class func removeFromParentNode() -> SCNAction
  class func run(_ block: (SCNNode) -> Void) -> SCNAction
  class func run(_ block: (SCNNode) -> Void, queue queue: dispatch_queue_t) -> SCNAction
  class func javaScriptAction(withScript script: String, duration seconds: NSTimeInterval) -> SCNAction
  class func customAction(withDuration seconds: NSTimeInterval, actionBlock block: (SCNNode, CGFloat) -> Void) -> SCNAction
  @available(iOS 9.0, *)
  class func play(_ source: SCNAudioSource, waitForCompletion wait: Bool) -> SCNAction
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
