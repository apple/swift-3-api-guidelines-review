
@available(OSX 10.10, *)
enum SCNPhysicsFieldScope : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case insideExtent
  case outsideExtent
}
@available(OSX 10.10, *)
class SCNPhysicsField : NSObject, NSCopying, NSSecureCoding {
  var strength: CGFloat
  var falloffExponent: CGFloat
  var minimumDistance: CGFloat
  var isActive: Bool
  var isExclusive: Bool
  var halfExtent: SCNVector3
  var usesEllipsoidalExtent: Bool
  var scope: SCNPhysicsFieldScope
  var offset: SCNVector3
  var direction: SCNVector3
  @available(OSX 10.10, *)
  var categoryBitMask: Int
  class func drag() -> SCNPhysicsField
  class func vortex() -> SCNPhysicsField
  class func radialGravity() -> SCNPhysicsField
  class func linearGravity() -> SCNPhysicsField
  class func noiseField(withSmoothness smoothness: CGFloat, animationSpeed speed: CGFloat) -> SCNPhysicsField
  class func turbulenceField(withSmoothness smoothness: CGFloat, animationSpeed speed: CGFloat) -> SCNPhysicsField
  class func spring() -> SCNPhysicsField
  class func electric() -> SCNPhysicsField
  class func magnetic() -> SCNPhysicsField
  class func customField(evaluationBlock block: SCNFieldForceEvaluator) -> SCNPhysicsField
  @available(OSX 10.10, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
typealias SCNFieldForceEvaluator = (SCNVector3, SCNVector3, Float, Float, NSTimeInterval) -> SCNVector3
