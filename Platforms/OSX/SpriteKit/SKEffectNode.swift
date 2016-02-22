
class SKEffectNode : SKNode {
  var filter: CIFilter?
  var shouldCenterFilter: Bool
  var shouldEnableEffects: Bool
  var shouldRasterize: Bool
  var blendMode: SKBlendMode
  var shader: SKShader?
  init()
  init?(coder aDecoder: NSCoder)
  convenience init?(fileNamed filename: String)
}
