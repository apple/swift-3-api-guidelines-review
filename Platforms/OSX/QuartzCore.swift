

/** The base animation class. **/
class CAAnimation : NSObject, NSCoding, NSCopying, CAMediaTiming, CAAction {
  class func defaultValueForKey(key: String) -> AnyObject?
  func shouldArchiveValueForKey(key: String) -> Bool
  var timingFunction: CAMediaTimingFunction?
  var delegate: AnyObject?
  var isRemovedOnCompletion: Bool
  init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
  var beginTime: CFTimeInterval
  var duration: CFTimeInterval
  var speed: Float
  var timeOffset: CFTimeInterval
  var repeatCount: Float
  var repeatDuration: CFTimeInterval
  var autoreverses: Bool
  var fillMode: String
  @available(OSX 10.0, *)
  func runActionForKey(event: String, object anObject: AnyObject, arguments dict: [NSObject : AnyObject]?)
}
extension NSObject {
  class func animationDidStart(anim: CAAnimation)
  func animationDidStart(anim: CAAnimation)
  class func animationDidStop(anim: CAAnimation, finished flag: Bool)
  func animationDidStop(anim: CAAnimation, finished flag: Bool)
}

/** Subclass for property-based animations. **/
class CAPropertyAnimation : CAAnimation {
  convenience init(keyPath path: String?)
  var keyPath: String?
  var isAdditive: Bool
  var isCumulative: Bool
  var valueFunction: CAValueFunction?
  init()
  init?(coder aDecoder: NSCoder)
}

/** Subclass for basic (single-keyframe) animations. **/
class CABasicAnimation : CAPropertyAnimation {
  var fromValue: AnyObject?
  var toValue: AnyObject?
  var byValue: AnyObject?
  convenience init(keyPath path: String?)
  init()
  init?(coder aDecoder: NSCoder)
}

/** General keyframe animation class. **/
class CAKeyframeAnimation : CAPropertyAnimation {
  var values: [AnyObject]?
  var path: CGPath?
  var keyTimes: [NSNumber]?
  var timingFunctions: [CAMediaTimingFunction]?
  var calculationMode: String
  var tensionValues: [NSNumber]?
  var continuityValues: [NSNumber]?
  var biasValues: [NSNumber]?
  var rotationMode: String?
  convenience init(keyPath path: String?)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.5, *)
let kCAAnimationLinear: String
@available(OSX 10.5, *)
let kCAAnimationDiscrete: String
@available(OSX 10.5, *)
let kCAAnimationPaced: String
@available(OSX 10.7, *)
let kCAAnimationCubic: String
@available(OSX 10.7, *)
let kCAAnimationCubicPaced: String
@available(OSX 10.5, *)
let kCAAnimationRotateAuto: String
@available(OSX 10.5, *)
let kCAAnimationRotateAutoReverse: String

/** Subclass for mass-spring animations. */
class CASpringAnimation : CABasicAnimation {
  var mass: CGFloat
  var stiffness: CGFloat
  var damping: CGFloat
  var initialVelocity: CGFloat
  var settlingDuration: CFTimeInterval { get }
  convenience init(keyPath path: String?)
  init()
  init?(coder aDecoder: NSCoder)
}

/** Transition animation subclass. **/
class CATransition : CAAnimation {
  var type: String
  var subtype: String?
  var startProgress: Float
  var endProgress: Float
  var filter: AnyObject?
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.5, *)
let kCATransitionFade: String
@available(OSX 10.5, *)
let kCATransitionMoveIn: String
@available(OSX 10.5, *)
let kCATransitionPush: String
@available(OSX 10.5, *)
let kCATransitionReveal: String
@available(OSX 10.5, *)
let kCATransitionFromRight: String
@available(OSX 10.5, *)
let kCATransitionFromLeft: String
@available(OSX 10.5, *)
let kCATransitionFromTop: String
@available(OSX 10.5, *)
let kCATransitionFromBottom: String

/** Animation subclass for grouped animations. **/
class CAAnimationGroup : CAAnimation {
  var animations: [CAAnimation]?
  init()
  init?(coder aDecoder: NSCoder)
}
var CA_WARN_DEPRECATED: Int32 { get }
@available(OSX 10.5, *)
func CACurrentMediaTime() -> CFTimeInterval
enum CAConstraintAttribute : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case MinX
  case MidX
  case MaxX
  case Width
  case MinY
  case MidY
  case MaxY
  case Height
}

/** The additions to CALayer for constraint layout. **/
extension CALayer {
  var constraints: [CAConstraint]?
  func addConstraint(c: CAConstraint)
}

/** The constraint-based layout manager. **/
class CAConstraintLayoutManager : NSObject {
  init()
}

/** The class representing a single layout constraint. **/
class CAConstraint : NSObject, NSCoding {
  convenience init(attribute attr: CAConstraintAttribute, relativeTo srcId: String, attribute srcAttr: CAConstraintAttribute, offset c: CGFloat)
  convenience init(attribute attr: CAConstraintAttribute, relativeTo srcId: String, attribute srcAttr: CAConstraintAttribute)
  init(attribute attr: CAConstraintAttribute, relativeTo srcId: String, attribute srcAttr: CAConstraintAttribute, scale m: CGFloat, offset c: CGFloat)
  var attribute: CAConstraintAttribute { get }
  var sourceName: String { get }
  var sourceAttribute: CAConstraintAttribute { get }
  var scale: CGFloat { get }
  var offset: CGFloat { get }
  init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class CAEmitterBehavior : NSObject, NSCoding {
  class func behaviorTypes() -> [String]
  init(type: String)
  var type: String { get }
  var name: String?
  var isEnabled: Bool
  func inputKeys() -> [AnyObject]
  class func attributesForKey(key: String) -> [NSObject : AnyObject]
  func attributesForKeyPath(keyPath: String) -> [NSObject : AnyObject]
  init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/** Behavior types. **/
let kCAEmitterBehaviorWave: String
let kCAEmitterBehaviorDrag: String
let kCAEmitterBehaviorAlignToMotion: String
let kCAEmitterBehaviorValueOverLife: String
let kCAEmitterBehaviorColorOverLife: String
let kCAEmitterBehaviorLight: String
let kCAEmitterBehaviorAttractor: String
class CAEmitterCell : NSObject, NSCoding, CAMediaTiming {
  class func defaultValueForKey(key: String) -> AnyObject?
  func shouldArchiveValueForKey(key: String) -> Bool
  var name: String?
  var isEnabled: Bool
  var birthRate: Float
  var lifetime: Float
  var lifetimeRange: Float
  var emissionLatitude: CGFloat
  var emissionLongitude: CGFloat
  var emissionRange: CGFloat
  var velocity: CGFloat
  var velocityRange: CGFloat
  var xAcceleration: CGFloat
  var yAcceleration: CGFloat
  var zAcceleration: CGFloat
  var scale: CGFloat
  var scaleRange: CGFloat
  var scaleSpeed: CGFloat
  var spin: CGFloat
  var spinRange: CGFloat
  var color: CGColor?
  var redRange: Float
  var greenRange: Float
  var blueRange: Float
  var alphaRange: Float
  var redSpeed: Float
  var greenSpeed: Float
  var blueSpeed: Float
  var alphaSpeed: Float
  var contents: AnyObject?
  var contentsRect: CGRect
  var contentsScale: CGFloat
  var minificationFilter: String
  var magnificationFilter: String
  var minificationFilterBias: Float
  var emitterCells: [CAEmitterCell]?
  var style: [NSObject : AnyObject]?
  init()
  func encodeWith(aCoder: NSCoder)
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
class CAEmitterLayer : CALayer {
  var emitterCells: [CAEmitterCell]?
  var birthRate: Float
  var lifetime: Float
  var emitterPosition: CGPoint
  var emitterZPosition: CGFloat
  var emitterSize: CGSize
  var emitterDepth: CGFloat
  var emitterShape: String
  var emitterMode: String
  var renderMode: String
  var preservesDepth: Bool
  var velocity: Float
  var scale: Float
  var spin: Float
  var seed: UInt32
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}

/** `emitterShape' values. **/
@available(OSX 10.6, *)
let kCAEmitterLayerPoint: String
@available(OSX 10.6, *)
let kCAEmitterLayerLine: String
@available(OSX 10.6, *)
let kCAEmitterLayerRectangle: String
@available(OSX 10.6, *)
let kCAEmitterLayerCuboid: String
@available(OSX 10.6, *)
let kCAEmitterLayerCircle: String
@available(OSX 10.6, *)
let kCAEmitterLayerSphere: String

/** `emitterMode' values. **/
@available(OSX 10.6, *)
let kCAEmitterLayerPoints: String
@available(OSX 10.6, *)
let kCAEmitterLayerOutline: String
@available(OSX 10.6, *)
let kCAEmitterLayerSurface: String
@available(OSX 10.6, *)
let kCAEmitterLayerVolume: String

/** `renderMode' values. **/
@available(OSX 10.6, *)
let kCAEmitterLayerUnordered: String
@available(OSX 10.6, *)
let kCAEmitterLayerOldestFirst: String
@available(OSX 10.6, *)
let kCAEmitterLayerOldestLast: String
@available(OSX 10.6, *)
let kCAEmitterLayerBackToFront: String
@available(OSX 10.6, *)
let kCAEmitterLayerAdditive: String
class CAGradientLayer : CALayer {
  var colors: [AnyObject]?
  var locations: [NSNumber]?
  var startPoint: CGPoint
  var endPoint: CGPoint
  var type: String
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}

/** `type' values. **/
@available(OSX 10.6, *)
let kCAGradientLayerAxial: String
struct CAAutoresizingMask : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var LayerNotSizable: CAAutoresizingMask { get }
  static var LayerMinXMargin: CAAutoresizingMask { get }
  static var LayerWidthSizable: CAAutoresizingMask { get }
  static var LayerMaxXMargin: CAAutoresizingMask { get }
  static var LayerMinYMargin: CAAutoresizingMask { get }
  static var LayerHeightSizable: CAAutoresizingMask { get }
  static var LayerMaxYMargin: CAAutoresizingMask { get }
}
struct CAEdgeAntialiasingMask : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var LayerLeftEdge: CAEdgeAntialiasingMask { get }
  static var LayerRightEdge: CAEdgeAntialiasingMask { get }
  static var LayerBottomEdge: CAEdgeAntialiasingMask { get }
  static var LayerTopEdge: CAEdgeAntialiasingMask { get }
}

/** The base layer class. **/
class CALayer : NSObject, NSCoding, CAMediaTiming {
  init()
  init(layer: AnyObject)
  func presentationLayer() -> AnyObject?
  func modelLayer() -> AnyObject

  /** Property methods. **/
  class func defaultValueForKey(key: String) -> AnyObject?
  class func needsDisplayForKey(key: String) -> Bool
  func shouldArchiveValueForKey(key: String) -> Bool

  /** Geometry and layer hierarchy properties. **/
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

  /** Mapping between layer coordinate and time spaces. **/
  func convert(p: CGPoint, from l: CALayer?) -> CGPoint
  func convert(p: CGPoint, to l: CALayer?) -> CGPoint
  func convert(r: CGRect, from l: CALayer?) -> CGRect
  func convert(r: CGRect, to l: CALayer?) -> CGRect
  func convertTime(t: CFTimeInterval, from l: CALayer?) -> CFTimeInterval
  func convertTime(t: CFTimeInterval, to l: CALayer?) -> CFTimeInterval

  /** Hit testing methods. **/
  func hitTest(p: CGPoint) -> CALayer?
  func contains(p: CGPoint) -> Bool

  /** Layer content properties and methods. **/
  var contents: AnyObject?
  var contentsRect: CGRect
  var contentsGravity: String
  @available(OSX 10.7, *)
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
  @available(OSX 10.8, *)
  var drawsAsynchronously: Bool
  func drawIn(ctx: CGContext)

  /** Rendering properties and methods. **/
  func renderIn(ctx: CGContext)
  var edgeAntialiasingMask: CAEdgeAntialiasingMask
  var backgroundColor: CGColor?
  var cornerRadius: CGFloat
  var borderWidth: CGFloat
  var borderColor: CGColor?
  var opacity: Float
  var compositingFilter: AnyObject?
  var filters: [AnyObject]?
  var backgroundFilters: [AnyObject]?
  var shouldRasterize: Bool
  var rasterizationScale: CGFloat

  /** Shadow properties. **/
  var shadowColor: CGColor?
  var shadowOpacity: Float
  var shadowOffset: CGSize
  var shadowRadius: CGFloat
  var shadowPath: CGPath?

  /** Layout methods. **/
  var autoresizingMask: CAAutoresizingMask
  var layoutManager: AnyObject?
  func preferredFrameSize() -> CGSize
  func setNeedsLayout()
  func needsLayout() -> Bool
  func layoutIfNeeded()
  func layoutSublayers()
  func resizeSublayersWithOldSize(size: CGSize)
  func resizeWithOldSuperlayerSize(size: CGSize)

  /** Action methods. **/
  class func defaultActionForKey(event: String) -> CAAction?
  func actionForKey(event: String) -> CAAction?
  var actions: [String : CAAction]?

  /** Animation methods. **/
  func add(anim: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(key: String)
  func animationKeys() -> [String]?
  func animationForKey(key: String) -> CAAnimation?

  /** Miscellaneous properties. **/
  var name: String?
  weak var delegate: @sil_weak AnyObject?
  var style: [NSObject : AnyObject]?
  func encodeWith(aCoder: NSCoder)
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

/** Layout manager protocol. **/
extension NSObject {
  class func preferredSizeOf(layer: CALayer) -> CGSize
  func preferredSizeOf(layer: CALayer) -> CGSize
  class func invalidateLayoutOf(layer: CALayer)
  func invalidateLayoutOf(layer: CALayer)
  class func layoutSublayersOf(layer: CALayer)
  func layoutSublayersOf(layer: CALayer)
}

/** Action (event handler) protocol. **/
protocol CAAction {
  @available(OSX 10.0, *)
  func runActionForKey(event: String, object anObject: AnyObject, arguments dict: [NSObject : AnyObject]?)
}

/** NSNull protocol conformance. **/
extension NSNull : CAAction {
  @available(OSX 10.0, *)
  func runActionForKey(event: String, object anObject: AnyObject, arguments dict: [NSObject : AnyObject]?)
}

/** Delegate methods. **/
extension NSObject {
  class func display(layer: CALayer)
  func display(layer: CALayer)
  class func draw(layer: CALayer, in ctx: CGContext)
  func draw(layer: CALayer, in ctx: CGContext)
  class func actionFor(layer: CALayer, forKey event: String) -> CAAction?
  func actionFor(layer: CALayer, forKey event: String) -> CAAction?
}

/** Layer `contentsGravity' values. **/
@available(OSX 10.5, *)
let kCAGravityCenter: String
@available(OSX 10.5, *)
let kCAGravityTop: String
@available(OSX 10.5, *)
let kCAGravityBottom: String
@available(OSX 10.5, *)
let kCAGravityLeft: String
@available(OSX 10.5, *)
let kCAGravityRight: String
@available(OSX 10.5, *)
let kCAGravityTopLeft: String
@available(OSX 10.5, *)
let kCAGravityTopRight: String
@available(OSX 10.5, *)
let kCAGravityBottomLeft: String
@available(OSX 10.5, *)
let kCAGravityBottomRight: String
@available(OSX 10.5, *)
let kCAGravityResize: String
@available(OSX 10.5, *)
let kCAGravityResizeAspect: String
@available(OSX 10.5, *)
let kCAGravityResizeAspectFill: String

/** Contents filter names. **/
@available(OSX 10.5, *)
let kCAFilterNearest: String
@available(OSX 10.5, *)
let kCAFilterLinear: String
@available(OSX 10.6, *)
let kCAFilterTrilinear: String

/** Layer event names. **/
@available(OSX 10.5, *)
let kCAOnOrderIn: String
@available(OSX 10.5, *)
let kCAOnOrderOut: String

/** The animation key used for transitions. **/
@available(OSX 10.5, *)
let kCATransition: String
protocol CAMediaTiming {
  var beginTime: CFTimeInterval { get set }
  var duration: CFTimeInterval { get set }
  var speed: Float { get set }
  var timeOffset: CFTimeInterval { get set }
  var repeatCount: Float { get set }
  var repeatDuration: CFTimeInterval { get set }
  var autoreverses: Bool { get set }
  var fillMode: String { get set }
}
@available(OSX 10.5, *)
let kCAFillModeForwards: String
@available(OSX 10.5, *)
let kCAFillModeBackwards: String
@available(OSX 10.5, *)
let kCAFillModeBoth: String
@available(OSX 10.5, *)
let kCAFillModeRemoved: String
class CAMediaTimingFunction : NSObject, NSCoding {
  convenience init(name: String)
  init(controlPoints c1x: Float, _ c1y: Float, _ c2x: Float, _ c2y: Float)
  func getControlPointAt(idx: Int, values ptr: UnsafeMutablePointer<Float>)
  init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/** Timing function names. **/
@available(OSX 10.5, *)
let kCAMediaTimingFunctionLinear: String
@available(OSX 10.5, *)
let kCAMediaTimingFunctionEaseIn: String
@available(OSX 10.5, *)
let kCAMediaTimingFunctionEaseOut: String
@available(OSX 10.5, *)
let kCAMediaTimingFunctionEaseInEaseOut: String
@available(OSX 10.6, *)
let kCAMediaTimingFunctionDefault: String
protocol CAMetalDrawable : MTLDrawable {
  @available(OSX 10.11, *)
  var texture: MTLTexture { get }
  @available(OSX 10.11, *)
  var layer: CAMetalLayer { get }
}
@available(OSX 10.11, *)
class CAMetalLayer : CALayer {
  var device: MTLDevice?
  var pixelFormat: MTLPixelFormat
  var framebufferOnly: Bool
  var drawableSize: CGSize
  func nextDrawable() -> CAMetalDrawable?
  var presentsWithTransaction: Bool
  var colorspace: CGColorSpace
  var wantsExtendedDynamicRangeContent: Bool
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
class CAOpenGLLayer : CALayer {
  var isAsynchronous: Bool
  func canDrawInCGLContext(ctx: CGLContextObj, pixelFormat pf: CGLPixelFormatObj, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>) -> Bool
  func drawInCGLContext(ctx: CGLContextObj, pixelFormat pf: CGLPixelFormatObj, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>)
  func copyCGLPixelFormatForDisplayMask(mask: UInt32) -> CGLPixelFormatObj
  func releaseCGLPixelFormat(pf: CGLPixelFormatObj)
  func copyCGLContextForPixelFormat(pf: CGLPixelFormatObj) -> CGLContextObj
  func releaseCGLContext(ctx: CGLContextObj)
  var colorspace: CGColorSpace
  var wantsExtendedDynamicRangeContent: Bool
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
class CARemoteLayerClient : NSObject {
  init(serverPort port: mach_port_t)
  func invalidate()
  var clientId: UInt32 { get }
  var layer: CALayer?
  init()
}
class CARemoteLayerServer : NSObject {
  class func shared() -> CARemoteLayerServer
  var serverPort: mach_port_t { get }
  init()
}
extension CALayer {
  /*not inherited*/ init(remoteClientId client_id: UInt32)
}
class CARenderer : NSObject {
  /*not inherited*/ init(cglContext ctx: UnsafeMutablePointer<Void>, options dict: [NSObject : AnyObject]?)
  var layer: CALayer?
  var bounds: CGRect
  func beginFrameAtTime(t: CFTimeInterval, timeStamp ts: UnsafeMutablePointer<CVTimeStamp>)
  func updateBounds() -> CGRect
  func addUpdateRect(r: CGRect)
  func render()
  func nextFrameTime() -> CFTimeInterval
  func endFrame()
  init()
}
class CAReplicatorLayer : CALayer {
  var instanceCount: Int
  var preservesDepth: Bool
  var instanceDelay: CFTimeInterval
  var instanceTransform: CATransform3D
  var instanceColor: CGColor?
  var instanceRedOffset: Float
  var instanceGreenOffset: Float
  var instanceBlueOffset: Float
  var instanceAlphaOffset: Float
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
class CAScrollLayer : CALayer {
  func scrollTo(p: CGPoint)
  func scrollTo(r: CGRect)
  var scrollMode: String
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
extension CALayer {
  func scroll(p: CGPoint)
  func scrollRectToVisible(r: CGRect)
  var visibleRect: CGRect { get }
}
@available(OSX 10.5, *)
let kCAScrollNone: String
@available(OSX 10.5, *)
let kCAScrollVertically: String
@available(OSX 10.5, *)
let kCAScrollHorizontally: String
@available(OSX 10.5, *)
let kCAScrollBoth: String
class CAShapeLayer : CALayer {
  var path: CGPath?
  var fillColor: CGColor?
  var fillRule: String
  var strokeColor: CGColor?
  var strokeStart: CGFloat
  var strokeEnd: CGFloat
  var lineWidth: CGFloat
  var miterLimit: CGFloat
  var lineCap: String
  var lineJoin: String
  var lineDashPhase: CGFloat
  var lineDashPattern: [NSNumber]?
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.6, *)
let kCAFillRuleNonZero: String
@available(OSX 10.6, *)
let kCAFillRuleEvenOdd: String
@available(OSX 10.6, *)
let kCALineJoinMiter: String
@available(OSX 10.6, *)
let kCALineJoinRound: String
@available(OSX 10.6, *)
let kCALineJoinBevel: String
@available(OSX 10.6, *)
let kCALineCapButt: String
@available(OSX 10.6, *)
let kCALineCapRound: String
@available(OSX 10.6, *)
let kCALineCapSquare: String
class CATextLayer : CALayer {
  @NSCopying var string: AnyObject?
  var font: AnyObject?
  var fontSize: CGFloat
  var foregroundColor: CGColor?
  var isWrapped: Bool
  var truncationMode: String
  var alignmentMode: String
  var allowsFontSubpixelQuantization: Bool
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.5, *)
let kCATruncationNone: String
@available(OSX 10.5, *)
let kCATruncationStart: String
@available(OSX 10.5, *)
let kCATruncationEnd: String
@available(OSX 10.5, *)
let kCATruncationMiddle: String
@available(OSX 10.5, *)
let kCAAlignmentNatural: String
@available(OSX 10.5, *)
let kCAAlignmentLeft: String
@available(OSX 10.5, *)
let kCAAlignmentRight: String
@available(OSX 10.5, *)
let kCAAlignmentCenter: String
@available(OSX 10.5, *)
let kCAAlignmentJustified: String
class CATiledLayer : CALayer {
  class func fadeDuration() -> CFTimeInterval
  var levelsOfDetail: Int
  var levelsOfDetailBias: Int
  var tileSize: CGSize
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
class CATransaction : NSObject {
  class func begin()
  class func commit()
  class func flush()
  class func lock()
  class func unlock()
  class func animationDuration() -> CFTimeInterval
  class func setAnimationDuration(dur: CFTimeInterval)
  class func animationTimingFunction() -> CAMediaTimingFunction?
  class func setAnimationTimingFunction(function: CAMediaTimingFunction?)
  class func disableActions() -> Bool
  class func setDisableActions(flag: Bool)
  class func completionBlock() -> (() -> Void)?
  class func setCompletionBlock(block: (() -> Void)?)
  class func valueForKey(key: String) -> AnyObject?
  class func setValue(anObject: AnyObject?, forKey key: String)
  init()
}

/** Transaction property ids. **/
@available(OSX 10.5, *)
let kCATransactionAnimationDuration: String
@available(OSX 10.5, *)
let kCATransactionDisableActions: String
@available(OSX 10.6, *)
let kCATransactionAnimationTimingFunction: String
@available(OSX 10.6, *)
let kCATransactionCompletionBlock: String
struct CATransform3D {
  var m11: CGFloat
  var m12: CGFloat
  var m13: CGFloat
  var m14: CGFloat
  var m21: CGFloat
  var m22: CGFloat
  var m23: CGFloat
  var m24: CGFloat
  var m31: CGFloat
  var m32: CGFloat
  var m33: CGFloat
  var m34: CGFloat
  var m41: CGFloat
  var m42: CGFloat
  var m43: CGFloat
  var m44: CGFloat
  init()
  init(m11: CGFloat, m12: CGFloat, m13: CGFloat, m14: CGFloat, m21: CGFloat, m22: CGFloat, m23: CGFloat, m24: CGFloat, m31: CGFloat, m32: CGFloat, m33: CGFloat, m34: CGFloat, m41: CGFloat, m42: CGFloat, m43: CGFloat, m44: CGFloat)
}
@available(OSX 10.5, *)
let CATransform3DIdentity: CATransform3D
@available(OSX 10.5, *)
func CATransform3DIsIdentity(t: CATransform3D) -> Bool
@available(OSX 10.5, *)
func CATransform3DEqualToTransform(a: CATransform3D, _ b: CATransform3D) -> Bool
@available(OSX 10.5, *)
func CATransform3DMakeTranslation(tx: CGFloat, _ ty: CGFloat, _ tz: CGFloat) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DMakeScale(sx: CGFloat, _ sy: CGFloat, _ sz: CGFloat) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DMakeRotation(angle: CGFloat, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DTranslate(t: CATransform3D, _ tx: CGFloat, _ ty: CGFloat, _ tz: CGFloat) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DScale(t: CATransform3D, _ sx: CGFloat, _ sy: CGFloat, _ sz: CGFloat) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DRotate(t: CATransform3D, _ angle: CGFloat, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DConcat(a: CATransform3D, _ b: CATransform3D) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DInvert(t: CATransform3D) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DMakeAffineTransform(m: CGAffineTransform) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DIsAffine(t: CATransform3D) -> Bool
@available(OSX 10.5, *)
func CATransform3DGetAffineTransform(t: CATransform3D) -> CGAffineTransform
extension NSValue {
  /*not inherited*/ init(caTransform3D t: CATransform3D)
  var caTransform3DValue: CATransform3D { get }
}
class CATransformLayer : CALayer {
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
class CAValueFunction : NSObject, NSCoding {
  convenience init?(name: String)
  var name: String { get }
  init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/** Value function names. **/
@available(OSX 10.6, *)
let kCAValueFunctionRotateX: String
@available(OSX 10.6, *)
let kCAValueFunctionRotateY: String
@available(OSX 10.6, *)
let kCAValueFunctionRotateZ: String
@available(OSX 10.6, *)
let kCAValueFunctionScale: String
@available(OSX 10.6, *)
let kCAValueFunctionScaleX: String
@available(OSX 10.6, *)
let kCAValueFunctionScaleY: String
@available(OSX 10.6, *)
let kCAValueFunctionScaleZ: String
@available(OSX 10.6, *)
let kCAValueFunctionTranslate: String
@available(OSX 10.6, *)
let kCAValueFunctionTranslateX: String
@available(OSX 10.6, *)
let kCAValueFunctionTranslateY: String
@available(OSX 10.6, *)
let kCAValueFunctionTranslateZ: String
