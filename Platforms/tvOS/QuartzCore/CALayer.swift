
struct CAEdgeAntialiasingMask : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var layerLeftEdge: CAEdgeAntialiasingMask { get }
  static var layerRightEdge: CAEdgeAntialiasingMask { get }
  static var layerBottomEdge: CAEdgeAntialiasingMask { get }
  static var layerTopEdge: CAEdgeAntialiasingMask { get }
}
class CALayer : Object, Coding, CAMediaTiming {
  init()
  init(layer: AnyObject)
  func presentationLayer() -> AnyObject?
  func modelLayer() -> AnyObject
  class func defaultValueFor(key key: String) -> AnyObject?
  class func needsDisplayFor(key key: String) -> Bool
  func shouldArchiveValueFor(key key: String) -> Bool
  var bounds: CGRect
  var position: CGPoint
  var zPosition: CGFloat
  var anchorPoint: CGPoint
  var anchorPointZ: CGFloat
  var transform: CATransform3D
  func affineTransform() -> CGAffineTransform
  func setAffineTransform(m: CGAffineTransform)
  var frame: CGRect
  var isHidden: Bool
  var isDoubleSided: Bool
  var isGeometryFlipped: Bool
  func contentsAreFlipped() -> Bool
  var superlayer: CALayer? { get }
  func removeFromSuperlayer()
  var sublayers: [CALayer]?
  func addSublayer(layer: CALayer)
  func insertSublayer(layer: CALayer, at idx: UInt32)
  func insertSublayer(layer: CALayer, below sibling: CALayer?)
  func insertSublayer(layer: CALayer, above sibling: CALayer?)
  func replaceSublayer(layer: CALayer, with layer2: CALayer)
  var sublayerTransform: CATransform3D
  var mask: CALayer?
  var masksToBounds: Bool
  func convert(p: CGPoint, from l: CALayer?) -> CGPoint
  func convert(p: CGPoint, to l: CALayer?) -> CGPoint
  func convert(r: CGRect, from l: CALayer?) -> CGRect
  func convert(r: CGRect, to l: CALayer?) -> CGRect
  func convertTime(t: CFTimeInterval, from l: CALayer?) -> CFTimeInterval
  func convertTime(t: CFTimeInterval, to l: CALayer?) -> CFTimeInterval
  func hitTest(p: CGPoint) -> CALayer?
  func contains(p: CGPoint) -> Bool
  var contents: AnyObject?
  var contentsRect: CGRect
  var contentsGravity: String
  @available(tvOS 4.0, *)
  var contentsScale: CGFloat
  var contentsCenter: CGRect
  var minificationFilter: String
  var magnificationFilter: String
  var minificationFilterBias: Float
  var isOpaque: Bool
  func display()
  func setNeedsDisplay()
  func setNeedsDisplayIn(r: CGRect)
  func needsDisplay() -> Bool
  func displayIfNeeded()
  var needsDisplayOnBoundsChange: Bool
  @available(tvOS 6.0, *)
  var drawsAsynchronously: Bool
  func drawIn(ctx: CGContext)
  func renderIn(ctx: CGContext)
  var edgeAntialiasingMask: CAEdgeAntialiasingMask
  var allowsEdgeAntialiasing: Bool
  var backgroundColor: CGColor?
  var cornerRadius: CGFloat
  var borderWidth: CGFloat
  var borderColor: CGColor?
  var opacity: Float
  var allowsGroupOpacity: Bool
  var compositingFilter: AnyObject?
  var filters: [AnyObject]?
  var backgroundFilters: [AnyObject]?
  var shouldRasterize: Bool
  var rasterizationScale: CGFloat
  var shadowColor: CGColor?
  var shadowOpacity: Float
  var shadowOffset: CGSize
  var shadowRadius: CGFloat
  var shadowPath: CGPath?
  func preferredFrameSize() -> CGSize
  func setNeedsLayout()
  func needsLayout() -> Bool
  func layoutIfNeeded()
  func layoutSublayers()
  class func defaultActionFor(key event: String) -> CAAction?
  func actionFor(key event: String) -> CAAction?
  var actions: [String : CAAction]?
  func add(anim: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationFor(key key: String)
  func animationKeys() -> [String]?
  func animationFor(key key: String) -> CAAnimation?
  var name: String?
  weak var delegate: @sil_weak AnyObject?
  var style: [Object : AnyObject]?
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  var beginTime: CFTimeInterval
  var duration: CFTimeInterval
  var speed: Float
  var timeOffset: CFTimeInterval
  var repeatCount: Float
  var repeatDuration: CFTimeInterval
  var autoreverses: Bool
  var fillMode: String
}
struct _CALayerIvars {
  var refcount: Int32
  var magic: UInt32
  var layer: UnsafeMutablePointer<Void>
}
protocol CAAction {
  @available(tvOS 2.0, *)
  func runActionFor(key event: String, object anObject: AnyObject, arguments dict: [Object : AnyObject]?)
}
extension Null : CAAction {
  @available(tvOS 2.0, *)
  func runActionFor(key event: String, object anObject: AnyObject, arguments dict: [Object : AnyObject]?)
}
extension Object {
  class func display(layer: CALayer)
  func display(layer: CALayer)
  class func draw(layer: CALayer, in ctx: CGContext)
  func draw(layer: CALayer, in ctx: CGContext)
  class func layoutSublayersOf(layer: CALayer)
  func layoutSublayersOf(layer: CALayer)
  class func action(forLayer layer: CALayer, forKey event: String) -> CAAction?
  func action(forLayer layer: CALayer, forKey event: String) -> CAAction?
}
@available(tvOS 2.0, *)
let kCAGravityCenter: String
@available(tvOS 2.0, *)
let kCAGravityTop: String
@available(tvOS 2.0, *)
let kCAGravityBottom: String
@available(tvOS 2.0, *)
let kCAGravityLeft: String
@available(tvOS 2.0, *)
let kCAGravityRight: String
@available(tvOS 2.0, *)
let kCAGravityTopLeft: String
@available(tvOS 2.0, *)
let kCAGravityTopRight: String
@available(tvOS 2.0, *)
let kCAGravityBottomLeft: String
@available(tvOS 2.0, *)
let kCAGravityBottomRight: String
@available(tvOS 2.0, *)
let kCAGravityResize: String
@available(tvOS 2.0, *)
let kCAGravityResizeAspect: String
@available(tvOS 2.0, *)
let kCAGravityResizeAspectFill: String
@available(tvOS 2.0, *)
let kCAFilterNearest: String
@available(tvOS 2.0, *)
let kCAFilterLinear: String
@available(tvOS 3.0, *)
let kCAFilterTrilinear: String
@available(tvOS 2.0, *)
let kCAOnOrderIn: String
@available(tvOS 2.0, *)
let kCAOnOrderOut: String
@available(tvOS 2.0, *)
let kCATransition: String
