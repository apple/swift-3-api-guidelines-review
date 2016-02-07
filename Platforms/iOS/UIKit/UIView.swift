
enum UIViewAnimationCurve : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case EaseInOut
  case EaseIn
  case EaseOut
  case Linear
}
enum UIViewContentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ScaleToFill
  case ScaleAspectFit
  case ScaleAspectFill
  case Redraw
  case Center
  case Top
  case Bottom
  case Left
  case Right
  case TopLeft
  case TopRight
  case BottomLeft
  case BottomRight
}
enum UIViewAnimationTransition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case FlipFromLeft
  case FlipFromRight
  case CurlUp
  case CurlDown
}
struct UIViewAutoresizing : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: UIViewAutoresizing { get }
  static var FlexibleLeftMargin: UIViewAutoresizing { get }
  static var FlexibleWidth: UIViewAutoresizing { get }
  static var FlexibleRightMargin: UIViewAutoresizing { get }
  static var FlexibleTopMargin: UIViewAutoresizing { get }
  static var FlexibleHeight: UIViewAutoresizing { get }
  static var FlexibleBottomMargin: UIViewAutoresizing { get }
}
@available(iOS 4.0, *)
struct UIViewAnimationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var LayoutSubviews: UIViewAnimationOptions { get }
  static var AllowUserInteraction: UIViewAnimationOptions { get }
  static var BeginFromCurrentState: UIViewAnimationOptions { get }
  static var Repeat: UIViewAnimationOptions { get }
  static var Autoreverse: UIViewAnimationOptions { get }
  static var OverrideInheritedDuration: UIViewAnimationOptions { get }
  static var OverrideInheritedCurve: UIViewAnimationOptions { get }
  static var AllowAnimatedContent: UIViewAnimationOptions { get }
  static var ShowHideTransitionViews: UIViewAnimationOptions { get }
  static var OverrideInheritedOptions: UIViewAnimationOptions { get }
  static var CurveEaseInOut: UIViewAnimationOptions { get }
  static var CurveEaseIn: UIViewAnimationOptions { get }
  static var CurveEaseOut: UIViewAnimationOptions { get }
  static var CurveLinear: UIViewAnimationOptions { get }
  static var TransitionNone: UIViewAnimationOptions { get }
  static var TransitionFlipFromLeft: UIViewAnimationOptions { get }
  static var TransitionFlipFromRight: UIViewAnimationOptions { get }
  static var TransitionCurlUp: UIViewAnimationOptions { get }
  static var TransitionCurlDown: UIViewAnimationOptions { get }
  static var TransitionCrossDissolve: UIViewAnimationOptions { get }
  static var TransitionFlipFromTop: UIViewAnimationOptions { get }
  static var TransitionFlipFromBottom: UIViewAnimationOptions { get }
}
@available(iOS 7.0, *)
struct UIViewKeyframeAnimationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var LayoutSubviews: UIViewKeyframeAnimationOptions { get }
  static var AllowUserInteraction: UIViewKeyframeAnimationOptions { get }
  static var BeginFromCurrentState: UIViewKeyframeAnimationOptions { get }
  static var Repeat: UIViewKeyframeAnimationOptions { get }
  static var Autoreverse: UIViewKeyframeAnimationOptions { get }
  static var OverrideInheritedDuration: UIViewKeyframeAnimationOptions { get }
  static var OverrideInheritedOptions: UIViewKeyframeAnimationOptions { get }
  static var CalculationModeLinear: UIViewKeyframeAnimationOptions { get }
  static var CalculationModeDiscrete: UIViewKeyframeAnimationOptions { get }
  static var CalculationModePaced: UIViewKeyframeAnimationOptions { get }
  static var CalculationModeCubic: UIViewKeyframeAnimationOptions { get }
  static var CalculationModeCubicPaced: UIViewKeyframeAnimationOptions { get }
}
@available(iOS 7.0, *)
enum UISystemAnimation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Delete
}
@available(iOS 7.0, *)
enum UIViewTintAdjustmentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Normal
  case Dimmed
}
@available(iOS 9.0, *)
enum UISemanticContentAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Playback
  case Spatial
  case ForceLeftToRight
  case ForceRightToLeft
}
@available(iOS 5.0, *)
enum UIUserInterfaceLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LeftToRight
  case RightToLeft
}
protocol UICoordinateSpace : ObjectProtocol {
  @available(iOS 8.0, *)
  func convert(point: CGPoint, to coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  func convert(point: CGPoint, from coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  func convert(rect: CGRect, to coordinateSpace: UICoordinateSpace) -> CGRect
  @available(iOS 8.0, *)
  func convert(rect: CGRect, from coordinateSpace: UICoordinateSpace) -> CGRect
  @available(iOS 8.0, *)
  var bounds: CGRect { get }
}
@available(iOS 2.0, *)
class UIView : UIResponder, Coding, UIAppearance, UIAppearanceContainer, UIDynamicItem, UITraitEnvironment, UICoordinateSpace, UIFocusEnvironment {
  class func layerClass() -> AnyClass
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  var isUserInteractionEnabled: Bool
  var tag: Int
  var layer: CALayer { get }
  @available(iOS 9.0, *)
  func canBecomeFocused() -> Bool
  @available(iOS 9.0, *)
  var isFocused: Bool { get }
  @available(iOS 9.0, *)
  class func userInterfaceLayoutDirectionFor(attribute: UISemanticContentAttribute) -> UIUserInterfaceLayoutDirection
  @available(iOS 9.0, *)
  var semanticContentAttribute: UISemanticContentAttribute
  convenience init()
  @available(iOS 2.0, *)
  func encodeWith(aCoder: Coder)
  @available(iOS 2.0, *)
  class func appearance() -> Self
  @available(iOS 9.0, *)
  class func appearanceWhenContainedInInstancesOf(classes containerTypes: [AnyObject.Type]) -> Self
  @available(iOS 8.0, *)
  class func appearanceFor(trait: UITraitCollection) -> Self
  @available(iOS 9.0, *)
  class func appearanceFor(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
  @available(iOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  @available(iOS 9.0, *)
  var collisionBoundingPath: UIBezierPath { get }
  @available(iOS 8.0, *)
  var traitCollection: UITraitCollection { get }
  @available(iOS 8.0, *)
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
  @available(iOS 8.0, *)
  func convert(point: CGPoint, to coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  func convert(point: CGPoint, from coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  func convert(rect: CGRect, to coordinateSpace: UICoordinateSpace) -> CGRect
  @available(iOS 8.0, *)
  func convert(rect: CGRect, from coordinateSpace: UICoordinateSpace) -> CGRect
  @available(iOS 9.0, *)
  weak var preferredFocusedView: @sil_weak UIView? { get }
  @available(iOS 9.0, *)
  func setNeedsFocusUpdate()
  @available(iOS 9.0, *)
  func updateFocusIfNeeded()
  @available(iOS 9.0, *)
  func shouldUpdateFocusIn(context: UIFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  func didUpdateFocusIn(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}

extension UIView : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
extension UIView {
  var frame: CGRect
  var bounds: CGRect
  var center: CGPoint
  var transform: CGAffineTransform
  @available(iOS 4.0, *)
  var contentScaleFactor: CGFloat
  var isMultipleTouchEnabled: Bool
  var isExclusiveTouch: Bool
  func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView?
  func pointInside(point: CGPoint, withEvent event: UIEvent?) -> Bool
  func convert(point: CGPoint, to view: UIView?) -> CGPoint
  func convert(point: CGPoint, from view: UIView?) -> CGPoint
  func convert(rect: CGRect, to view: UIView?) -> CGRect
  func convert(rect: CGRect, from view: UIView?) -> CGRect
  var autoresizesSubviews: Bool
  var autoresizingMask: UIViewAutoresizing
  func sizeThatFits(size: CGSize) -> CGSize
  func sizeToFit()
}
extension UIView {
  var superview: UIView? { get }
  var subviews: [UIView] { get }
  var window: UIWindow? { get }
  func removeFromSuperview()
  func insertSubview(view: UIView, at index: Int)
  func exchangeSubviewAt(index1: Int, withSubviewAt index2: Int)
  func addSubview(view: UIView)
  func insertSubview(view: UIView, belowSubview siblingSubview: UIView)
  func insertSubview(view: UIView, aboveSubview siblingSubview: UIView)
  func bringSubviewTo(front view: UIView)
  func sendSubviewToBack(view: UIView)
  func didAddSubview(subview: UIView)
  func willRemoveSubview(subview: UIView)
  func willMoveTo(superview newSuperview: UIView?)
  func didMoveToSuperview()
  func willMoveTo(newWindow: UIWindow?)
  func didMoveToWindow()
  func isDescendantOf(view: UIView) -> Bool
  func withTag(tag: Int) -> UIView?
  func setNeedsLayout()
  func layoutIfNeeded()
  func layoutSubviews()
  @available(iOS 8.0, *)
  var layoutMargins: UIEdgeInsets
  @available(iOS 8.0, *)
  var preservesSuperviewLayoutMargins: Bool
  @available(iOS 8.0, *)
  func layoutMarginsDidChange()
  @available(iOS 9.0, *)
  var layoutMarginsGuide: UILayoutGuide { get }
  @available(iOS 9.0, *)
  var readableContentGuide: UILayoutGuide { get }
}
extension UIView {
  func draw(rect: CGRect)
  func setNeedsDisplay()
  func setNeedsDisplayIn(rect: CGRect)
  var clipsToBounds: Bool
  @NSCopying var backgroundColor: UIColor?
  var alpha: CGFloat
  var isOpaque: Bool
  var clearsContextBeforeDrawing: Bool
  var isHidden: Bool
  var contentMode: UIViewContentMode
  @available(iOS 8.0, *)
  var mask: UIView?
  @available(iOS 7.0, *)
  var tintColor: UIColor!
  @available(iOS 7.0, *)
  var tintAdjustmentMode: UIViewTintAdjustmentMode
  @available(iOS 7.0, *)
  func tintColorDidChange()
}
extension UIView {
  class func beginAnimations(animationID: String?, context: UnsafeMutablePointer<Void>)
  class func commitAnimations()
  class func setAnimationDelegate(delegate: AnyObject?)
  class func setAnimationWillStart(selector: Selector)
  class func setAnimationDidStop(selector: Selector)
  class func setAnimationDuration(duration: TimeInterval)
  class func setAnimationDelay(delay: TimeInterval)
  class func setAnimationStart(startDate: Date)
  class func setAnimationCurve(curve: UIViewAnimationCurve)
  class func setAnimationRepeatCount(repeatCount: Float)
  class func setAnimationRepeatAutoreverses(repeatAutoreverses: Bool)
  class func setAnimationBeginsFromCurrentState(fromCurrentState: Bool)
  class func setAnimationTransition(transition: UIViewAnimationTransition, forView view: UIView, cache: Bool)
  class func setAnimationsEnabled(enabled: Bool)
  class func areAnimationsEnabled() -> Bool
  @available(iOS 7.0, *)
  class func performWithoutAnimation(actionsWithoutAnimation: () -> Void)
  @available(iOS 9.0, *)
  class func inheritedAnimationDuration() -> TimeInterval
}
extension UIView {
  @available(iOS 4.0, *)
  class func animate(duration duration: TimeInterval, delay: TimeInterval, options: UIViewAnimationOptions = [], animations: () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func animate(duration duration: TimeInterval, animations: () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func animate(duration duration: TimeInterval, animations: () -> Void)
  @available(iOS 7.0, *)
  class func animate(duration duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat, options: UIViewAnimationOptions = [], animations: () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func transitionWith(view: UIView, duration: TimeInterval, options: UIViewAnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func transitionFrom(fromView: UIView, to toView: UIView, duration: TimeInterval, options: UIViewAnimationOptions = [], completion: ((Bool) -> Void)? = nil)
  @available(iOS 7.0, *)
  class func perform(animation: UISystemAnimation, on views: [UIView], options: UIViewAnimationOptions = [], animations parallelAnimations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
}
extension UIView {
  @available(iOS 7.0, *)
  class func animateKeyframes(duration duration: TimeInterval, delay: TimeInterval, options: UIViewKeyframeAnimationOptions = [], animations: () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(iOS 7.0, *)
  class func addKeyframeWithRelativeStartTime(frameStartTime: Double, relativeDuration frameDuration: Double, animations: () -> Void)
}
extension UIView {
  @available(iOS 3.2, *)
  var gestureRecognizers: [UIGestureRecognizer]?
  @available(iOS 3.2, *)
  func addGestureRecognizer(gestureRecognizer: UIGestureRecognizer)
  @available(iOS 3.2, *)
  func removeGestureRecognizer(gestureRecognizer: UIGestureRecognizer)
  @available(iOS 6.0, *)
  func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool
}
extension UIView {
  @available(iOS 7.0, *)
  func addMotionEffect(effect: UIMotionEffect)
  @available(iOS 7.0, *)
  func removeMotionEffect(effect: UIMotionEffect)
  @available(iOS 7.0, *)
  var motionEffects: [UIMotionEffect]
}
enum UILayoutConstraintAxis : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
extension UIView {
  @available(iOS 6.0, *)
  var constraints: [NSLayoutConstraint] { get }
  @available(iOS 6.0, *)
  func addConstraint(constraint: NSLayoutConstraint)
  @available(iOS 6.0, *)
  func addConstraints(constraints: [NSLayoutConstraint])
  @available(iOS 6.0, *)
  func removeConstraint(constraint: NSLayoutConstraint)
  @available(iOS 6.0, *)
  func removeConstraints(constraints: [NSLayoutConstraint])
}
extension UIView {
  @available(iOS 6.0, *)
  func updateConstraintsIfNeeded()
  @available(iOS 6.0, *)
  func updateConstraints()
  @available(iOS 6.0, *)
  func needsUpdateConstraints() -> Bool
  @available(iOS 6.0, *)
  func setNeedsUpdateConstraints()
}
extension UIView {
  @available(iOS 6.0, *)
  var translatesAutoresizingMaskIntoConstraints: Bool
  @available(iOS 6.0, *)
  class func requiresConstraintBasedLayout() -> Bool
}
extension UIView {
  @available(iOS 6.0, *)
  func alignmentRectFor(frame frame: CGRect) -> CGRect
  @available(iOS 6.0, *)
  func frameFor(alignmentRect alignmentRect: CGRect) -> CGRect
  @available(iOS 6.0, *)
  func alignmentRectInsets() -> UIEdgeInsets
  @available(iOS, introduced=6.0, deprecated=9.0, message="Override -viewForFirstBaselineLayout or -viewForLastBaselineLayout as appropriate, instead")
  func forBaselineLayout() -> UIView
  @available(iOS 9.0, *)
  var forFirstBaselineLayout: UIView { get }
  @available(iOS 9.0, *)
  var forLastBaselineLayout: UIView { get }
  @available(iOS 6.0, *)
  func intrinsicContentSize() -> CGSize
  @available(iOS 6.0, *)
  func invalidateIntrinsicContentSize()
  @available(iOS 6.0, *)
  func contentHuggingPriorityFor(axis: UILayoutConstraintAxis) -> UILayoutPriority
  @available(iOS 6.0, *)
  func setContentHuggingPriority(priority: UILayoutPriority, forAxis axis: UILayoutConstraintAxis)
  @available(iOS 6.0, *)
  func contentCompressionResistancePriorityFor(axis: UILayoutConstraintAxis) -> UILayoutPriority
  @available(iOS 6.0, *)
  func setContentCompressionResistancePriority(priority: UILayoutPriority, forAxis axis: UILayoutConstraintAxis)
}
@available(iOS 6.0, *)
let UIViewNoIntrinsicMetric: CGFloat
@available(iOS 6.0, *)
let UILayoutFittingCompressedSize: CGSize
@available(iOS 6.0, *)
let UILayoutFittingExpandedSize: CGSize
extension UIView {
  @available(iOS 6.0, *)
  func systemLayoutSizeFitting(targetSize: CGSize) -> CGSize
  @available(iOS 8.0, *)
  func systemLayoutSizeFitting(targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize
}
extension UIView {
  @available(iOS 9.0, *)
  var layoutGuides: [UILayoutGuide] { get }
  @available(iOS 9.0, *)
  func addLayoutGuide(layoutGuide: UILayoutGuide)
  @available(iOS 9.0, *)
  func removeLayoutGuide(layoutGuide: UILayoutGuide)
}
extension UIView {
  @available(iOS 9.0, *)
  var leadingAnchor: NSLayoutXAxisAnchor { get }
  @available(iOS 9.0, *)
  var trailingAnchor: NSLayoutXAxisAnchor { get }
  @available(iOS 9.0, *)
  var leftAnchor: NSLayoutXAxisAnchor { get }
  @available(iOS 9.0, *)
  var rightAnchor: NSLayoutXAxisAnchor { get }
  @available(iOS 9.0, *)
  var topAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var widthAnchor: NSLayoutDimension { get }
  @available(iOS 9.0, *)
  var heightAnchor: NSLayoutDimension { get }
  @available(iOS 9.0, *)
  var centerXAnchor: NSLayoutXAxisAnchor { get }
  @available(iOS 9.0, *)
  var centerYAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var firstBaselineAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var lastBaselineAnchor: NSLayoutYAxisAnchor { get }
}
extension UIView {
  @available(iOS 6.0, *)
  func constraintsAffectingLayoutFor(axis: UILayoutConstraintAxis) -> [NSLayoutConstraint]
  @available(iOS 6.0, *)
  func hasAmbiguousLayout() -> Bool
  @available(iOS 6.0, *)
  func exerciseAmbiguityInLayout()
}
extension UIView {
  @available(iOS 6.0, *)
  var restorationIdentifier: String?
  @available(iOS 6.0, *)
  func encodeRestorableState(coder: Coder)
  @available(iOS 6.0, *)
  func decodeRestorableState(coder: Coder)
}
extension UIView {
  @available(iOS 7.0, *)
  func snapshotViewAfter(screenUpdates afterUpdates: Bool) -> UIView
  @available(iOS 7.0, *)
  func resizableSnapshotViewFrom(rect: CGRect, afterScreenUpdates afterUpdates: Bool, withCapInsets capInsets: UIEdgeInsets) -> UIView
  @available(iOS 7.0, *)
  func drawHierarchyIn(rect: CGRect, afterScreenUpdates afterUpdates: Bool) -> Bool
}
