
@available(iOS 7.0, *)
enum SKActionTimingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case linear
  case easeIn
  case easeOut
  case easeInEaseOut
}
typealias SKActionTimingFunction = (Float) -> Float
class SKAction : Object, Copying, Coding {
  var duration: TimeInterval
  var timingMode: SKActionTimingMode
  @available(iOS 8.0, *)
  var timingFunction: SKActionTimingFunction
  var speed: CGFloat
  func reversed() -> SKAction
  init()
  func copy(zone: Zone = nil) -> AnyObject
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension SKAction {
  class func move(by delta: CGVector, duration sec: TimeInterval) -> SKAction
  class func moveBy(x deltaX: CGFloat, y deltaY: CGFloat, duration sec: TimeInterval) -> SKAction
  class func move(to location: CGPoint, duration sec: TimeInterval) -> SKAction
  class func moveTo(x x: CGFloat, duration sec: TimeInterval) -> SKAction
  class func moveTo(y y: CGFloat, duration sec: TimeInterval) -> SKAction
  class func rotate(byAngle radians: CGFloat, duration sec: TimeInterval) -> SKAction
  class func rotate(toAngle radians: CGFloat, duration sec: TimeInterval) -> SKAction
  class func rotate(toAngle radians: CGFloat, duration sec: TimeInterval, shortestUnitArc: Bool) -> SKAction
  class func resize(byWidth width: CGFloat, height: CGFloat, duration: TimeInterval) -> SKAction
  class func resize(toWidth width: CGFloat, height: CGFloat, duration: TimeInterval) -> SKAction
  class func resize(toWidth width: CGFloat, duration: TimeInterval) -> SKAction
  class func resize(toHeight height: CGFloat, duration: TimeInterval) -> SKAction
  class func scale(by scale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleX(by xScale: CGFloat, y yScale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scale(to scale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleX(to xScale: CGFloat, y yScale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleX(to scale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleY(to scale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func sequence(actions: [SKAction]) -> SKAction
  class func group(actions: [SKAction]) -> SKAction
  class func repeatAction(action: SKAction, count: Int) -> SKAction
  class func repeatForever(action: SKAction) -> SKAction
  class func fadeIn(withDuration sec: TimeInterval) -> SKAction
  class func fadeOut(withDuration sec: TimeInterval) -> SKAction
  class func fadeAlpha(by factor: CGFloat, duration sec: TimeInterval) -> SKAction
  class func fadeAlpha(to alpha: CGFloat, duration sec: TimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func hide() -> SKAction
  @available(iOS 8.0, *)
  class func unhide() -> SKAction
  @available(iOS 7.1, *)
  class func setTexture(texture: SKTexture) -> SKAction
  @available(iOS 9.0, *)
  class func setNormalTexture(texture: SKTexture) -> SKAction
  @available(iOS 7.1, *)
  class func setTexture(texture: SKTexture, resize: Bool) -> SKAction
  @available(iOS 9.0, *)
  class func setNormalTexture(texture: SKTexture, resize: Bool) -> SKAction
  class func animate(with textures: [SKTexture], timePerFrame sec: TimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func animate(withNormalTextures textures: [SKTexture], timePerFrame sec: TimeInterval) -> SKAction
  class func animate(with textures: [SKTexture], timePerFrame sec: TimeInterval, resize: Bool, restore: Bool) -> SKAction
  @available(iOS 9.0, *)
  class func animate(withNormalTextures textures: [SKTexture], timePerFrame sec: TimeInterval, resize: Bool, restore: Bool) -> SKAction
  class func playSoundFileNamed(soundFile: String, waitForCompletion wait: Bool) -> SKAction
  class func colorize(color: UIColor, colorBlendFactor: CGFloat, duration sec: TimeInterval) -> SKAction
  class func colorize(withColorBlendFactor colorBlendFactor: CGFloat, duration sec: TimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func falloff(to falloff: Float, duration sec: TimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func falloff(by falloff: Float, duration sec: TimeInterval) -> SKAction
  class func follow(path: CGPath, duration sec: TimeInterval) -> SKAction
  class func follow(path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, duration sec: TimeInterval) -> SKAction
  class func follow(path: CGPath, speed: CGFloat) -> SKAction
  class func follow(path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, speed: CGFloat) -> SKAction
  class func speed(by speed: CGFloat, duration sec: TimeInterval) -> SKAction
  class func speed(to speed: CGFloat, duration sec: TimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func reach(to position: CGPoint, rootNode root: SKNode, duration sec: TimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func reach(to position: CGPoint, rootNode root: SKNode, velocity: CGFloat) -> SKAction
  @available(iOS 8.0, *)
  class func reach(to node: SKNode, rootNode root: SKNode, duration sec: TimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func reach(to node: SKNode, rootNode root: SKNode, velocity: CGFloat) -> SKAction
  @available(iOS 8.0, *)
  class func strength(to strength: Float, duration sec: TimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func strength(by strength: Float, duration sec: TimeInterval) -> SKAction
  class func wait(forDuration sec: TimeInterval) -> SKAction
  class func wait(forDuration sec: TimeInterval, withRange durationRange: TimeInterval) -> SKAction
  class func removeFromParent() -> SKAction
  class func perform(selector: Selector, onTarget target: AnyObject) -> SKAction
  class func run(block: dispatch_block_t) -> SKAction
  class func run(block: dispatch_block_t, queue: dispatch_queue_t) -> SKAction
  class func run(action: SKAction, onChildWithName name: String) -> SKAction
  class func customAction(withDuration seconds: TimeInterval, actionBlock block: (SKNode, CGFloat) -> Void) -> SKAction
  @available(iOS 9.0, *)
  /*not inherited*/ init?(named name: String)
  @available(iOS 9.0, *)
  /*not inherited*/ init?(named name: String, duration sec: TimeInterval)
  @available(iOS 9.0, *)
  /*not inherited*/ init?(named name: String, from url: URL)
  @available(iOS 9.0, *)
  /*not inherited*/ init?(named name: String, from url: URL, duration sec: TimeInterval)
}
extension SKAction {
  @available(iOS 9.0, *)
  class func changeCharge(to v: Float, duration: TimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeCharge(by v: Float, duration: TimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeMass(to v: Float, duration: TimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeMass(by v: Float, duration: TimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func applyForce(force: CGVector, duration sec: TimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func applyForce(force: CGVector, at point: CGPoint, duration sec: TimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func applyTorque(torque: CGFloat, duration sec: TimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func applyImpulse(impulse: CGVector, duration sec: TimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func applyImpulse(impulse: CGVector, at point: CGPoint, duration sec: TimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func applyAngularImpulse(impulse: CGFloat, duration sec: TimeInterval) -> SKAction
}
extension SKAction {
  @available(iOS 9.0, *)
  class func play() -> SKAction
  @available(iOS 9.0, *)
  class func pause() -> SKAction
  @available(iOS 9.0, *)
  class func stop() -> SKAction
  @available(iOS 9.0, *)
  class func changePlaybackRate(to v: Float, duration: TimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changePlaybackRate(by v: Float, duration: TimeInterval) -> SKAction
}
extension SKAction {
  @available(iOS 9.0, *)
  class func changeVolume(to v: Float, duration: TimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeVolume(by v: Float, duration: TimeInterval) -> SKAction
}
