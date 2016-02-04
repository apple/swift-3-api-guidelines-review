
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
@available(tvOS 4.0, *)
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
@available(tvOS 7.0, *)
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
@available(tvOS 7.0, *)
enum UISystemAnimation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Delete
}
@available(tvOS 7.0, *)
enum UIViewTintAdjustmentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Normal
  case Dimmed
}
@available(tvOS 9.0, *)
enum UISemanticContentAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Playback
  case Spatial
  case ForceLeftToRight
  case ForceRightToLeft
}
@available(tvOS 5.0, *)
enum UIUserInterfaceLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LeftToRight
  case RightToLeft
}
protocol UICoordinateSpace : NSObjectProtocol {
  @available(tvOS 8.0, *)
  func convertPoint(point: CGPoint, toCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(tvOS 8.0, *)
  func convertPoint(point: CGPoint, fromCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(tvOS 8.0, *)
  func convertRect(rect: CGRect, toCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGRect
  @available(tvOS 8.0, *)
  func convertRect(rect: CGRect, fromCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGRect
  @available(tvOS 8.0, *)
  var bounds: CGRect { get }
}
@available(tvOS 2.0, *)
class UIView : UIResponder, NSCoding, UIAppearance, UIAppearanceContainer, UIDynamicItem, UITraitEnvironment, UICoordinateSpace, UIFocusEnvironment {
  class func layerClass() -> AnyClass
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  var userInteractionEnabled: Bool
  var tag: Int
  var layer: CALayer { get }
  @available(tvOS 9.0, *)
  func canBecomeFocused() -> Bool
  @available(tvOS 9.0, *)
  var focused: Bool { get }
  @available(tvOS 9.0, *)
  class func userInterfaceLayoutDirectionForSemanticContentAttribute(attribute: UISemanticContentAttribute) -> UIUserInterfaceLayoutDirection
  @available(tvOS 9.0, *)
  var semanticContentAttribute: UISemanticContentAttribute
  convenience init()
  @available(tvOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(tvOS 2.0, *)
  class func appearance() -> Self
  @available(tvOS 9.0, *)
  class func appearanceWhenContainedInInstancesOfClasses(containerTypes: [AnyObject.Type]) -> Self
  @available(tvOS 8.0, *)
  class func appearanceForTraitCollection(trait: UITraitCollection) -> Self
  @available(tvOS 9.0, *)
  class func appearanceForTraitCollection(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
  @available(tvOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  @available(tvOS 9.0, *)
  var collisionBoundingPath: UIBezierPath { get }
  @available(tvOS 8.0, *)
  var traitCollection: UITraitCollection { get }
  @available(tvOS 8.0, *)
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
  @available(tvOS 8.0, *)
  func convertPoint(point: CGPoint, toCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(tvOS 8.0, *)
  func convertPoint(point: CGPoint, fromCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(tvOS 8.0, *)
  func convertRect(rect: CGRect, toCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGRect
  @available(tvOS 8.0, *)
  func convertRect(rect: CGRect, fromCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGRect
  @available(tvOS 9.0, *)
  weak var preferredFocusedView: @sil_weak UIView? { get }
  @available(tvOS 9.0, *)
  func setNeedsFocusUpdate()
  @available(tvOS 9.0, *)
  func updateFocusIfNeeded()
  @available(tvOS 9.0, *)
  func shouldUpdateFocusInContext(context: UIFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}

extension UIView : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
extension UIView {
  var frame: CGRect
  var bounds: CGRect
  var center: CGPoint
  var transform: CGAffineTransform
  @available(tvOS 4.0, *)
  var contentScaleFactor: CGFloat
  func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView?
  func pointInside(point: CGPoint, withEvent event: UIEvent?) -> Bool
  func convertPoint(point: CGPoint, toView view: UIView?) -> CGPoint
  func convertPoint(point: CGPoint, fromView view: UIView?) -> CGPoint
  func convertRect(rect: CGRect, toView view: UIView?) -> CGRect
  func convertRect(rect: CGRect, fromView view: UIView?) -> CGRect
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
  func insertSubview(view: UIView, atIndex index: Int)
  func exchangeSubviewAtIndex(index1: Int, withSubviewAtIndex index2: Int)
  func addSubview(view: UIView)
  func insertSubview(view: UIView, belowSubview siblingSubview: UIView)
  func insertSubview(view: UIView, aboveSubview siblingSubview: UIView)
  func bringSubviewToFront(view: UIView)
  func sendSubviewToBack(view: UIView)
  func didAddSubview(subview: UIView)
  func willRemoveSubview(subview: UIView)
  func willMoveToSuperview(newSuperview: UIView?)
  func didMoveToSuperview()
  func willMoveToWindow(newWindow: UIWindow?)
  func didMoveToWindow()
  func isDescendantOfView(view: UIView) -> Bool
  func viewWithTag(tag: Int) -> UIView?
  func setNeedsLayout()
  func layoutIfNeeded()
  func layoutSubviews()
  @available(tvOS 8.0, *)
  var layoutMargins: UIEdgeInsets
  @available(tvOS 8.0, *)
  var preservesSuperviewLayoutMargins: Bool
  @available(tvOS 8.0, *)
  func layoutMarginsDidChange()
  @available(tvOS 9.0, *)
  var layoutMarginsGuide: UILayoutGuide { get }
  @available(tvOS 9.0, *)
  var readableContentGuide: UILayoutGuide { get }
}
extension UIView {
  func drawRect(rect: CGRect)
  func setNeedsDisplay()
  func setNeedsDisplayInRect(rect: CGRect)
  var clipsToBounds: Bool
  @NSCopying var backgroundColor: UIColor?
  var alpha: CGFloat
  var opaque: Bool
  var clearsContextBeforeDrawing: Bool
  var hidden: Bool
  var contentMode: UIViewContentMode
  @available(tvOS 8.0, *)
  var maskView: UIView?
  @available(tvOS 7.0, *)
  var tintColor: UIColor!
  @available(tvOS 7.0, *)
  var tintAdjustmentMode: UIViewTintAdjustmentMode
  @available(tvOS 7.0, *)
  func tintColorDidChange()
}
extension UIView {
  class func beginAnimations(animationID: String?, context: UnsafeMutablePointer<Void>)
  class func commitAnimations()
  class func setAnimationDelegate(delegate: AnyObject?)
  class func setAnimationWillStartSelector(selector: Selector)
  class func setAnimationDidStopSelector(selector: Selector)
  class func setAnimationDuration(duration: NSTimeInterval)
  class func setAnimationDelay(delay: NSTimeInterval)
  class func setAnimationStartDate(startDate: NSDate)
  class func setAnimationCurve(curve: UIViewAnimationCurve)
  class func setAnimationRepeatCount(repeatCount: Float)
  class func setAnimationRepeatAutoreverses(repeatAutoreverses: Bool)
  class func setAnimationBeginsFromCurrentState(fromCurrentState: Bool)
  class func setAnimationTransition(transition: UIViewAnimationTransition, forView view: UIView, cache: Bool)
  class func setAnimationsEnabled(enabled: Bool)
  class func areAnimationsEnabled() -> Bool
  @available(tvOS 7.0, *)
  class func performWithoutAnimation(actionsWithoutAnimation: () -> Void)
  @available(tvOS 9.0, *)
  class func inheritedAnimationDuration() -> NSTimeInterval
}
extension UIView {
  @available(tvOS 4.0, *)
  class func animateWithDuration(duration: NSTimeInterval, delay: NSTimeInterval, options: UIViewAnimationOptions, animations: () -> Void, completion: ((Bool) -> Void)?)
  @available(tvOS 4.0, *)
  class func animateWithDuration(duration: NSTimeInterval, animations: () -> Void, completion: ((Bool) -> Void)?)
  @available(tvOS 4.0, *)
  class func animateWithDuration(duration: NSTimeInterval, animations: () -> Void)
  @available(tvOS 7.0, *)
  class func animateWithDuration(duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat, options: UIViewAnimationOptions, animations: () -> Void, completion: ((Bool) -> Void)?)
  @available(tvOS 4.0, *)
  class func transitionWithView(view: UIView, duration: NSTimeInterval, options: UIViewAnimationOptions, animations: (() -> Void)?, completion: ((Bool) -> Void)?)
  @available(tvOS 4.0, *)
  class func transitionFromView(fromView: UIView, toView: UIView, duration: NSTimeInterval, options: UIViewAnimationOptions, completion: ((Bool) -> Void)?)
  @available(tvOS 7.0, *)
  class func performSystemAnimation(animation: UISystemAnimation, onViews views: [UIView], options: UIViewAnimationOptions, animations parallelAnimations: (() -> Void)?, completion: ((Bool) -> Void)?)
}
extension UIView {
  @available(tvOS 7.0, *)
  class func animateKeyframesWithDuration(duration: NSTimeInterval, delay: NSTimeInterval, options: UIViewKeyframeAnimationOptions, animations: () -> Void, completion: ((Bool) -> Void)?)
  @available(tvOS 7.0, *)
  class func addKeyframeWithRelativeStartTime(frameStartTime: Double, relativeDuration frameDuration: Double, animations: () -> Void)
}
extension UIView {
  @available(tvOS 3.2, *)
  var gestureRecognizers: [UIGestureRecognizer]?
  @available(tvOS 3.2, *)
  func addGestureRecognizer(gestureRecognizer: UIGestureRecognizer)
  @available(tvOS 3.2, *)
  func removeGestureRecognizer(gestureRecognizer: UIGestureRecognizer)
  @available(tvOS 6.0, *)
  func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool
}
extension UIView {
  @available(tvOS 7.0, *)
  func addMotionEffect(effect: UIMotionEffect)
  @available(tvOS 7.0, *)
  func removeMotionEffect(effect: UIMotionEffect)
  @available(tvOS 7.0, *)
  var motionEffects: [UIMotionEffect]
}
enum UILayoutConstraintAxis : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
extension UIView {
  @available(tvOS 6.0, *)
  var constraints: [NSLayoutConstraint] { get }
  @available(tvOS 6.0, *)
  func addConstraint(constraint: NSLayoutConstraint)
  @available(tvOS 6.0, *)
  func addConstraints(constraints: [NSLayoutConstraint])
  @available(tvOS 6.0, *)
  func removeConstraint(constraint: NSLayoutConstraint)
  @available(tvOS 6.0, *)
  func removeConstraints(constraints: [NSLayoutConstraint])
}
extension UIView {
  @available(tvOS 6.0, *)
  func updateConstraintsIfNeeded()
  @available(tvOS 6.0, *)
  func updateConstraints()
  @available(tvOS 6.0, *)
  func needsUpdateConstraints() -> Bool
  @available(tvOS 6.0, *)
  func setNeedsUpdateConstraints()
}
extension UIView {
  @available(tvOS 6.0, *)
  var translatesAutoresizingMaskIntoConstraints: Bool
  @available(tvOS 6.0, *)
  class func requiresConstraintBasedLayout() -> Bool
}
extension UIView {
  @available(tvOS 6.0, *)
  func alignmentRectForFrame(frame: CGRect) -> CGRect
  @available(tvOS 6.0, *)
  func frameForAlignmentRect(alignmentRect: CGRect) -> CGRect
  @available(tvOS 6.0, *)
  func alignmentRectInsets() -> UIEdgeInsets
  @available(tvOS 9.0, *)
  var viewForFirstBaselineLayout: UIView { get }
  @available(tvOS 9.0, *)
  var viewForLastBaselineLayout: UIView { get }
  @available(tvOS 6.0, *)
  func intrinsicContentSize() -> CGSize
  @available(tvOS 6.0, *)
  func invalidateIntrinsicContentSize()
  @available(tvOS 6.0, *)
  func contentHuggingPriorityForAxis(axis: UILayoutConstraintAxis) -> UILayoutPriority
  @available(tvOS 6.0, *)
  func setContentHuggingPriority(priority: UILayoutPriority, forAxis axis: UILayoutConstraintAxis)
  @available(tvOS 6.0, *)
  func contentCompressionResistancePriorityForAxis(axis: UILayoutConstraintAxis) -> UILayoutPriority
  @available(tvOS 6.0, *)
  func setContentCompressionResistancePriority(priority: UILayoutPriority, forAxis axis: UILayoutConstraintAxis)
}
@available(tvOS 6.0, *)
let UIViewNoIntrinsicMetric: CGFloat
@available(tvOS 6.0, *)
let UILayoutFittingCompressedSize: CGSize
@available(tvOS 6.0, *)
let UILayoutFittingExpandedSize: CGSize
extension UIView {
  @available(tvOS 6.0, *)
  func systemLayoutSizeFittingSize(targetSize: CGSize) -> CGSize
  @available(tvOS 8.0, *)
  func systemLayoutSizeFittingSize(targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize
}
extension UIView {
  @available(tvOS 9.0, *)
  var layoutGuides: [UILayoutGuide] { get }
  @available(tvOS 9.0, *)
  func addLayoutGuide(layoutGuide: UILayoutGuide)
  @available(tvOS 9.0, *)
  func removeLayoutGuide(layoutGuide: UILayoutGuide)
}
extension UIView {
  @available(tvOS 9.0, *)
  var leadingAnchor: NSLayoutXAxisAnchor { get }
  @available(tvOS 9.0, *)
  var trailingAnchor: NSLayoutXAxisAnchor { get }
  @available(tvOS 9.0, *)
  var leftAnchor: NSLayoutXAxisAnchor { get }
  @available(tvOS 9.0, *)
  var rightAnchor: NSLayoutXAxisAnchor { get }
  @available(tvOS 9.0, *)
  var topAnchor: NSLayoutYAxisAnchor { get }
  @available(tvOS 9.0, *)
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  @available(tvOS 9.0, *)
  var widthAnchor: NSLayoutDimension { get }
  @available(tvOS 9.0, *)
  var heightAnchor: NSLayoutDimension { get }
  @available(tvOS 9.0, *)
  var centerXAnchor: NSLayoutXAxisAnchor { get }
  @available(tvOS 9.0, *)
  var centerYAnchor: NSLayoutYAxisAnchor { get }
  @available(tvOS 9.0, *)
  var firstBaselineAnchor: NSLayoutYAxisAnchor { get }
  @available(tvOS 9.0, *)
  var lastBaselineAnchor: NSLayoutYAxisAnchor { get }
}
extension UIView {
  @available(tvOS 6.0, *)
  func constraintsAffectingLayoutForAxis(axis: UILayoutConstraintAxis) -> [NSLayoutConstraint]
  @available(tvOS 6.0, *)
  func hasAmbiguousLayout() -> Bool
  @available(tvOS 6.0, *)
  func exerciseAmbiguityInLayout()
}
extension UIView {
  @available(tvOS 6.0, *)
  var restorationIdentifier: String?
  @available(tvOS 6.0, *)
  func encodeRestorableStateWithCoder(coder: NSCoder)
  @available(tvOS 6.0, *)
  func decodeRestorableStateWithCoder(coder: NSCoder)
}
extension UIView {
  @available(tvOS 7.0, *)
  func snapshotViewAfterScreenUpdates(afterUpdates: Bool) -> UIView
  @available(tvOS 7.0, *)
  func resizableSnapshotViewFromRect(rect: CGRect, afterScreenUpdates afterUpdates: Bool, withCapInsets capInsets: UIEdgeInsets) -> UIView
  @available(tvOS 7.0, *)
  func drawViewHierarchyInRect(rect: CGRect, afterScreenUpdates afterUpdates: Bool) -> Bool
}
