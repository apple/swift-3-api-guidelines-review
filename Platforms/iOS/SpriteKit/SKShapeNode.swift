
class SKShapeNode : SKNode {
  @available(iOS 8.0, *)
  convenience init(path: CGPath)
  @available(iOS 8.0, *)
  convenience init(path: CGPath, centered: Bool)
  @available(iOS 8.0, *)
  convenience init(rect: CGRect)
  @available(iOS 8.0, *)
  convenience init(rectOf size: CGSize)
  @available(iOS 8.0, *)
  convenience init(rect: CGRect, cornerRadius: CGFloat)
  @available(iOS 8.0, *)
  convenience init(rectOf size: CGSize, cornerRadius: CGFloat)
  @available(iOS 8.0, *)
  convenience init(circleOfRadius radius: CGFloat)
  @available(iOS 8.0, *)
  convenience init(ellipseIn rect: CGRect)
  @available(iOS 8.0, *)
  convenience init(ellipseOf size: CGSize)
  @available(iOS 8.0, *)
  convenience init(points: UnsafeMutablePointer<CGPoint>, count numPoints: Int)
  @available(iOS 8.0, *)
  convenience init(splinePoints points: UnsafeMutablePointer<CGPoint>, count numPoints: Int)
  var path: CGPath?
  var strokeColor: UIColor
  var fillColor: UIColor
  var blendMode: SKBlendMode
  var isAntialiased: Bool
  var lineWidth: CGFloat
  var glowWidth: CGFloat
  var lineCap: CGLineCap
  var lineJoin: CGLineJoin
  var miterLimit: CGFloat
  var lineLength: CGFloat { get }
  @available(iOS 8.0, *)
  var fillTexture: SKTexture?
  @available(iOS 8.0, *)
  var fillShader: SKShader?
  @available(iOS 8.0, *)
  var strokeTexture: SKTexture?
  @available(iOS 8.0, *)
  var strokeShader: SKShader?
  init()
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}

extension SKShapeNode : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
