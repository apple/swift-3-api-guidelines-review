
@available(OSX 10.9, *)
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
  @available(OSX 10.10, *)
  var timingFunction: SKActionTimingFunction
  var speed: CGFloat
  func reversed() -> SKAction
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension SKAction {
  class func moveBy(delta: CGVector, duration sec: TimeInterval) -> SKAction
  class func moveByX(deltaX: CGFloat, y deltaY: CGFloat, duration sec: TimeInterval) -> SKAction
  class func moveTo(location: CGPoint, duration sec: TimeInterval) -> SKAction
  class func moveToX(x: CGFloat, duration sec: TimeInterval) -> SKAction
  class func moveToY(y: CGFloat, duration sec: TimeInterval) -> SKAction
  class func rotateByAngle(radians: CGFloat, duration sec: TimeInterval) -> SKAction
  class func rotateToAngle(radians: CGFloat, duration sec: TimeInterval) -> SKAction
  class func rotateToAngle(radians: CGFloat, duration sec: TimeInterval, shortestUnitArc: Bool) -> SKAction
  class func resizeByWidth(width: CGFloat, height: CGFloat, duration: TimeInterval) -> SKAction
  class func resizeToWidth(width: CGFloat, height: CGFloat, duration: TimeInterval) -> SKAction
  class func resizeToWidth(width: CGFloat, duration: TimeInterval) -> SKAction
  class func resizeToHeight(height: CGFloat, duration: TimeInterval) -> SKAction
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
  class func fadeInWithDuration(sec: TimeInterval) -> SKAction
  class func fadeOutWithDuration(sec: TimeInterval) -> SKAction
  class func fadeAlphaBy(factor: CGFloat, duration sec: TimeInterval) -> SKAction
  class func fadeAlphaTo(alpha: CGFloat, duration sec: TimeInterval) -> SKAction
  @available(OSX 10.10, *)
  class func hide() -> SKAction
  @available(OSX 10.10, *)
  class func unhide() -> SKAction
  @available(OSX 10.10, *)
  class func setTexture(texture: SKTexture) -> SKAction
  @available(OSX 10.11, *)
  class func setNormalTexture(texture: SKTexture) -> SKAction
  @available(OSX 10.10, *)
  class func setTexture(texture: SKTexture, resize: Bool) -> SKAction
  @available(OSX 10.11, *)
  class func setNormalTexture(texture: SKTexture, resize: Bool) -> SKAction
  class func animateWith(textures: [SKTexture], timePerFrame sec: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func animateWithNormalTextures(textures: [SKTexture], timePerFrame sec: TimeInterval) -> SKAction
  class func animateWith(textures: [SKTexture], timePerFrame sec: TimeInterval, resize: Bool, restore: Bool) -> SKAction
  @available(OSX 10.11, *)
  class func animateWithNormalTextures(textures: [SKTexture], timePerFrame sec: TimeInterval, resize: Bool, restore: Bool) -> SKAction
  class func playSoundFileNamed(soundFile: String, waitForCompletion wait: Bool) -> SKAction
  class func colorizeWith(color: NSColor, colorBlendFactor: CGFloat, duration sec: TimeInterval) -> SKAction
  class func colorizeWithColorBlendFactor(colorBlendFactor: CGFloat, duration sec: TimeInterval) -> SKAction
  @available(OSX 10.10, *)
  class func falloffTo(falloff: Float, duration sec: TimeInterval) -> SKAction
  @available(OSX 10.10, *)
  class func falloffBy(falloff: Float, duration sec: TimeInterval) -> SKAction
  class func follow(path: CGPath, duration sec: TimeInterval) -> SKAction
  class func follow(path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, duration sec: TimeInterval) -> SKAction
  class func follow(path: CGPath, speed: CGFloat) -> SKAction
  class func follow(path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, speed: CGFloat) -> SKAction
  class func speedBy(speed: CGFloat, duration sec: TimeInterval) -> SKAction
  class func speedTo(speed: CGFloat, duration sec: TimeInterval) -> SKAction
  @available(OSX 10.10, *)
  class func reachTo(position: CGPoint, rootNode root: SKNode, duration sec: TimeInterval) -> SKAction
  @available(OSX 10.10, *)
  class func reachTo(position: CGPoint, rootNode root: SKNode, velocity: CGFloat) -> SKAction
  @available(OSX 10.10, *)
  class func reachTo(node: SKNode, rootNode root: SKNode, duration sec: TimeInterval) -> SKAction
  @available(OSX 10.10, *)
  class func reachTo(node: SKNode, rootNode root: SKNode, velocity: CGFloat) -> SKAction
  @available(OSX 10.10, *)
  class func strengthTo(strength: Float, duration sec: TimeInterval) -> SKAction
  @available(OSX 10.10, *)
  class func strengthBy(strength: Float, duration sec: TimeInterval) -> SKAction
  class func waitForDuration(sec: TimeInterval) -> SKAction
  class func waitForDuration(sec: TimeInterval, withRange durationRange: TimeInterval) -> SKAction
  class func removeFromParent() -> SKAction
  class func perform(selector: Selector, onTarget target: AnyObject) -> SKAction
  class func run(block: dispatch_block_t) -> SKAction
  class func run(block: dispatch_block_t, queue: dispatch_queue_t) -> SKAction
  class func run(action: SKAction, onChildWithName name: String) -> SKAction
  class func customActionWithDuration(seconds: TimeInterval, actionBlock block: (SKNode, CGFloat) -> Void) -> SKAction
  @available(OSX 10.11, *)
  /*not inherited*/ init?(named name: String)
  @available(OSX 10.11, *)
  /*not inherited*/ init?(named name: String, duration sec: TimeInterval)
  @available(OSX 10.11, *)
  /*not inherited*/ init?(named name: String, from url: URL)
  @available(OSX 10.11, *)
  /*not inherited*/ init?(named name: String, from url: URL, duration sec: TimeInterval)
}
extension SKAction {
  @available(OSX 10.11, *)
  class func changeChargeTo(v: Float, duration: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeChargeBy(v: Float, duration: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeMassTo(v: Float, duration: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeMassBy(v: Float, duration: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func applyForce(force: CGVector, duration sec: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func applyForce(force: CGVector, at point: CGPoint, duration sec: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func applyTorque(torque: CGFloat, duration sec: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func applyImpulse(impulse: CGVector, duration sec: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func applyImpulse(impulse: CGVector, at point: CGPoint, duration sec: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func applyAngularImpulse(impulse: CGFloat, duration sec: TimeInterval) -> SKAction
}
extension SKAction {
  @available(OSX 10.11, *)
  class func play() -> SKAction
  @available(OSX 10.11, *)
  class func pause() -> SKAction
  @available(OSX 10.11, *)
  class func stop() -> SKAction
  @available(OSX 10.11, *)
  class func changePlaybackRateTo(v: Float, duration: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changePlaybackRateBy(v: Float, duration: TimeInterval) -> SKAction
}
extension SKAction {
  @available(OSX 10.11, *)
  class func changeVolumeTo(v: Float, duration: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeVolumeBy(v: Float, duration: TimeInterval) -> SKAction
}
