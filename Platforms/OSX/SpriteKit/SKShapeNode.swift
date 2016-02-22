
class SKShapeNode : SKNode {
  @available(OSX 10.10, *)
  convenience init(path: CGPath)
  @available(OSX 10.10, *)
  convenience init(path: CGPath, centered: Bool)
  @available(OSX 10.10, *)
  convenience init(rect: CGRect)
  @available(OSX 10.10, *)
  convenience init(rectOf size: CGSize)
  @available(OSX 10.10, *)
  convenience init(rect: CGRect, cornerRadius: CGFloat)
  @available(OSX 10.10, *)
  convenience init(rectOf size: CGSize, cornerRadius: CGFloat)
  @available(OSX 10.10, *)
  convenience init(circleOfRadius radius: CGFloat)
  @available(OSX 10.10, *)
  convenience init(ellipseIn rect: CGRect)
  @available(OSX 10.10, *)
  convenience init(ellipseOf size: CGSize)
  @available(OSX 10.10, *)
  convenience init(points: UnsafeMutablePointer<CGPoint>, count numPoints: Int)
  @available(OSX 10.10, *)
  convenience init(splinePoints points: UnsafeMutablePointer<CGPoint>, count numPoints: Int)
  var path: CGPath?
  var strokeColor: NSColor
  var fillColor: NSColor
  var blendMode: SKBlendMode
  var isAntialiased: Bool
  var lineWidth: CGFloat
  var glowWidth: CGFloat
  var lineCap: CGLineCap
  var lineJoin: CGLineJoin
  var miterLimit: CGFloat
  var lineLength: CGFloat { get }
  @available(OSX 10.10, *)
  var fillTexture: SKTexture?
  @available(OSX 10.10, *)
  var fillShader: SKShader?
  @available(OSX 10.10, *)
  var strokeTexture: SKTexture?
  @available(OSX 10.10, *)
  var strokeShader: SKShader?
  init()
  init?(coder aDecoder: NSCoder)
  convenience init?(fileNamed filename: String)
}

extension SKShapeNode : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
