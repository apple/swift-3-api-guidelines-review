
enum UIViewAnimationCurve : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case easeInOut
  case easeIn
  case easeOut
  case linear
}
enum UIViewContentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case scaleToFill
  case scaleAspectFit
  case scaleAspectFill
  case redraw
  case center
  case top
  case bottom
  case left
  case right
  case topLeft
  case topRight
  case bottomLeft
  case bottomRight
}
enum UIViewAnimationTransition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case flipFromLeft
  case flipFromRight
  case curlUp
  case curlDown
}
struct UIViewAutoresizing : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var none: UIViewAutoresizing { get }
  static var flexibleLeftMargin: UIViewAutoresizing { get }
  static var flexibleWidth: UIViewAutoresizing { get }
  static var flexibleRightMargin: UIViewAutoresizing { get }
  static var flexibleTopMargin: UIViewAutoresizing { get }
  static var flexibleHeight: UIViewAutoresizing { get }
  static var flexibleBottomMargin: UIViewAutoresizing { get }
}
@available(tvOS 4.0, *)
struct UIViewAnimationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var layoutSubviews: UIViewAnimationOptions { get }
  static var allowUserInteraction: UIViewAnimationOptions { get }
  static var beginFromCurrentState: UIViewAnimationOptions { get }
  static var `repeat`: UIViewAnimationOptions { get }
  static var autoreverse: UIViewAnimationOptions { get }
  static var overrideInheritedDuration: UIViewAnimationOptions { get }
  static var overrideInheritedCurve: UIViewAnimationOptions { get }
  static var allowAnimatedContent: UIViewAnimationOptions { get }
  static var showHideTransitionViews: UIViewAnimationOptions { get }
  static var overrideInheritedOptions: UIViewAnimationOptions { get }
  static var curveEaseInOut: UIViewAnimationOptions { get }
  static var curveEaseIn: UIViewAnimationOptions { get }
  static var curveEaseOut: UIViewAnimationOptions { get }
  static var curveLinear: UIViewAnimationOptions { get }
  static var transitionNone: UIViewAnimationOptions { get }
  static var transitionFlipFromLeft: UIViewAnimationOptions { get }
  static var transitionFlipFromRight: UIViewAnimationOptions { get }
  static var transitionCurlUp: UIViewAnimationOptions { get }
  static var transitionCurlDown: UIViewAnimationOptions { get }
  static var transitionCrossDissolve: UIViewAnimationOptions { get }
  static var transitionFlipFromTop: UIViewAnimationOptions { get }
  static var transitionFlipFromBottom: UIViewAnimationOptions { get }
}
@available(tvOS 7.0, *)
struct UIViewKeyframeAnimationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var layoutSubviews: UIViewKeyframeAnimationOptions { get }
  static var allowUserInteraction: UIViewKeyframeAnimationOptions { get }
  static var beginFromCurrentState: UIViewKeyframeAnimationOptions { get }
  static var `repeat`: UIViewKeyframeAnimationOptions { get }
  static var autoreverse: UIViewKeyframeAnimationOptions { get }
  static var overrideInheritedDuration: UIViewKeyframeAnimationOptions { get }
  static var overrideInheritedOptions: UIViewKeyframeAnimationOptions { get }
  static var calculationModeLinear: UIViewKeyframeAnimationOptions { get }
  static var calculationModeDiscrete: UIViewKeyframeAnimationOptions { get }
  static var calculationModePaced: UIViewKeyframeAnimationOptions { get }
  static var calculationModeCubic: UIViewKeyframeAnimationOptions { get }
  static var calculationModeCubicPaced: UIViewKeyframeAnimationOptions { get }
}
@available(tvOS 7.0, *)
enum UISystemAnimation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case delete
}
@available(tvOS 7.0, *)
enum UIViewTintAdjustmentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case normal
  case dimmed
}
@available(tvOS 9.0, *)
enum UISemanticContentAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case playback
  case spatial
  case forceLeftToRight
  case forceRightToLeft
}
@available(tvOS 5.0, *)
enum UIUserInterfaceLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case leftToRight
  case rightToLeft
}
protocol UICoordinateSpace : ObjectProtocol {
  @available(tvOS 8.0, *)
  func convert(point: CGPoint, to coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(tvOS 8.0, *)
  func convert(point: CGPoint, from coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(tvOS 8.0, *)
  func convert(rect: CGRect, to coordinateSpace: UICoordinateSpace) -> CGRect
  @available(tvOS 8.0, *)
  func convert(rect: CGRect, from coordinateSpace: UICoordinateSpace) -> CGRect
  @available(tvOS 8.0, *)
  var bounds: CGRect { get }
}
@available(tvOS 2.0, *)
class UIView : UIResponder, Coding, UIAppearance, UIAppearanceContainer, UIDynamicItem, UITraitEnvironment, UICoordinateSpace, UIFocusEnvironment {
  class func layerClass() -> AnyClass
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  var isUserInteractionEnabled: Bool
  var tag: Int
  var layer: CALayer { get }
  @available(tvOS 9.0, *)
  func canBecomeFocused() -> Bool
  @available(tvOS 9.0, *)
  var isFocused: Bool { get }
  @available(tvOS 9.0, *)
  class func userInterfaceLayoutDirection(forSemanticContentAttribute attribute: UISemanticContentAttribute) -> UIUserInterfaceLayoutDirection
  @available(tvOS 9.0, *)
  var semanticContentAttribute: UISemanticContentAttribute
  convenience init()
  @available(tvOS 2.0, *)
  func encodeWith(aCoder: Coder)
  @available(tvOS 2.0, *)
  class func appearance() -> Self
  @available(tvOS 9.0, *)
  class func appearanceWhenContainedInInstances(ofClasses containerTypes: [AnyObject.Type]) -> Self
  @available(tvOS 8.0, *)
  class func appearance(forTraitCollection trait: UITraitCollection) -> Self
  @available(tvOS 9.0, *)
  class func appearance(forTraitCollection trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
  @available(tvOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  @available(tvOS 9.0, *)
  var collisionBoundingPath: UIBezierPath { get }
  @available(tvOS 8.0, *)
  var traitCollection: UITraitCollection { get }
  @available(tvOS 8.0, *)
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
  @available(tvOS 8.0, *)
  func convert(point: CGPoint, to coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(tvOS 8.0, *)
  func convert(point: CGPoint, from coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(tvOS 8.0, *)
  func convert(rect: CGRect, to coordinateSpace: UICoordinateSpace) -> CGRect
  @available(tvOS 8.0, *)
  func convert(rect: CGRect, from coordinateSpace: UICoordinateSpace) -> CGRect
  @available(tvOS 9.0, *)
  weak var preferredFocusedView: @sil_weak UIView? { get }
  @available(tvOS 9.0, *)
  func setNeedsFocusUpdate()
  @available(tvOS 9.0, *)
  func updateFocusIfNeeded()
  @available(tvOS 9.0, *)
  func shouldUpdateFocus(in context: UIFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  func didUpdateFocus(in context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
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
  func point(inside point: CGPoint, withEvent event: UIEvent?) -> Bool
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
  func exchangeSubview(at index1: Int, withSubviewAt index2: Int)
  func addSubview(view: UIView)
  func insertSubview(view: UIView, belowSubview siblingSubview: UIView)
  func insertSubview(view: UIView, aboveSubview siblingSubview: UIView)
  func bringSubview(toFront view: UIView)
  func sendSubviewToBack(view: UIView)
  func didAddSubview(subview: UIView)
  func willRemoveSubview(subview: UIView)
  func willMove(toSuperview newSuperview: UIView?)
  func didMoveToSuperview()
  func willMove(to newWindow: UIWindow?)
  func didMoveToWindow()
  func isDescendant(of view: UIView) -> Bool
  func withTag(tag: Int) -> UIView?
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
  @available(tvOS 8.0, *)
  var mask: UIView?
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
  @available(tvOS 7.0, *)
  class func performWithoutAnimation(actionsWithoutAnimation: () -> Void)
  @available(tvOS 9.0, *)
  class func inheritedAnimationDuration() -> TimeInterval
}
extension UIView {
  @available(tvOS 4.0, *)
  class func animate(duration duration: TimeInterval, delay: TimeInterval, options: UIViewAnimationOptions = [], animations: () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(tvOS 4.0, *)
  class func animate(duration duration: TimeInterval, animations: () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(tvOS 4.0, *)
  class func animate(duration duration: TimeInterval, animations: () -> Void)
  @available(tvOS 7.0, *)
  class func animate(duration duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat, options: UIViewAnimationOptions = [], animations: () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(tvOS 4.0, *)
  class func transition(withView view: UIView, duration: TimeInterval, options: UIViewAnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(tvOS 4.0, *)
  class func transition(from fromView: UIView, to toView: UIView, duration: TimeInterval, options: UIViewAnimationOptions = [], completion: ((Bool) -> Void)? = nil)
  @available(tvOS 7.0, *)
  class func perform(animation: UISystemAnimation, on views: [UIView], options: UIViewAnimationOptions = [], animations parallelAnimations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
}
extension UIView {
  @available(tvOS 7.0, *)
  class func animateKeyframes(withDuration duration: TimeInterval, delay: TimeInterval, options: UIViewKeyframeAnimationOptions = [], animations: () -> Void, completion: ((Bool) -> Void)? = nil)
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
  case horizontal
  case vertical
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
  func alignmentRect(forFrame frame: CGRect) -> CGRect
  @available(tvOS 6.0, *)
  func frame(forAlignmentRect alignmentRect: CGRect) -> CGRect
  @available(tvOS 6.0, *)
  func alignmentRectInsets() -> UIEdgeInsets
  @available(tvOS 9.0, *)
  var forFirstBaselineLayout: UIView { get }
  @available(tvOS 9.0, *)
  var forLastBaselineLayout: UIView { get }
  @available(tvOS 6.0, *)
  func intrinsicContentSize() -> CGSize
  @available(tvOS 6.0, *)
  func invalidateIntrinsicContentSize()
  @available(tvOS 6.0, *)
  func contentHuggingPriority(forAxis axis: UILayoutConstraintAxis) -> UILayoutPriority
  @available(tvOS 6.0, *)
  func setContentHuggingPriority(priority: UILayoutPriority, forAxis axis: UILayoutConstraintAxis)
  @available(tvOS 6.0, *)
  func contentCompressionResistancePriority(forAxis axis: UILayoutConstraintAxis) -> UILayoutPriority
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
  func systemLayoutSizeFitting(targetSize: CGSize) -> CGSize
  @available(tvOS 8.0, *)
  func systemLayoutSizeFitting(targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize
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
  func constraintsAffectingLayout(forAxis axis: UILayoutConstraintAxis) -> [NSLayoutConstraint]
  @available(tvOS 6.0, *)
  func hasAmbiguousLayout() -> Bool
  @available(tvOS 6.0, *)
  func exerciseAmbiguityInLayout()
}
extension UIView {
  @available(tvOS 6.0, *)
  var restorationIdentifier: String?
  @available(tvOS 6.0, *)
  func encodeRestorableState(withCoder coder: Coder)
  @available(tvOS 6.0, *)
  func decodeRestorableState(withCoder coder: Coder)
}
extension UIView {
  @available(tvOS 7.0, *)
  func snapshotView(afterScreenUpdates afterUpdates: Bool) -> UIView
  @available(tvOS 7.0, *)
  func resizableSnapshotView(from rect: CGRect, afterScreenUpdates afterUpdates: Bool, withCapInsets capInsets: UIEdgeInsets) -> UIView
  @available(tvOS 7.0, *)
  func drawHierarchy(in rect: CGRect, afterScreenUpdates afterUpdates: Bool) -> Bool
}
