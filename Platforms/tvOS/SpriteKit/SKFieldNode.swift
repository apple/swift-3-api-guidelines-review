
@available(tvOS 8.0, *)
class SKFieldNode : SKNode {
  var region: SKRegion?
  var strength: Float
  var falloff: Float
  var minimumRadius: Float
  var isEnabled: Bool
  var isExclusive: Bool
  var categoryBitMask: UInt32
  var direction: vector_float3
  var smoothness: Float
  var animationSpeed: Float
  var texture: SKTexture?
  class func dragField() -> SKFieldNode
  class func vortexField() -> SKFieldNode
  class func radialGravityField() -> SKFieldNode
  class func linearGravityField(withVector direction: vector_float3) -> SKFieldNode
  class func velocityField(withVector direction: vector_float3) -> SKFieldNode
  class func velocityField(with velocityTexture: SKTexture) -> SKFieldNode
  class func noiseField(withSmoothness smoothness: CGFloat, animationSpeed speed: CGFloat) -> SKFieldNode
  class func turbulenceField(withSmoothness smoothness: CGFloat, animationSpeed speed: CGFloat) -> SKFieldNode
  class func springField() -> SKFieldNode
  class func electricField() -> SKFieldNode
  class func magneticField() -> SKFieldNode
  class func customField(evaluationBlock block: SKFieldForceEvaluator) -> SKFieldNode
}
typealias SKFieldForceEvaluator = (vector_float3, vector_float3, Float, Float, NSTimeInterval) -> vector_float3
