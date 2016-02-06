
@available(tvOS 7.0, *)
enum SKActionTimingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Linear
  case EaseIn
  case EaseOut
  case EaseInEaseOut
}
typealias SKActionTimingFunction = (Float) -> Float
class SKAction : Object, Copying, Coding {
  var duration: TimeInterval
  var timingMode: SKActionTimingMode
  @available(tvOS 8.0, *)
  var timingFunction: SKActionTimingFunction
  var speed: CGFloat
  func reversed() -> SKAction
  init()
  func copyWith(zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension SKAction {
  class func moveBy(delta: CGVector, duration sec: TimeInterval) -> SKAction
  class func moveBy(x deltaX: CGFloat, y deltaY: CGFloat, duration sec: TimeInterval) -> SKAction
  class func moveTo(location: CGPoint, duration sec: TimeInterval) -> SKAction
  class func moveTo(x x: CGFloat, duration sec: TimeInterval) -> SKAction
  class func moveTo(y y: CGFloat, duration sec: TimeInterval) -> SKAction
  class func rotateBy(angle radians: CGFloat, duration sec: TimeInterval) -> SKAction
  class func rotateTo(angle radians: CGFloat, duration sec: TimeInterval) -> SKAction
  class func rotateTo(angle radians: CGFloat, duration sec: TimeInterval, shortestUnitArc: Bool) -> SKAction
  class func resizeBy(width width: CGFloat, height: CGFloat, duration: TimeInterval) -> SKAction
  class func resizeTo(width width: CGFloat, height: CGFloat, duration: TimeInterval) -> SKAction
  class func resizeTo(width width: CGFloat, duration: TimeInterval) -> SKAction
  class func resizeTo(height height: CGFloat, duration: TimeInterval) -> SKAction
  class func scaleBy(scale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleXBy(xScale: CGFloat, y yScale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleTo(scale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleXTo(xScale: CGFloat, y yScale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleXTo(scale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleYTo(scale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func sequence(actions: [SKAction]) -> SKAction
  class func group(actions: [SKAction]) -> SKAction
  class func repeatAction(action: SKAction, count: Int) -> SKAction
  class func repeatForever(action: SKAction) -> SKAction
  class func fadeIn(duration sec: TimeInterval) -> SKAction
  class func fadeOut(duration sec: TimeInterval) -> SKAction
  class func fadeAlphaBy(factor: CGFloat, duration sec: TimeInterval) -> SKAction
  class func fadeAlphaTo(alpha: CGFloat, duration sec: TimeInterval) -> SKAction
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
  class func animate(textures: [SKTexture], timePerFrame sec: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func animate(normalTextures textures: [SKTexture], timePerFrame sec: TimeInterval) -> SKAction
  class func animate(textures: [SKTexture], timePerFrame sec: TimeInterval, resize: Bool, restore: Bool) -> SKAction
  @available(tvOS 9.0, *)
  class func animate(normalTextures textures: [SKTexture], timePerFrame sec: TimeInterval, resize: Bool, restore: Bool) -> SKAction
  class func playSoundFileNamed(soundFile: String, waitForCompletion wait: Bool) -> SKAction
  class func colorizeWith(color: UIColor, colorBlendFactor: CGFloat, duration sec: TimeInterval) -> SKAction
  class func colorizeWith(colorBlendFactor colorBlendFactor: CGFloat, duration sec: TimeInterval) -> SKAction
  @available(tvOS 8.0, *)
  class func falloffTo(falloff: Float, duration sec: TimeInterval) -> SKAction
  @available(tvOS 8.0, *)
  class func falloffBy(falloff: Float, duration sec: TimeInterval) -> SKAction
  class func follow(path: CGPath, duration sec: TimeInterval) -> SKAction
  class func follow(path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, duration sec: TimeInterval) -> SKAction
  class func follow(path: CGPath, speed: CGFloat) -> SKAction
  class func follow(path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, speed: CGFloat) -> SKAction
  class func speedBy(speed: CGFloat, duration sec: TimeInterval) -> SKAction
  class func speedTo(speed: CGFloat, duration sec: TimeInterval) -> SKAction
  @available(tvOS 8.0, *)
  class func reachTo(position: CGPoint, rootNode root: SKNode, duration sec: TimeInterval) -> SKAction
  @available(tvOS 8.0, *)
  class func reachTo(position: CGPoint, rootNode root: SKNode, velocity: CGFloat) -> SKAction
  @available(tvOS 8.0, *)
  class func reachTo(node: SKNode, rootNode root: SKNode, duration sec: TimeInterval) -> SKAction
  @available(tvOS 8.0, *)
  class func reachTo(node: SKNode, rootNode root: SKNode, velocity: CGFloat) -> SKAction
  @available(tvOS 8.0, *)
  class func strengthTo(strength: Float, duration sec: TimeInterval) -> SKAction
  @available(tvOS 8.0, *)
  class func strengthBy(strength: Float, duration sec: TimeInterval) -> SKAction
  class func waitFor(duration sec: TimeInterval) -> SKAction
  class func waitFor(duration sec: TimeInterval, withRange durationRange: TimeInterval) -> SKAction
  class func removeFromParent() -> SKAction
  class func perform(selector: Selector, onTarget target: AnyObject) -> SKAction
  class func run(block: dispatch_block_t) -> SKAction
  class func run(block: dispatch_block_t, queue: dispatch_queue_t) -> SKAction
  class func run(action: SKAction, onChildWithName name: String) -> SKAction
  class func customActionWith(duration seconds: TimeInterval, actionBlock block: (SKNode, CGFloat) -> Void) -> SKAction
  @available(tvOS 9.0, *)
  /*not inherited*/ init?(named name: String)
  @available(tvOS 9.0, *)
  /*not inherited*/ init?(named name: String, duration sec: TimeInterval)
  @available(tvOS 9.0, *)
  /*not inherited*/ init?(named name: String, from url: URL)
  @available(tvOS 9.0, *)
  /*not inherited*/ init?(named name: String, from url: URL, duration sec: TimeInterval)
}
extension SKAction {
  @available(tvOS 9.0, *)
  class func changeChargeTo(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeChargeBy(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeMassTo(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeMassBy(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyForce(force: CGVector, duration sec: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyForce(force: CGVector, at point: CGPoint, duration sec: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyTorque(torque: CGFloat, duration sec: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyImpulse(impulse: CGVector, duration sec: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyImpulse(impulse: CGVector, at point: CGPoint, duration sec: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyAngularImpulse(impulse: CGFloat, duration sec: TimeInterval) -> SKAction
}
extension SKAction {
  @available(tvOS 9.0, *)
  class func play() -> SKAction
  @available(tvOS 9.0, *)
  class func pause() -> SKAction
  @available(tvOS 9.0, *)
  class func stop() -> SKAction
  @available(tvOS 9.0, *)
  class func changePlaybackRateTo(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changePlaybackRateBy(v: Float, duration: TimeInterval) -> SKAction
}
extension SKAction {
  @available(tvOS 9.0, *)
  class func changeVolumeTo(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeVolumeBy(v: Float, duration: TimeInterval) -> SKAction
}
