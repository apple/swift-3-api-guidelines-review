
@available(tvOS 8.0, *)
class SKLightNode : SKNode {
  var isEnabled: Bool
  var lightColor: UIColor
  var ambientColor: UIColor
  var shadowColor: UIColor
  var falloff: CGFloat
  var categoryBitMask: UInt32
  init()
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}
