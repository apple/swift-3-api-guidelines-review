

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
  @available(iOS 2.0, *)
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
@available(iOS 2.0, *)
let kCAAnimationLinear: String
@available(iOS 2.0, *)
let kCAAnimationDiscrete: String
@available(iOS 2.0, *)
let kCAAnimationPaced: String
@available(iOS 4.0, *)
let kCAAnimationCubic: String
@available(iOS 4.0, *)
let kCAAnimationCubicPaced: String
@available(iOS 2.0, *)
let kCAAnimationRotateAuto: String
@available(iOS 2.0, *)
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
@available(iOS 2.0, *)
let kCATransitionFade: String
@available(iOS 2.0, *)
let kCATransitionMoveIn: String
@available(iOS 2.0, *)
let kCATransitionPush: String
@available(iOS 2.0, *)
let kCATransitionReveal: String
@available(iOS 2.0, *)
let kCATransitionFromRight: String
@available(iOS 2.0, *)
let kCATransitionFromLeft: String
@available(iOS 2.0, *)
let kCATransitionFromTop: String
@available(iOS 2.0, *)
let kCATransitionFromBottom: String

/** Animation subclass for grouped animations. **/
class CAAnimationGroup : CAAnimation {
  var animations: [CAAnimation]?
  init()
  init?(coder aDecoder: NSCoder)
}
var __MAC_10_12: Int32 { get }
var CA_WARN_DEPRECATED: Int32 { get }
@available(iOS 2.0, *)
func CACurrentMediaTime() -> CFTimeInterval

/** Class representing a timer bound to the display vsync. **/
class CADisplayLink : NSObject {
  /*not inherited*/ init(target: AnyObject, selector sel: Selector)
  func addTo(runloop: NSRunLoop, forMode mode: String)
  func removeFrom(runloop: NSRunLoop, forMode mode: String)
  func invalidate()
  var timestamp: CFTimeInterval { get }
  var duration: CFTimeInterval { get }
  var isPaused: Bool
  var frameInterval: Int
  init()
}
class CAEAGLLayer : CALayer, EAGLDrawable {
  @available(iOS 9.0, *)
  var presentsWithTransaction: Bool
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
  @available(iOS 2.0, *)
  var drawableProperties: [NSObject : AnyObject]!
}
class CAEmitterBehavior : NSObject, NSCoding {
  class func behaviorTypes() -> [String]
  init(type: String)
  var type: String { get }
  var name: String?
  var isEnabled: Bool
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
@available(iOS 5.0, *)
let kCAEmitterLayerPoint: String
@available(iOS 5.0, *)
let kCAEmitterLayerLine: String
@available(iOS 5.0, *)
let kCAEmitterLayerRectangle: String
@available(iOS 5.0, *)
let kCAEmitterLayerCuboid: String
@available(iOS 5.0, *)
let kCAEmitterLayerCircle: String
@available(iOS 5.0, *)
let kCAEmitterLayerSphere: String

/** `emitterMode' values. **/
@available(iOS 5.0, *)
let kCAEmitterLayerPoints: String
@available(iOS 5.0, *)
let kCAEmitterLayerOutline: String
@available(iOS 5.0, *)
let kCAEmitterLayerSurface: String
@available(iOS 5.0, *)
let kCAEmitterLayerVolume: String

/** `renderMode' values. **/
@available(iOS 5.0, *)
let kCAEmitterLayerUnordered: String
@available(iOS 5.0, *)
let kCAEmitterLayerOldestFirst: String
@available(iOS 5.0, *)
let kCAEmitterLayerOldestLast: String
@available(iOS 5.0, *)
let kCAEmitterLayerBackToFront: String
@available(iOS 5.0, *)
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
@available(iOS 3.0, *)
let kCAGradientLayerAxial: String
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
  @available(iOS 4.0, *)
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
  @available(iOS 6.0, *)
  var drawsAsynchronously: Bool
  func drawIn(ctx: CGContext)

  /** Rendering properties and methods. **/
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

  /** Shadow properties. **/
  var shadowColor: CGColor?
  var shadowOpacity: Float
  var shadowOffset: CGSize
  var shadowRadius: CGFloat
  var shadowPath: CGPath?

  /** Layout methods. **/
  func preferredFrameSize() -> CGSize
  func setNeedsLayout()
  func needsLayout() -> Bool
  func layoutIfNeeded()
  func layoutSublayers()

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

/** Action (event handler) protocol. **/
protocol CAAction {
  @available(iOS 2.0, *)
  func runActionForKey(event: String, object anObject: AnyObject, arguments dict: [NSObject : AnyObject]?)
}

/** NSNull protocol conformance. **/
extension NSNull : CAAction {
  @available(iOS 2.0, *)
  func runActionForKey(event: String, object anObject: AnyObject, arguments dict: [NSObject : AnyObject]?)
}

/** Delegate methods. **/
extension NSObject {
  class func display(layer: CALayer)
  func display(layer: CALayer)
  class func draw(layer: CALayer, in ctx: CGContext)
  func draw(layer: CALayer, in ctx: CGContext)
  class func layoutSublayersOf(layer: CALayer)
  func layoutSublayersOf(layer: CALayer)
  class func actionFor(layer: CALayer, forKey event: String) -> CAAction?
  func actionFor(layer: CALayer, forKey event: String) -> CAAction?
}

/** Layer `contentsGravity' values. **/
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

/** Contents filter names. **/
@available(iOS 2.0, *)
let kCAFilterNearest: String
@available(iOS 2.0, *)
let kCAFilterLinear: String
@available(iOS 3.0, *)
let kCAFilterTrilinear: String

/** Layer event names. **/
@available(iOS 2.0, *)
let kCAOnOrderIn: String
@available(iOS 2.0, *)
let kCAOnOrderOut: String

/** The animation key used for transitions. **/
@available(iOS 2.0, *)
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
@available(iOS 2.0, *)
let kCAFillModeForwards: String
@available(iOS 2.0, *)
let kCAFillModeBackwards: String
@available(iOS 2.0, *)
let kCAFillModeBoth: String
@available(iOS 2.0, *)
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
@available(iOS 2.0, *)
let kCAMediaTimingFunctionLinear: String
@available(iOS 2.0, *)
let kCAMediaTimingFunctionEaseIn: String
@available(iOS 2.0, *)
let kCAMediaTimingFunctionEaseOut: String
@available(iOS 2.0, *)
let kCAMediaTimingFunctionEaseInEaseOut: String
@available(iOS 3.0, *)
let kCAMediaTimingFunctionDefault: String
protocol CAMetalDrawable : MTLDrawable {
  @available(iOS 8.0, *)
  var texture: MTLTexture { get }
  @available(iOS 8.0, *)
  var layer: CAMetalLayer { get }
}
@available(iOS 8.0, *)
class CAMetalLayer : CALayer {
  var device: MTLDevice?
  var pixelFormat: MTLPixelFormat
  var framebufferOnly: Bool
  var drawableSize: CGSize
  func nextDrawable() -> CAMetalDrawable?
  var presentsWithTransaction: Bool
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
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
@available(iOS 2.0, *)
let kCAScrollNone: String
@available(iOS 2.0, *)
let kCAScrollVertically: String
@available(iOS 2.0, *)
let kCAScrollHorizontally: String
@available(iOS 2.0, *)
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
@available(iOS 3.0, *)
let kCAFillRuleNonZero: String
@available(iOS 3.0, *)
let kCAFillRuleEvenOdd: String
@available(iOS 3.0, *)
let kCALineJoinMiter: String
@available(iOS 3.0, *)
let kCALineJoinRound: String
@available(iOS 3.0, *)
let kCALineJoinBevel: String
@available(iOS 3.0, *)
let kCALineCapButt: String
@available(iOS 3.0, *)
let kCALineCapRound: String
@available(iOS 3.0, *)
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
@available(iOS 3.2, *)
let kCATruncationNone: String
@available(iOS 3.2, *)
let kCATruncationStart: String
@available(iOS 3.2, *)
let kCATruncationEnd: String
@available(iOS 3.2, *)
let kCATruncationMiddle: String
@available(iOS 3.2, *)
let kCAAlignmentNatural: String
@available(iOS 3.2, *)
let kCAAlignmentLeft: String
@available(iOS 3.2, *)
let kCAAlignmentRight: String
@available(iOS 3.2, *)
let kCAAlignmentCenter: String
@available(iOS 3.2, *)
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
@available(iOS 2.0, *)
let kCATransactionAnimationDuration: String
@available(iOS 2.0, *)
let kCATransactionDisableActions: String
@available(iOS 3.0, *)
let kCATransactionAnimationTimingFunction: String
@available(iOS 4.0, *)
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
@available(iOS 2.0, *)
let CATransform3DIdentity: CATransform3D
@available(iOS 2.0, *)
func CATransform3DIsIdentity(t: CATransform3D) -> Bool
@available(iOS 2.0, *)
func CATransform3DEqualToTransform(a: CATransform3D, _ b: CATransform3D) -> Bool
@available(iOS 2.0, *)
func CATransform3DMakeTranslation(tx: CGFloat, _ ty: CGFloat, _ tz: CGFloat) -> CATransform3D
@available(iOS 2.0, *)
func CATransform3DMakeScale(sx: CGFloat, _ sy: CGFloat, _ sz: CGFloat) -> CATransform3D
@available(iOS 2.0, *)
func CATransform3DMakeRotation(angle: CGFloat, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> CATransform3D
@available(iOS 2.0, *)
func CATransform3DTranslate(t: CATransform3D, _ tx: CGFloat, _ ty: CGFloat, _ tz: CGFloat) -> CATransform3D
@available(iOS 2.0, *)
func CATransform3DScale(t: CATransform3D, _ sx: CGFloat, _ sy: CGFloat, _ sz: CGFloat) -> CATransform3D
@available(iOS 2.0, *)
func CATransform3DRotate(t: CATransform3D, _ angle: CGFloat, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> CATransform3D
@available(iOS 2.0, *)
func CATransform3DConcat(a: CATransform3D, _ b: CATransform3D) -> CATransform3D
@available(iOS 2.0, *)
func CATransform3DInvert(t: CATransform3D) -> CATransform3D
@available(iOS 2.0, *)
func CATransform3DMakeAffineTransform(m: CGAffineTransform) -> CATransform3D
@available(iOS 2.0, *)
func CATransform3DIsAffine(t: CATransform3D) -> Bool
@available(iOS 2.0, *)
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
@available(iOS 3.0, *)
let kCAValueFunctionRotateX: String
@available(iOS 3.0, *)
let kCAValueFunctionRotateY: String
@available(iOS 3.0, *)
let kCAValueFunctionRotateZ: String
@available(iOS 3.0, *)
let kCAValueFunctionScale: String
@available(iOS 3.0, *)
let kCAValueFunctionScaleX: String
@available(iOS 3.0, *)
let kCAValueFunctionScaleY: String
@available(iOS 3.0, *)
let kCAValueFunctionScaleZ: String
@available(iOS 3.0, *)
let kCAValueFunctionTranslate: String
@available(iOS 3.0, *)
let kCAValueFunctionTranslateX: String
@available(iOS 3.0, *)
let kCAValueFunctionTranslateY: String
@available(iOS 3.0, *)
let kCAValueFunctionTranslateZ: String
