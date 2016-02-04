
@available(OSX 10.10, *)
enum SCNPhysicsFieldScope : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InsideExtent
  case OutsideExtent
}
@available(OSX 10.10, *)
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
  @available(OSX 10.10, *)
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
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
typealias SCNFieldForceEvaluator = (SCNVector3, SCNVector3, Float, Float, NSTimeInterval) -> SCNVector3
