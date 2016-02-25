
@available(iOS 8.0, *)
class SKFieldNode : SKNode {
  var region: SKRegion?
  var strength: Float
  var falloff: Float
  var minimumRadius: Float
  var enabled: Bool
  var exclusive: Bool
  var categoryBitMask: UInt32
  var direction: vector_float3
  var smoothness: Float
  var animationSpeed: Float
  var texture: SKTexture?
  class func dragField() -> SKFieldNode
  class func vortexField() -> SKFieldNode
  class func radialGravityField() -> SKFieldNode
  class func linearGravityFieldWithVector(_ direction: vector_float3) -> SKFieldNode
  class func velocityFieldWithVector(_ direction: vector_float3) -> SKFieldNode
  class func velocityFieldWithTexture(_ velocityTexture: SKTexture) -> SKFieldNode
  class func noiseFieldWithSmoothness(_ smoothness: CGFloat, animationSpeed speed: CGFloat) -> SKFieldNode
  class func turbulenceFieldWithSmoothness(_ smoothness: CGFloat, animationSpeed speed: CGFloat) -> SKFieldNode
  class func springField() -> SKFieldNode
  class func electricField() -> SKFieldNode
  class func magneticField() -> SKFieldNode
  class func customFieldWithEvaluationBlock(_ block: SKFieldForceEvaluator) -> SKFieldNode
}
typealias SKFieldForceEvaluator = (vector_float3, vector_float3, Float, Float, NSTimeInterval) -> vector_float3
