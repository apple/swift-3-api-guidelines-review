
@available(iOS 7.0, *)
enum SKActionTimingMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case linear
  case easeIn
  case easeOut
  case easeInEaseOut
}
typealias SKActionTimingFunction = (Float) -> Float
class SKAction : NSObject, NSCopying, NSCoding {
  var duration: NSTimeInterval
  var timingMode: SKActionTimingMode
  @available(iOS 8.0, *)
  var timingFunction: SKActionTimingFunction
  var speed: CGFloat
  func reversed() -> SKAction
  func copy(with zone: NSZone = nil) -> AnyObject
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension SKAction {
  class func move(by delta: CGVector, duration sec: NSTimeInterval) -> SKAction
  class func moveBy(x deltaX: CGFloat, y deltaY: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func move(to location: CGPoint, duration sec: NSTimeInterval) -> SKAction
  class func moveTo(x x: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func moveTo(y y: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func rotate(byAngle radians: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func rotate(toAngle radians: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func rotate(toAngle radians: CGFloat, duration sec: NSTimeInterval, shortestUnitArc shortestUnitArc: Bool) -> SKAction
  class func resize(byWidth width: CGFloat, height height: CGFloat, duration duration: NSTimeInterval) -> SKAction
  class func resize(toWidth width: CGFloat, height height: CGFloat, duration duration: NSTimeInterval) -> SKAction
  class func resize(toWidth width: CGFloat, duration duration: NSTimeInterval) -> SKAction
  class func resize(toHeight height: CGFloat, duration duration: NSTimeInterval) -> SKAction
  class func scale(by scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleX(by xScale: CGFloat, y yScale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scale(to scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleX(to xScale: CGFloat, y yScale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleX(to scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleY(to scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func sequence(_ actions: [SKAction]) -> SKAction
  class func group(_ actions: [SKAction]) -> SKAction
  class func repeatAction(_ action: SKAction, count count: Int) -> SKAction
  class func repeatForever(_ action: SKAction) -> SKAction
  class func fadeIn(withDuration sec: NSTimeInterval) -> SKAction
  class func fadeOut(withDuration sec: NSTimeInterval) -> SKAction
  class func fadeAlpha(by factor: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func fadeAlpha(to alpha: CGFloat, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func hide() -> SKAction
  @available(iOS 8.0, *)
  class func unhide() -> SKAction
  @available(iOS 7.1, *)
  class func setTexture(_ texture: SKTexture) -> SKAction
  @available(iOS 9.0, *)
  class func setNormalTexture(_ texture: SKTexture) -> SKAction
  @available(iOS 7.1, *)
  class func setTexture(_ texture: SKTexture, resize resize: Bool) -> SKAction
  @available(iOS 9.0, *)
  class func setNormalTexture(_ texture: SKTexture, resize resize: Bool) -> SKAction
  class func animate(with textures: [SKTexture], timePerFrame sec: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func animate(withNormalTextures textures: [SKTexture], timePerFrame sec: NSTimeInterval) -> SKAction
  class func animate(with textures: [SKTexture], timePerFrame sec: NSTimeInterval, resize resize: Bool, restore restore: Bool) -> SKAction
  @available(iOS 9.0, *)
  class func animate(withNormalTextures textures: [SKTexture], timePerFrame sec: NSTimeInterval, resize resize: Bool, restore restore: Bool) -> SKAction
  class func playSoundFileNamed(_ soundFile: String, waitForCompletion wait: Bool) -> SKAction
  class func colorize(with color: UIColor, colorBlendFactor colorBlendFactor: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func colorize(withColorBlendFactor colorBlendFactor: CGFloat, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func falloff(to falloff: Float, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func falloff(by falloff: Float, duration sec: NSTimeInterval) -> SKAction
  class func follow(_ path: CGPath, duration sec: NSTimeInterval) -> SKAction
  class func follow(_ path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, duration sec: NSTimeInterval) -> SKAction
  class func follow(_ path: CGPath, speed speed: CGFloat) -> SKAction
  class func follow(_ path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, speed speed: CGFloat) -> SKAction
  class func speed(by speed: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func speed(to speed: CGFloat, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func reach(to position: CGPoint, rootNode root: SKNode, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func reach(to position: CGPoint, rootNode root: SKNode, velocity velocity: CGFloat) -> SKAction
  @available(iOS 8.0, *)
  class func reach(to node: SKNode, rootNode root: SKNode, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func reach(to node: SKNode, rootNode root: SKNode, velocity velocity: CGFloat) -> SKAction
  @available(iOS 8.0, *)
  class func strength(to strength: Float, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func strength(by strength: Float, duration sec: NSTimeInterval) -> SKAction
  class func wait(forDuration sec: NSTimeInterval) -> SKAction
  class func wait(forDuration sec: NSTimeInterval, withRange durationRange: NSTimeInterval) -> SKAction
  class func removeFromParent() -> SKAction
  class func perform(_ selector: Selector, onTarget target: AnyObject) -> SKAction
  class func run(_ block: dispatch_block_t) -> SKAction
  class func run(_ block: dispatch_block_t, queue queue: dispatch_queue_t) -> SKAction
  class func run(_ action: SKAction, onChildWithName name: String) -> SKAction
  class func customAction(withDuration seconds: NSTimeInterval, actionBlock block: (SKNode, CGFloat) -> Void) -> SKAction
  @available(iOS 9.0, *)
  /*not inherited*/ init?(named name: String)
  @available(iOS 9.0, *)
  /*not inherited*/ init?(named name: String, duration sec: NSTimeInterval)
  @available(iOS 9.0, *)
  /*not inherited*/ init?(named name: String, from url: NSURL)
  @available(iOS 9.0, *)
  /*not inherited*/ init?(named name: String, from url: NSURL, duration sec: NSTimeInterval)
}
extension SKAction {
  @available(iOS 9.0, *)
  class func changeCharge(to v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeCharge(by v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeMass(to v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeMass(by v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func applyForce(_ force: CGVector, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func applyForce(_ force: CGVector, at point: CGPoint, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func applyTorque(_ torque: CGFloat, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func applyImpulse(_ impulse: CGVector, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func applyImpulse(_ impulse: CGVector, at point: CGPoint, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func applyAngularImpulse(_ impulse: CGFloat, duration sec: NSTimeInterval) -> SKAction
}
extension SKAction {
  @available(iOS 9.0, *)
  class func play() -> SKAction
  @available(iOS 9.0, *)
  class func pause() -> SKAction
  @available(iOS 9.0, *)
  class func stop() -> SKAction
  @available(iOS 9.0, *)
  class func changePlaybackRate(to v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changePlaybackRate(by v: Float, duration duration: NSTimeInterval) -> SKAction
}
extension SKAction {
  @available(iOS 9.0, *)
  class func changeVolume(to v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeVolume(by v: Float, duration duration: NSTimeInterval) -> SKAction
}
