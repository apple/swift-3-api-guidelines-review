
@available(tvOS 7.0, *)
enum SKActionTimingMode : Int {
  init?(rawValue: Int)
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
  @available(tvOS 8.0, *)
  var timingFunction: SKActionTimingFunction
  var speed: CGFloat
  func reversed() -> SKAction
  init()
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
  class func rotate(toAngle radians: CGFloat, duration sec: NSTimeInterval, shortestUnitArc: Bool) -> SKAction
  class func resize(byWidth width: CGFloat, height: CGFloat, duration: NSTimeInterval) -> SKAction
  class func resize(toWidth width: CGFloat, height: CGFloat, duration: NSTimeInterval) -> SKAction
  class func resize(toWidth width: CGFloat, duration: NSTimeInterval) -> SKAction
  class func resize(toHeight height: CGFloat, duration: NSTimeInterval) -> SKAction
  class func scale(by scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleX(by xScale: CGFloat, y yScale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scale(to scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleX(to xScale: CGFloat, y yScale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleX(to scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleY(to scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func sequence(actions: [SKAction]) -> SKAction
  class func group(actions: [SKAction]) -> SKAction
  class func repeatAction(action: SKAction, count: Int) -> SKAction
  class func repeatForever(action: SKAction) -> SKAction
  class func fadeIn(duration sec: NSTimeInterval) -> SKAction
  class func fadeOut(duration sec: NSTimeInterval) -> SKAction
  class func fadeAlpha(by factor: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func fadeAlpha(to alpha: CGFloat, duration sec: NSTimeInterval) -> SKAction
  @available(tvOS 8.0, *)
  class func hide() -> SKAction
  @available(tvOS 8.0, *)
  class func unhide() -> SKAction
  @available(tvOS 7.1, *)
  class func setTexture(texture: SKTexture) -> SKAction
  @available(tvOS 9.0, *)
  class func setNormalTexture(texture: SKTexture) -> SKAction
  @available(tvOS 7.1, *)
  class func setTexture(texture: SKTexture, resize: Bool) -> SKAction
  @available(tvOS 9.0, *)
  class func setNormalTexture(texture: SKTexture, resize: Bool) -> SKAction
  class func animate(textures: [SKTexture], timePerFrame sec: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func animate(normalTextures textures: [SKTexture], timePerFrame sec: NSTimeInterval) -> SKAction
  class func animate(textures: [SKTexture], timePerFrame sec: NSTimeInterval, resize: Bool, restore: Bool) -> SKAction
  @available(tvOS 9.0, *)
  class func animate(normalTextures textures: [SKTexture], timePerFrame sec: NSTimeInterval, resize: Bool, restore: Bool) -> SKAction
  class func playSoundFileNamed(soundFile: String, waitForCompletion wait: Bool) -> SKAction
  class func colorize(with color: UIColor, colorBlendFactor: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func colorize(withColorBlendFactor colorBlendFactor: CGFloat, duration sec: NSTimeInterval) -> SKAction
  @available(tvOS 8.0, *)
  class func falloff(to falloff: Float, duration sec: NSTimeInterval) -> SKAction
  @available(tvOS 8.0, *)
  class func falloff(by falloff: Float, duration sec: NSTimeInterval) -> SKAction
  class func follow(path: CGPath, duration sec: NSTimeInterval) -> SKAction
  class func follow(path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, duration sec: NSTimeInterval) -> SKAction
  class func follow(path: CGPath, speed: CGFloat) -> SKAction
  class func follow(path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, speed: CGFloat) -> SKAction
  class func speed(by speed: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func speed(to speed: CGFloat, duration sec: NSTimeInterval) -> SKAction
  @available(tvOS 8.0, *)
  class func reach(to position: CGPoint, rootNode root: SKNode, duration sec: NSTimeInterval) -> SKAction
  @available(tvOS 8.0, *)
  class func reach(to position: CGPoint, rootNode root: SKNode, velocity: CGFloat) -> SKAction
  @available(tvOS 8.0, *)
  class func reach(to node: SKNode, rootNode root: SKNode, duration sec: NSTimeInterval) -> SKAction
  @available(tvOS 8.0, *)
  class func reach(to node: SKNode, rootNode root: SKNode, velocity: CGFloat) -> SKAction
  @available(tvOS 8.0, *)
  class func strength(to strength: Float, duration sec: NSTimeInterval) -> SKAction
  @available(tvOS 8.0, *)
  class func strength(by strength: Float, duration sec: NSTimeInterval) -> SKAction
  class func wait(forDuration sec: NSTimeInterval) -> SKAction
  class func wait(forDuration sec: NSTimeInterval, withRange durationRange: NSTimeInterval) -> SKAction
  class func removeFromParent() -> SKAction
  class func perform(selector: Selector, onTarget target: AnyObject) -> SKAction
  class func run(block: dispatch_block_t) -> SKAction
  class func run(block: dispatch_block_t, queue: dispatch_queue_t) -> SKAction
  class func run(action: SKAction, onChildWithName name: String) -> SKAction
  class func customAction(withDuration seconds: NSTimeInterval, actionBlock block: (SKNode, CGFloat) -> Void) -> SKAction
  @available(tvOS 9.0, *)
  /*not inherited*/ init?(named name: String)
  @available(tvOS 9.0, *)
  /*not inherited*/ init?(named name: String, duration sec: NSTimeInterval)
  @available(tvOS 9.0, *)
  /*not inherited*/ init?(named name: String, from url: NSURL)
  @available(tvOS 9.0, *)
  /*not inherited*/ init?(named name: String, from url: NSURL, duration sec: NSTimeInterval)
}
extension SKAction {
  @available(tvOS 9.0, *)
  class func changeCharge(to v: Float, duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeCharge(by v: Float, duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeMass(to v: Float, duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeMass(by v: Float, duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyForce(force: CGVector, duration sec: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyForce(force: CGVector, at point: CGPoint, duration sec: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyTorque(torque: CGFloat, duration sec: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyImpulse(impulse: CGVector, duration sec: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyImpulse(impulse: CGVector, at point: CGPoint, duration sec: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyAngularImpulse(impulse: CGFloat, duration sec: NSTimeInterval) -> SKAction
}
extension SKAction {
  @available(tvOS 9.0, *)
  class func play() -> SKAction
  @available(tvOS 9.0, *)
  class func pause() -> SKAction
  @available(tvOS 9.0, *)
  class func stop() -> SKAction
  @available(tvOS 9.0, *)
  class func changePlaybackRate(to v: Float, duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changePlaybackRate(by v: Float, duration: NSTimeInterval) -> SKAction
}
extension SKAction {
  @available(tvOS 9.0, *)
  class func changeVolume(to v: Float, duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeVolume(by v: Float, duration: NSTimeInterval) -> SKAction
}
