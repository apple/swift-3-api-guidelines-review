
@available(iOS 8.0, *)
enum SCNPhysicsFieldScope : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case InsideExtent
  case OutsideExtent
}
@available(iOS 8.0, *)
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
  @available(iOS 8.0, *)
  var categoryBitMask: Int
  class func dragField() -> SCNPhysicsField
  class func vortexField() -> SCNPhysicsField
  class func radialGravityField() -> SCNPhysicsField
  class func linearGravityField() -> SCNPhysicsField
  class func noiseFieldWithSmoothness(_ smoothness: CGFloat, animationSpeed speed: CGFloat) -> SCNPhysicsField
  class func turbulenceFieldWithSmoothness(_ smoothness: CGFloat, animationSpeed speed: CGFloat) -> SCNPhysicsField
  class func springField() -> SCNPhysicsField
  class func electricField() -> SCNPhysicsField
  class func magneticField() -> SCNPhysicsField
  class func customFieldWithEvaluationBlock(_ block: SCNFieldForceEvaluator) -> SCNPhysicsField
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
typealias SCNFieldForceEvaluator = (SCNVector3, SCNVector3, Float, Float, NSTimeInterval) -> SCNVector3
