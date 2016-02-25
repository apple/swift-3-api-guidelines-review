
struct CAEdgeAntialiasingMask : OptionSetType {
  init(rawValue rawValue: UInt32)
  let rawValue: UInt32
  static var LayerLeftEdge: CAEdgeAntialiasingMask { get }
  static var LayerRightEdge: CAEdgeAntialiasingMask { get }
  static var LayerBottomEdge: CAEdgeAntialiasingMask { get }
  static var LayerTopEdge: CAEdgeAntialiasingMask { get }
}
class CALayer : NSObject, NSCoding, CAMediaTiming {
  init(layer layer: AnyObject)
  func presentationLayer() -> AnyObject?
  func modelLayer() -> AnyObject
  class func defaultValueForKey(_ key: String) -> AnyObject?
  class func needsDisplayForKey(_ key: String) -> Bool
  func shouldArchiveValueForKey(_ key: String) -> Bool
  var bounds: CGRect
  var position: CGPoint
  var zPosition: CGFloat
  var anchorPoint: CGPoint
  var anchorPointZ: CGFloat
  var transform: CATransform3D
  func affineTransform() -> CGAffineTransform
  func setAffineTransform(_ m: CGAffineTransform)
  var frame: CGRect
  var hidden: Bool
  var doubleSided: Bool
  var geometryFlipped: Bool
  func contentsAreFlipped() -> Bool
  var superlayer: CALayer? { get }
  func removeFromSuperlayer()
  var sublayers: [CALayer]?
  func addSublayer(_ layer: CALayer)
  func insertSublayer(_ layer: CALayer, atIndex idx: UInt32)
  func insertSublayer(_ layer: CALayer, below sibling: CALayer?)
  func insertSublayer(_ layer: CALayer, above sibling: CALayer?)
  func replaceSublayer(_ layer: CALayer, with layer2: CALayer)
  var sublayerTransform: CATransform3D
  var mask: CALayer?
  var masksToBounds: Bool
  func convertPoint(_ p: CGPoint, fromLayer l: CALayer?) -> CGPoint
  func convertPoint(_ p: CGPoint, toLayer l: CALayer?) -> CGPoint
  func convertRect(_ r: CGRect, fromLayer l: CALayer?) -> CGRect
  func convertRect(_ r: CGRect, toLayer l: CALayer?) -> CGRect
  func convertTime(_ t: CFTimeInterval, fromLayer l: CALayer?) -> CFTimeInterval
  func convertTime(_ t: CFTimeInterval, toLayer l: CALayer?) -> CFTimeInterval
  func hitTest(_ p: CGPoint) -> CALayer?
  func containsPoint(_ p: CGPoint) -> Bool
  var contents: AnyObject?
  var contentsRect: CGRect
  var contentsGravity: String
  @available(tvOS 4.0, *)
  var contentsScale: CGFloat
  var contentsCenter: CGRect
  var minificationFilter: String
  var magnificationFilter: String
  var minificationFilterBias: Float
  var opaque: Bool
  func display()
  func setNeedsDisplay()
  func setNeedsDisplayInRect(_ r: CGRect)
  func needsDisplay() -> Bool
  func displayIfNeeded()
  var needsDisplayOnBoundsChange: Bool
  @available(tvOS 6.0, *)
  var drawsAsynchronously: Bool
  func drawInContext(_ ctx: CGContext)
  func renderInContext(_ ctx: CGContext)
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
  class func defaultActionForKey(_ event: String) -> CAAction?
  func actionForKey(_ event: String) -> CAAction?
  var actions: [String : CAAction]?
  func addAnimation(_ anim: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(_ key: String)
  func animationKeys() -> [String]?
  func animationForKey(_ key: String) -> CAAnimation?
  var name: String?
  weak var delegate: @sil_weak AnyObject?
  var style: [NSObject : AnyObject]?
  func encodeWithCoder(_ aCoder: NSCoder)
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
  @available(tvOS 2.0, *)
  func runActionForKey(_ event: String, object anObject: AnyObject, arguments dict: [NSObject : AnyObject]?)
}
extension NSNull : CAAction {
  @available(tvOS 2.0, *)
  func runActionForKey(_ event: String, object anObject: AnyObject, arguments dict: [NSObject : AnyObject]?)
}
extension NSObject {
  class func displayLayer(_ layer: CALayer)
  func displayLayer(_ layer: CALayer)
  class func drawLayer(_ layer: CALayer, inContext ctx: CGContext)
  func drawLayer(_ layer: CALayer, inContext ctx: CGContext)
  class func layoutSublayersOfLayer(_ layer: CALayer)
  func layoutSublayersOfLayer(_ layer: CALayer)
  class func actionForLayer(_ layer: CALayer, forKey event: String) -> CAAction?
  func actionForLayer(_ layer: CALayer, forKey event: String) -> CAAction?
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
