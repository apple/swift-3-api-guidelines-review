
@available(iOS 8.0, *)
let SCNParticlePropertyPosition: String
@available(iOS 8.0, *)
let SCNParticlePropertyAngle: String
@available(iOS 8.0, *)
let SCNParticlePropertyRotationAxis: String
@available(iOS 8.0, *)
let SCNParticlePropertyVelocity: String
@available(iOS 8.0, *)
let SCNParticlePropertyAngularVelocity: String
@available(iOS 8.0, *)
let SCNParticlePropertyLife: String
@available(iOS 8.0, *)
let SCNParticlePropertyColor: String
@available(iOS 8.0, *)
let SCNParticlePropertyOpacity: String
@available(iOS 8.0, *)
let SCNParticlePropertySize: String
@available(iOS 8.0, *)
let SCNParticlePropertyFrame: String
@available(iOS 8.0, *)
let SCNParticlePropertyFrameRate: String
@available(iOS 8.0, *)
let SCNParticlePropertyBounce: String
@available(iOS 8.0, *)
let SCNParticlePropertyCharge: String
@available(iOS 8.0, *)
let SCNParticlePropertyFriction: String
@available(iOS 8.0, *)
let SCNParticlePropertyContactPoint: String
@available(iOS 8.0, *)
let SCNParticlePropertyContactNormal: String
typealias SCNParticleEventBlock = (UnsafeMutablePointer<UnsafeMutablePointer<Void>>, UnsafeMutablePointer<Int>, UnsafeMutablePointer<UInt32>, Int) -> Void
typealias SCNParticleModifierBlock = (UnsafeMutablePointer<UnsafeMutablePointer<Void>>, UnsafeMutablePointer<Int>, Int, Int, Float) -> Void
@available(iOS 8.0, *)
enum SCNParticleSortingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case ProjectedDepth
  case Distance
  case OldestFirst
  case YoungestFirst
}
@available(iOS 8.0, *)
enum SCNParticleBlendMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Additive
  case Subtract
  case Multiply
  case Screen
  case Alpha
  case Replace
}
@available(iOS 8.0, *)
enum SCNParticleOrientationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case BillboardScreenAligned
  case BillboardViewAligned
  case Free
  case BillboardYAligned
}
@available(iOS 8.0, *)
enum SCNParticleBirthLocation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Surface
  case Volume
  case Vertex
}
@available(iOS 8.0, *)
enum SCNParticleBirthDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Constant
  case SurfaceNormal
  case Random
}
@available(iOS 8.0, *)
enum SCNParticleImageSequenceAnimationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Repeat
  case Clamp
  case AutoReverse
}
@available(iOS 8.0, *)
enum SCNParticleInputMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case OverLife
  case OverDistance
  case OverOtherProperty
}
@available(iOS 8.0, *)
enum SCNParticleModifierStage : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case PreDynamics
  case PostDynamics
  case PreCollision
  case PostCollision
}
@available(iOS 8.0, *)
enum SCNParticleEvent : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Birth
  case Death
  case Collision
}
@available(iOS 8.0, *)
class SCNParticlePropertyController : NSObject, NSSecureCoding, NSCopying {
  convenience init(animation: CAAnimation)
  var animation: CAAnimation
  var inputMode: SCNParticleInputMode
  var inputScale: CGFloat
  var inputBias: CGFloat
  weak var inputOrigin: @sil_weak SCNNode?
  var inputProperty: String?
  init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 8.0, *)
class SCNParticleSystem : NSObject, NSCopying, NSSecureCoding, SCNAnimatable {
  convenience init?(named name: String, inDirectory directory: String?)
  var emissionDuration: CGFloat
  var emissionDurationVariation: CGFloat
  var idleDuration: CGFloat
  var idleDurationVariation: CGFloat
  var loops: Bool
  var birthRate: CGFloat
  var birthRateVariation: CGFloat
  var warmupDuration: CGFloat
  var emitterShape: SCNGeometry?
  var birthLocation: SCNParticleBirthLocation
  var birthDirection: SCNParticleBirthDirection
  var spreadingAngle: CGFloat
  var emittingDirection: SCNVector3
  var acceleration: SCNVector3
  var local: Bool
  var particleAngle: CGFloat
  var particleAngleVariation: CGFloat
  var particleVelocity: CGFloat
  var particleVelocityVariation: CGFloat
  var particleAngularVelocity: CGFloat
  var particleAngularVelocityVariation: CGFloat
  var particleLifeSpan: CGFloat
  var particleLifeSpanVariation: CGFloat
  var systemSpawnedOnDying: SCNParticleSystem?
  var systemSpawnedOnCollision: SCNParticleSystem?
  var systemSpawnedOnLiving: SCNParticleSystem?
  var particleImage: AnyObject?
  var imageSequenceColumnCount: Int
  var imageSequenceRowCount: Int
  var imageSequenceInitialFrame: CGFloat
  var imageSequenceInitialFrameVariation: CGFloat
  var imageSequenceFrameRate: CGFloat
  var imageSequenceFrameRateVariation: CGFloat
  var imageSequenceAnimationMode: SCNParticleImageSequenceAnimationMode
  var particleColor: UIColor
  var particleColorVariation: SCNVector4
  var particleSize: CGFloat
  var particleSizeVariation: CGFloat
  var blendMode: SCNParticleBlendMode
  var blackPassEnabled: Bool
  var orientationMode: SCNParticleOrientationMode
  var sortingMode: SCNParticleSortingMode
  var lightingEnabled: Bool
  var affectedByGravity: Bool
  var affectedByPhysicsFields: Bool
  var particleDiesOnCollision: Bool
  var colliderNodes: [SCNNode]?
  var particleMass: CGFloat
  var particleMassVariation: CGFloat
  var particleBounce: CGFloat
  var particleBounceVariation: CGFloat
  var particleFriction: CGFloat
  var particleFrictionVariation: CGFloat
  var particleCharge: CGFloat
  var particleChargeVariation: CGFloat
  var dampingFactor: CGFloat
  var speedFactor: CGFloat
  var stretchFactor: CGFloat
  var fresnelExponent: CGFloat
  var propertyControllers: [String : SCNParticlePropertyController]?
  func reset()
  func handleEvent(event: SCNParticleEvent, forProperties properties: [String], withBlock block: SCNParticleEventBlock)
  func addModifierForProperties(properties: [String], atStage stage: SCNParticleModifierStage, withBlock block: SCNParticleModifierBlock)
  func removeModifiersOfStage(stage: SCNParticleModifierStage)
  func removeAllModifiers()
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)
  @available(iOS 8.0, *)
  func removeAllAnimations()
  @available(iOS 8.0, *)
  func removeAnimationForKey(key: String)
  @available(iOS 8.0, *)
  var animationKeys: [String] { get }
  @available(iOS 8.0, *)
  func animationForKey(key: String) -> CAAnimation?
  @available(iOS 8.0, *)
  func pauseAnimationForKey(key: String)
  @available(iOS 8.0, *)
  func resumeAnimationForKey(key: String)
  @available(iOS 8.0, *)
  func isAnimationForKeyPaused(key: String) -> Bool
  @available(iOS 8.0, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
}
extension SCNNode {
  @available(iOS 8.0, *)
  func addParticleSystem(system: SCNParticleSystem)
  @available(iOS 8.0, *)
  func removeAllParticleSystems()
  @available(iOS 8.0, *)
  func removeParticleSystem(system: SCNParticleSystem)
  @available(iOS 8.0, *)
  var particleSystems: [SCNParticleSystem]? { get }
}
extension SCNScene {
  @available(iOS 8.0, *)
  func addParticleSystem(system: SCNParticleSystem, withTransform transform: SCNMatrix4)
  @available(iOS 8.0, *)
  func removeAllParticleSystems()
  @available(iOS 8.0, *)
  func removeParticleSystem(system: SCNParticleSystem)
  @available(iOS 8.0, *)
  var particleSystems: [SCNParticleSystem]? { get }
}
