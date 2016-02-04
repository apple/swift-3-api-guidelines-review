
@available(tvOS 8.0, *)
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
  class func linearGravityFieldWithVector(direction: vector_float3) -> SKFieldNode
  class func velocityFieldWithVector(direction: vector_float3) -> SKFieldNode
  class func velocityFieldWithTexture(velocityTexture: SKTexture) -> SKFieldNode
  class func noiseFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> SKFieldNode
  class func turbulenceFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> SKFieldNode
  class func springField() -> SKFieldNode
  class func electricField() -> SKFieldNode
  class func magneticField() -> SKFieldNode
  class func customFieldWithEvaluationBlock(block: SKFieldForceEvaluator) -> SKFieldNode
  init()
  init?(coder aDecoder: NSCoder)
  convenience init?(fileNamed filename: String)
}
typealias SKFieldForceEvaluator = (vector_float3, vector_float3, Float, Float, NSTimeInterval) -> vector_float3
