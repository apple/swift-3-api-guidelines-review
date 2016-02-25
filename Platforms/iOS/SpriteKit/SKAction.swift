
@available(iOS 7.0, *)
enum SKActionTimingMode : Int {
  init?(rawValue rawValue: Int)
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
  @available(iOS 8.0, *)
  var timingFunction: SKActionTimingFunction
  var speed: CGFloat
  func reversedAction() -> SKAction
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension SKAction {
  class func moveBy(_ delta: CGVector, duration sec: NSTimeInterval) -> SKAction
  class func moveByX(_ deltaX: CGFloat, y deltaY: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func moveTo(_ location: CGPoint, duration sec: NSTimeInterval) -> SKAction
  class func moveToX(_ x: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func moveToY(_ y: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func rotateByAngle(_ radians: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func rotateToAngle(_ radians: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func rotateToAngle(_ radians: CGFloat, duration sec: NSTimeInterval, shortestUnitArc shortestUnitArc: Bool) -> SKAction
  class func resizeByWidth(_ width: CGFloat, height height: CGFloat, duration duration: NSTimeInterval) -> SKAction
  class func resizeToWidth(_ width: CGFloat, height height: CGFloat, duration duration: NSTimeInterval) -> SKAction
  class func resizeToWidth(_ width: CGFloat, duration duration: NSTimeInterval) -> SKAction
  class func resizeToHeight(_ height: CGFloat, duration duration: NSTimeInterval) -> SKAction
  class func scaleBy(_ scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleXBy(_ xScale: CGFloat, y yScale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleTo(_ scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleXTo(_ xScale: CGFloat, y yScale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleXTo(_ scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func scaleYTo(_ scale: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func sequence(_ actions: [SKAction]) -> SKAction
  class func group(_ actions: [SKAction]) -> SKAction
  class func repeatAction(_ action: SKAction, count count: Int) -> SKAction
  class func repeatActionForever(_ action: SKAction) -> SKAction
  class func fadeInWithDuration(_ sec: NSTimeInterval) -> SKAction
  class func fadeOutWithDuration(_ sec: NSTimeInterval) -> SKAction
  class func fadeAlphaBy(_ factor: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func fadeAlphaTo(_ alpha: CGFloat, duration sec: NSTimeInterval) -> SKAction
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
  class func animateWithTextures(_ textures: [SKTexture], timePerFrame sec: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func animateWithNormalTextures(_ textures: [SKTexture], timePerFrame sec: NSTimeInterval) -> SKAction
  class func animateWithTextures(_ textures: [SKTexture], timePerFrame sec: NSTimeInterval, resize resize: Bool, restore restore: Bool) -> SKAction
  @available(iOS 9.0, *)
  class func animateWithNormalTextures(_ textures: [SKTexture], timePerFrame sec: NSTimeInterval, resize resize: Bool, restore restore: Bool) -> SKAction
  class func playSoundFileNamed(_ soundFile: String, waitForCompletion wait: Bool) -> SKAction
  class func colorizeWithColor(_ color: UIColor, colorBlendFactor colorBlendFactor: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func colorizeWithColorBlendFactor(_ colorBlendFactor: CGFloat, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func falloffTo(_ falloff: Float, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func falloffBy(_ falloff: Float, duration sec: NSTimeInterval) -> SKAction
  class func followPath(_ path: CGPath, duration sec: NSTimeInterval) -> SKAction
  class func followPath(_ path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, duration sec: NSTimeInterval) -> SKAction
  class func followPath(_ path: CGPath, speed speed: CGFloat) -> SKAction
  class func followPath(_ path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, speed speed: CGFloat) -> SKAction
  class func speedBy(_ speed: CGFloat, duration sec: NSTimeInterval) -> SKAction
  class func speedTo(_ speed: CGFloat, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func reachTo(_ position: CGPoint, rootNode root: SKNode, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func reachTo(_ position: CGPoint, rootNode root: SKNode, velocity velocity: CGFloat) -> SKAction
  @available(iOS 8.0, *)
  class func reachToNode(_ node: SKNode, rootNode root: SKNode, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func reachToNode(_ node: SKNode, rootNode root: SKNode, velocity velocity: CGFloat) -> SKAction
  @available(iOS 8.0, *)
  class func strengthTo(_ strength: Float, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 8.0, *)
  class func strengthBy(_ strength: Float, duration sec: NSTimeInterval) -> SKAction
  class func waitForDuration(_ sec: NSTimeInterval) -> SKAction
  class func waitForDuration(_ sec: NSTimeInterval, withRange durationRange: NSTimeInterval) -> SKAction
  class func removeFromParent() -> SKAction
  class func performSelector(_ selector: Selector, onTarget target: AnyObject) -> SKAction
  class func runBlock(_ block: dispatch_block_t) -> SKAction
  class func runBlock(_ block: dispatch_block_t, queue queue: dispatch_queue_t) -> SKAction
  class func runAction(_ action: SKAction, onChildWithName name: String) -> SKAction
  class func customActionWithDuration(_ seconds: NSTimeInterval, actionBlock block: (SKNode, CGFloat) -> Void) -> SKAction
  @available(iOS 9.0, *)
  /*not inherited*/ init?(named name: String)
  @available(iOS 9.0, *)
  /*not inherited*/ init?(named name: String, duration sec: NSTimeInterval)
  @available(iOS 9.0, *)
  /*not inherited*/ init?(named name: String, fromURL url: NSURL)
  @available(iOS 9.0, *)
  /*not inherited*/ init?(named name: String, fromURL url: NSURL, duration sec: NSTimeInterval)
}
extension SKAction {
  @available(iOS 9.0, *)
  class func changeChargeTo(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeChargeBy(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeMassTo(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeMassBy(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func applyForce(_ force: CGVector, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func applyForce(_ force: CGVector, atPoint point: CGPoint, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func applyTorque(_ torque: CGFloat, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func applyImpulse(_ impulse: CGVector, duration sec: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func applyImpulse(_ impulse: CGVector, atPoint point: CGPoint, duration sec: NSTimeInterval) -> SKAction
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
  class func changePlaybackRateTo(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changePlaybackRateBy(_ v: Float, duration duration: NSTimeInterval) -> SKAction
}
extension SKAction {
  @available(iOS 9.0, *)
  class func changeVolumeTo(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeVolumeBy(_ v: Float, duration duration: NSTimeInterval) -> SKAction
}
