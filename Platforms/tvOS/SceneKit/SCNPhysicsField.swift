
@available(tvOS 8.0, *)
enum SCNPhysicsFieldScope : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InsideExtent
  case OutsideExtent
}
@available(tvOS 8.0, *)
class SCNPhysicsField : NSObject, NSCopying, NSSecureCoding {
  var strength: CGFloat
  var falloffExponent: CGFloat
  var minimumDistance: CGFloat
  var active: Bool
  var exclusive: Bool
  var halfExtent: SCNVector3
  var usesEllipsoidalExtent: Bool
  var scope: SCNPhysicsFieldScope
  var offset: SCNVector3
  var direction: SCNVector3
  @available(tvOS 8.0, *)
  var categoryBitMask: Int
  class func dragField() -> SCNPhysicsField
  class func vortexField() -> SCNPhysicsField
  class func radialGravityField() -> SCNPhysicsField
  class func linearGravityField() -> SCNPhysicsField
  class func noiseFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> SCNPhysicsField
  class func turbulenceFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> SCNPhysicsField
  class func springField() -> SCNPhysicsField
  class func electricField() -> SCNPhysicsField
  class func magneticField() -> SCNPhysicsField
  class func customFieldWithEvaluationBlock(block: SCNFieldForceEvaluator) -> SCNPhysicsField
  init()
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
typealias SCNFieldForceEvaluator = (SCNVector3, SCNVector3, Float, Float, NSTimeInterval) -> SCNVector3
