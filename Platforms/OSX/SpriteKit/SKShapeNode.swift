
class SKShapeNode : SKNode {
  @available(OSX 10.10, *)
  convenience init(path path: CGPath)
  @available(OSX 10.10, *)
  convenience init(path path: CGPath, centered centered: Bool)
  @available(OSX 10.10, *)
  convenience init(rect rect: CGRect)
  @available(OSX 10.10, *)
  convenience init(rectOfSize size: CGSize)
  @available(OSX 10.10, *)
  convenience init(rect rect: CGRect, cornerRadius cornerRadius: CGFloat)
  @available(OSX 10.10, *)
  convenience init(rectOfSize size: CGSize, cornerRadius cornerRadius: CGFloat)
  @available(OSX 10.10, *)
  convenience init(circleOfRadius radius: CGFloat)
  @available(OSX 10.10, *)
  convenience init(ellipseInRect rect: CGRect)
  @available(OSX 10.10, *)
  convenience init(ellipseOfSize size: CGSize)
  @available(OSX 10.10, *)
  convenience init(points points: UnsafeMutablePointer<CGPoint>, count numPoints: Int)
  @available(OSX 10.10, *)
  convenience init(splinePoints points: UnsafeMutablePointer<CGPoint>, count numPoints: Int)
  var path: CGPath?
  var strokeColor: NSColor
  var fillColor: NSColor
  var blendMode: SKBlendMode
  var antialiased: Bool
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
}

extension SKShapeNode : CustomPlaygroundQuickLookable {
}
