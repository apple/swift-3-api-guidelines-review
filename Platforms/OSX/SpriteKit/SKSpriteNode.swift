
class SKSpriteNode : SKNode {
  convenience init(texture: SKTexture?, size: CGSize)
  convenience init(texture: SKTexture?, normalMap: SKTexture?)
  convenience init(imageNamed name: String, normalMapped generateNormalMap: Bool)
  init(texture: SKTexture?, color: NSColor, size: CGSize)
  convenience init(texture: SKTexture?)
  convenience init(imageNamed name: String)
  convenience init(color: NSColor, size: CGSize)
  init?(coder aDecoder: NSCoder)
  var texture: SKTexture?
  @available(OSX 10.10, *)
  var normalTexture: SKTexture?
  @available(OSX 10.10, *)
  var lightingBitMask: UInt32
  @available(OSX 10.10, *)
  var shadowCastBitMask: UInt32
  @available(OSX 10.10, *)
  var shadowedBitMask: UInt32
  var centerRect: CGRect
  var colorBlendFactor: CGFloat
  var color: NSColor
  var blendMode: SKBlendMode
  var anchorPoint: CGPoint
  var size: CGSize
  @available(OSX 10.10, *)
  var shader: SKShader?
  convenience init()
  convenience init?(fileNamed filename: String)
}

extension SKSpriteNode : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
