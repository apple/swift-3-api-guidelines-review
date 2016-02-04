
struct CAEdgeAntialiasingMask : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var LayerLeftEdge: CAEdgeAntialiasingMask { get }
  static var LayerRightEdge: CAEdgeAntialiasingMask { get }
  static var LayerBottomEdge: CAEdgeAntialiasingMask { get }
  static var LayerTopEdge: CAEdgeAntialiasingMask { get }
}
class CALayer : NSObject, NSCoding, CAMediaTiming {
  init()
  init(layer: AnyObject)
  func presentationLayer() -> AnyObject?
  func modelLayer() -> AnyObject
  class func defaultValueForKey(key: String) -> AnyObject?
  class func needsDisplayForKey(key: String) -> Bool
  func shouldArchiveValueForKey(key: String) -> Bool
  var bounds: CGRect
  var position: CGPoint
  var zPosition: CGFloat
  var anchorPoint: CGPoint
  var anchorPointZ: CGFloat
  var transform: CATransform3D
  func affineTransform() -> CGAffineTransform
  func setAffineTransform(m: CGAffineTransform)
  var frame: CGRect
  var hidden: Bool
  var doubleSided: Bool
  var geometryFlipped: Bool
  func contentsAreFlipped() -> Bool
  var superlayer: CALayer? { get }
  func removeFromSuperlayer()
  var sublayers: [CALayer]?
  func addSublayer(layer: CALayer)
  func insertSublayer(layer: CALayer, atIndex idx: UInt32)
  func insertSublayer(layer: CALayer, below sibling: CALayer?)
  func insertSublayer(layer: CALayer, above sibling: CALayer?)
  func replaceSublayer(layer: CALayer, with layer2: CALayer)
  var sublayerTransform: CATransform3D
  var mask: CALayer?
  var masksToBounds: Bool
  func convertPoint(p: CGPoint, fromLayer l: CALayer?) -> CGPoint
  func convertPoint(p: CGPoint, toLayer l: CALayer?) -> CGPoint
  func convertRect(r: CGRect, fromLayer l: CALayer?) -> CGRect
  func convertRect(r: CGRect, toLayer l: CALayer?) -> CGRect
  func convertTime(t: CFTimeInterval, fromLayer l: CALayer?) -> CFTimeInterval
  func convertTime(t: CFTimeInterval, toLayer l: CALayer?) -> CFTimeInterval
  func hitTest(p: CGPoint) -> CALayer?
  func containsPoint(p: CGPoint) -> Bool
  var contents: AnyObject?
  var contentsRect: CGRect
  var contentsGravity: String
  @available(iOS 4.0, *)
  var contentsScale: CGFloat
  var contentsCenter: CGRect
  var minificationFilter: String
  var magnificationFilter: String
  var minificationFilterBias: Float
  var opaque: Bool
  func display()
  func setNeedsDisplay()
  func setNeedsDisplayInRect(r: CGRect)
  func needsDisplay() -> Bool
  func displayIfNeeded()
  var needsDisplayOnBoundsChange: Bool
  @available(iOS 6.0, *)
  var drawsAsynchronously: Bool
  func drawInContext(ctx: CGContext)
  func renderInContext(ctx: CGContext)
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
  class func defaultActionForKey(event: String) -> CAAction?
  func actionForKey(event: String) -> CAAction?
  var actions: [String : CAAction]?
  func addAnimation(anim: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(key: String)
  func animationKeys() -> [String]?
  func animationForKey(key: String) -> CAAnimation?
  var name: String?
  weak var delegate: @sil_weak AnyObject?
  var style: [NSObject : AnyObject]?
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
  @available(iOS 2.0, *)
  func runActionForKey(event: String, object anObject: AnyObject, arguments dict: [NSObject : AnyObject]?)
}
extension NSNull : CAAction {
  @available(iOS 2.0, *)
  func runActionForKey(event: String, object anObject: AnyObject, arguments dict: [NSObject : AnyObject]?)
}
extension NSObject {
  class func displayLayer(layer: CALayer)
  func displayLayer(layer: CALayer)
  class func drawLayer(layer: CALayer, inContext ctx: CGContext)
  func drawLayer(layer: CALayer, inContext ctx: CGContext)
  class func layoutSublayersOfLayer(layer: CALayer)
  func layoutSublayersOfLayer(layer: CALayer)
  class func actionForLayer(layer: CALayer, forKey event: String) -> CAAction?
  func actionForLayer(layer: CALayer, forKey event: String) -> CAAction?
}
@available(iOS 2.0, *)
let kCAGravityCenter: String
@available(iOS 2.0, *)
let kCAGravityTop: String
@available(iOS 2.0, *)
let kCAGravityBottom: String
@available(iOS 2.0, *)
let kCAGravityLeft: String
@available(iOS 2.0, *)
let kCAGravityRight: String
@available(iOS 2.0, *)
let kCAGravityTopLeft: String
@available(iOS 2.0, *)
let kCAGravityTopRight: String
@available(iOS 2.0, *)
let kCAGravityBottomLeft: String
@available(iOS 2.0, *)
let kCAGravityBottomRight: String
@available(iOS 2.0, *)
let kCAGravityResize: String
@available(iOS 2.0, *)
let kCAGravityResizeAspect: String
@available(iOS 2.0, *)
let kCAGravityResizeAspectFill: String
@available(iOS 2.0, *)
let kCAFilterNearest: String
@available(iOS 2.0, *)
let kCAFilterLinear: String
@available(iOS 3.0, *)
let kCAFilterTrilinear: String
@available(iOS 2.0, *)
let kCAOnOrderIn: String
@available(iOS 2.0, *)
let kCAOnOrderOut: String
@available(iOS 2.0, *)
let kCATransition: String
