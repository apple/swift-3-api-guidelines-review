
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
class SKAction : NSObject, NSCopying, NSCoding {
  var duration: NSTimeInterval
  var timingMode: SKActionTimingMode
  @available(OSX 10.10, *)
  var timingFunction: SKActionTimingFunction
  var speed: CGFloat
  func reversedAction() -> SKAction
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension SKAction {
  class func moveBy(delta: CGVector, duration sec: NSTimeInterval) -> SKAction
  class func moveByX(deltaX: CGFloat, y deltaY: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func moveTo(location: CGPoint, duration sec: NSTimeInterval) -> SKAction
  class func moveToX(x: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func moveToY(y: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func rotateByAngle(radians: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func rotateToAngle(radians: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func rotateToAngle(radians: CGFloat, duration sec: NSTimeInterval, shortestUnitArc: Bool) -> SKAction
  class func resizeByWidth(width: CGFloat, height: CGFloat, duration: NSTimeInterval) -> SKAction
  class func resizeToWidth(width: CGFloat, height: CGFloat, duration: NSTimeInterval) -> SKAction
  class func resizeToWidth(width: CGFloat, duration: NSTimeInterval) -> SKAction
  class func resizeToHeight(height: CGFloat, duration: NSTimeInterval) -> SKAction
  class func scaleBy(scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleXBy(xScale: CGFloat, y yScale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleTo(scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleXTo(xScale: CGFloat, y yScale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleXTo(scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleYTo(scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func sequence(actions: [SKAction]) -> SKAction
  class func group(actions: [SKAction]) -> SKAction
  class func repeatAction(action: SKAction, count: Int) -> SKAction
  class func repeatActionForever(action: SKAction) -> SKAction
  class func fadeInWithDuration(sec: NSTimeInterval) -> SKAction
  class func fadeOutWithDuration(sec: NSTimeInterval) -> SKAction
  class func fadeAlphaBy(factor: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func fadeAlphaTo(alpha: CGFloat, duration sec: NSTimeInterval) -> SKAction
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
  class func animateWithTextures(textures: [SKTexture], timePerFrame sec: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func animateWithNormalTextures(textures: [SKTexture], timePerFrame sec: NSTimeInterval) -> SKAction
  class func animateWithTextures(textures: [SKTexture], timePerFrame sec: NSTimeInterval, resize: Bool, restore: Bool) -> SKAction
  @available(OSX 10.11, *)
  class func animateWithNormalTextures(textures: [SKTexture], timePerFrame sec: NSTimeInterval, resize: Bool, restore: Bool) -> SKAction
  class func playSoundFileNamed(soundFile: String, waitForCompletion wait: Bool) -> SKAction
  class func colorizeWithColor(color: NSColor, colorBlendFactor: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func colorizeWithColorBlendFactor(colorBlendFactor: CGFloat, duration sec: NSTimeInterval) -> SKAction
  @available(OSX 10.10, *)
  class func falloffTo(falloff: Float, duration sec: NSTimeInterval) -> SKAction
  @available(OSX 10.10, *)
  class func falloffBy(falloff: Float, duration sec: NSTimeInterval) -> SKAction
  class func followPath(path: CGPath, duration sec: NSTimeInterval) -> SKAction
  class func followPath(path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, duration sec: NSTimeInterval) -> SKAction
  class func followPath(path: CGPath, speed: CGFloat) -> SKAction
  class func followPath(path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, speed: CGFloat) -> SKAction
  class func speedBy(speed: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func speedTo(speed: CGFloat, duration sec: NSTimeInterval) -> SKAction
  @available(OSX 10.10, *)
  class func reachTo(position: CGPoint, rootNode root: SKNode, duration sec: NSTimeInterval) -> SKAction
  @available(OSX 10.10, *)
  class func reachTo(position: CGPoint, rootNode root: SKNode, velocity: CGFloat) -> SKAction
  @available(OSX 10.10, *)
  class func reachToNode(node: SKNode, rootNode root: SKNode, duration sec: NSTimeInterval) -> SKAction
  @available(OSX 10.10, *)
  class func reachToNode(node: SKNode, rootNode root: SKNode, velocity: CGFloat) -> SKAction
  @available(OSX 10.10, *)
  class func strengthTo(strength: Float, duration sec: NSTimeInterval) -> SKAction
  @available(OSX 10.10, *)
  class func strengthBy(strength: Float, duration sec: NSTimeInterval) -> SKAction
  class func waitForDuration(sec: NSTimeInterval) -> SKAction
  class func waitForDuration(sec: NSTimeInterval, withRange durationRange: NSTimeInterval) -> SKAction
  class func removeFromParent() -> SKAction
  class func performSelector(selector: Selector, onTarget target: AnyObject) -> SKAction
  class func runBlock(block: dispatch_block_t) -> SKAction
  class func runBlock(block: dispatch_block_t, queue: dispatch_queue_t) -> SKAction
  class func runAction(action: SKAction, onChildWithName name: String) -> SKAction
  class func customActionWithDuration(seconds: NSTimeInterval, actionBlock block: (SKNode, CGFloat) -> Void) -> SKAction
  @available(OSX 10.11, *)
  /*not inherited*/ init?(named name: String)
  @available(OSX 10.11, *)
  /*not inherited*/ init?(named name: String, duration sec: NSTimeInterval)
  @available(OSX 10.11, *)
  /*not inherited*/ init?(named name: String, fromURL url: NSURL)
  @available(OSX 10.11, *)
  /*not inherited*/ init?(named name: String, fromURL url: NSURL, duration sec: NSTimeInterval)
}
extension SKAction {
  @available(OSX 10.11, *)
  class func changeChargeTo(v: Float, duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeChargeBy(v: Float, duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeMassTo(v: Float, duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeMassBy(v: Float, duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func applyForce(force: CGVector, duration sec: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func applyForce(force: CGVector, atPoint point: CGPoint, duration sec: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func applyTorque(torque: CGFloat, duration sec: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func applyImpulse(impulse: CGVector, duration sec: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func applyImpulse(impulse: CGVector, atPoint point: CGPoint, duration sec: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func applyAngularImpulse(impulse: CGFloat, duration sec: NSTimeInterval) -> SKAction
}
extension SKAction {
  @available(OSX 10.11, *)
  class func play() -> SKAction
  @available(OSX 10.11, *)
  class func pause() -> SKAction
  @available(OSX 10.11, *)
  class func stop() -> SKAction
  @available(OSX 10.11, *)
  class func changePlaybackRateTo(v: Float, duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changePlaybackRateBy(v: Float, duration: NSTimeInterval) -> SKAction
}
extension SKAction {
  @available(OSX 10.11, *)
  class func changeVolumeTo(v: Float, duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeVolumeBy(v: Float, duration: NSTimeInterval) -> SKAction
}
