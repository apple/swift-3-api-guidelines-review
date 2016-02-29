
enum UIViewAnimationCurve : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case easeInOut
  case easeIn
  case easeOut
  case linear
}
enum UIViewContentMode : Int {
  init?(rawValue rawValue: Int)
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
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case none
  case flipFromLeft
  case flipFromRight
  case curlUp
  case curlDown
}
struct UIViewAutoresizing : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var none: UIViewAutoresizing { get }
  static var flexibleLeftMargin: UIViewAutoresizing { get }
  static var flexibleWidth: UIViewAutoresizing { get }
  static var flexibleRightMargin: UIViewAutoresizing { get }
  static var flexibleTopMargin: UIViewAutoresizing { get }
  static var flexibleHeight: UIViewAutoresizing { get }
  static var flexibleBottomMargin: UIViewAutoresizing { get }
}
@available(iOS 4.0, *)
struct UIViewAnimationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
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
@available(iOS 7.0, *)
struct UIViewKeyframeAnimationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
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
@available(iOS 7.0, *)
enum UISystemAnimation : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case delete
}
@available(iOS 7.0, *)
enum UIViewTintAdjustmentMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case normal
  case dimmed
}
@available(iOS 9.0, *)
enum UISemanticContentAttribute : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case playback
  case spatial
  case forceLeftToRight
  case forceRightToLeft
}
@available(iOS 5.0, *)
enum UIUserInterfaceLayoutDirection : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case leftToRight
  case rightToLeft
}
protocol UICoordinateSpace : NSObjectProtocol {
  @available(iOS 8.0, *)
  func convert(_ point: CGPoint, to coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  func convert(_ point: CGPoint, from coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  func convert(_ rect: CGRect, to coordinateSpace: UICoordinateSpace) -> CGRect
  @available(iOS 8.0, *)
  func convert(_ rect: CGRect, from coordinateSpace: UICoordinateSpace) -> CGRect
  @available(iOS 8.0, *)
  var bounds: CGRect { get }
}
@available(iOS 2.0, *)
class UIView : UIResponder, NSCoding, UIAppearance, UIAppearanceContainer, UIDynamicItem, UITraitEnvironment, UICoordinateSpace, UIFocusEnvironment {
  class func layerClass() -> AnyClass
  init(frame frame: CGRect)
  init?(coder aDecoder: NSCoder)
  var isUserInteractionEnabled: Bool
  var tag: Int
  var layer: CALayer { get }
  @available(iOS 9.0, *)
  func canBecomeFocused() -> Bool
  @available(iOS 9.0, *)
  var isFocused: Bool { get }
  @available(iOS 9.0, *)
  class func userInterfaceLayoutDirection(for attribute: UISemanticContentAttribute) -> UIUserInterfaceLayoutDirection
  @available(iOS 9.0, *)
  var semanticContentAttribute: UISemanticContentAttribute
  @available(iOS 2.0, *)
  func encode(with aCoder: NSCoder)
  @available(iOS 2.0, *)
  class func appearance() -> Self
  @available(iOS 9.0, *)
  class func whenContained(inInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
  @available(iOS 8.0, *)
  class func forTraitCollection(_ trait: UITraitCollection) -> Self
  @available(iOS 9.0, *)
  class func forTraitCollection(_ trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
  @available(iOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  @available(iOS 9.0, *)
  var collisionBoundingPath: UIBezierPath { get }
  @available(iOS 8.0, *)
  var traitCollection: UITraitCollection { get }
  @available(iOS 8.0, *)
  func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?)
  @available(iOS 8.0, *)
  func convert(_ point: CGPoint, to coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  func convert(_ point: CGPoint, from coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  func convert(_ rect: CGRect, to coordinateSpace: UICoordinateSpace) -> CGRect
  @available(iOS 8.0, *)
  func convert(_ rect: CGRect, from coordinateSpace: UICoordinateSpace) -> CGRect
  @available(iOS 9.0, *)
  weak var preferredFocusedView: @sil_weak UIView? { get }
  @available(iOS 9.0, *)
  func setNeedsFocusUpdate()
  @available(iOS 9.0, *)
  func updateFocusIfNeeded()
  @available(iOS 9.0, *)
  func shouldUpdateFocus(in context: UIFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
}

extension UIView : CustomPlaygroundQuickLookable {
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
  func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView?
  func point(inside point: CGPoint, with event: UIEvent?) -> Bool
  func convert(_ point: CGPoint, to view: UIView?) -> CGPoint
  func convert(_ point: CGPoint, from view: UIView?) -> CGPoint
  func convert(_ rect: CGRect, to view: UIView?) -> CGRect
  func convert(_ rect: CGRect, from view: UIView?) -> CGRect
  var autoresizesSubviews: Bool
  var autoresizingMask: UIViewAutoresizing
  func sizeThatFits(_ size: CGSize) -> CGSize
  func sizeToFit()
}
extension UIView {
  var superview: UIView? { get }
  var subviews: [UIView] { get }
  var window: UIWindow? { get }
  func removeFromSuperview()
  func insertSubview(_ view: UIView, at index: Int)
  func exchangeSubview(at index1: Int, withSubviewAt index2: Int)
  func addSubview(_ view: UIView)
  func insertSubview(_ view: UIView, belowSubview siblingSubview: UIView)
  func insertSubview(_ view: UIView, aboveSubview siblingSubview: UIView)
  func bringSubview(toFront view: UIView)
  func sendSubview(toBack view: UIView)
  func didAddSubview(_ subview: UIView)
  func willRemoveSubview(_ subview: UIView)
  func willMove(toSuperview newSuperview: UIView?)
  func didMoveToSuperview()
  func willMove(to newWindow: UIWindow?)
  func didMoveToWindow()
  func isDescendant(of view: UIView) -> Bool
  func withTag(_ tag: Int) -> UIView?
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
  func draw(_ rect: CGRect)
  func setNeedsDisplay()
  func setNeedsDisplayIn(_ rect: CGRect)
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
  class func beginAnimations(_ animationID: String?, context context: UnsafeMutablePointer<Void>)
  class func commitAnimations()
  class func setAnimationDelegate(_ delegate: AnyObject?)
  class func setAnimationWillStart(_ selector: Selector)
  class func setAnimationDidStop(_ selector: Selector)
  class func setAnimationDuration(_ duration: NSTimeInterval)
  class func setAnimationDelay(_ delay: NSTimeInterval)
  class func setAnimationStart(_ startDate: NSDate)
  class func setAnimationCurve(_ curve: UIViewAnimationCurve)
  class func setAnimationRepeatCount(_ repeatCount: Float)
  class func setAnimationRepeatAutoreverses(_ repeatAutoreverses: Bool)
  class func setAnimationBeginsFromCurrentState(_ fromCurrentState: Bool)
  class func setAnimationTransition(_ transition: UIViewAnimationTransition, for view: UIView, cache cache: Bool)
  class func setAnimationsEnabled(_ enabled: Bool)
  class func areAnimationsEnabled() -> Bool
  @available(iOS 7.0, *)
  class func performWithoutAnimation(_ actionsWithoutAnimation: () -> Void)
  @available(iOS 9.0, *)
  class func inheritedAnimationDuration() -> NSTimeInterval
}
extension UIView {
  @available(iOS 4.0, *)
  class func animate(withDuration duration: NSTimeInterval, delay delay: NSTimeInterval, options options: UIViewAnimationOptions = [], animations animations: () -> Void, completion completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func animate(withDuration duration: NSTimeInterval, animations animations: () -> Void, completion completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func animate(withDuration duration: NSTimeInterval, animations animations: () -> Void)
  @available(iOS 7.0, *)
  class func animate(withDuration duration: NSTimeInterval, delay delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat, options options: UIViewAnimationOptions = [], animations animations: () -> Void, completion completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func transition(with view: UIView, duration duration: NSTimeInterval, options options: UIViewAnimationOptions = [], animations animations: (() -> Void)?, completion completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func transition(from fromView: UIView, to toView: UIView, duration duration: NSTimeInterval, options options: UIViewAnimationOptions = [], completion completion: ((Bool) -> Void)? = nil)
  @available(iOS 7.0, *)
  class func perform(_ animation: UISystemAnimation, on views: [UIView], options options: UIViewAnimationOptions = [], animations parallelAnimations: (() -> Void)?, completion completion: ((Bool) -> Void)? = nil)
}
extension UIView {
  @available(iOS 7.0, *)
  class func animateKeyframes(withDuration duration: NSTimeInterval, delay delay: NSTimeInterval, options options: UIViewKeyframeAnimationOptions = [], animations animations: () -> Void, completion completion: ((Bool) -> Void)? = nil)
  @available(iOS 7.0, *)
  class func addKeyframe(withRelativeStartTime frameStartTime: Double, relativeDuration frameDuration: Double, animations animations: () -> Void)
}
extension UIView {
  @available(iOS 3.2, *)
  var gestureRecognizers: [UIGestureRecognizer]?
  @available(iOS 3.2, *)
  func addGestureRecognizer(_ gestureRecognizer: UIGestureRecognizer)
  @available(iOS 3.2, *)
  func removeGestureRecognizer(_ gestureRecognizer: UIGestureRecognizer)
  @available(iOS 6.0, *)
  func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool
}
extension UIView {
  @available(iOS 7.0, *)
  func addMotionEffect(_ effect: UIMotionEffect)
  @available(iOS 7.0, *)
  func removeMotionEffect(_ effect: UIMotionEffect)
  @available(iOS 7.0, *)
  var motionEffects: [UIMotionEffect]
}
enum UILayoutConstraintAxis : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case horizontal
  case vertical
}
extension UIView {
  @available(iOS 6.0, *)
  var constraints: [NSLayoutConstraint] { get }
  @available(iOS 6.0, *)
  func addConstraint(_ constraint: NSLayoutConstraint)
  @available(iOS 6.0, *)
  func addConstraints(_ constraints: [NSLayoutConstraint])
  @available(iOS 6.0, *)
  func removeConstraint(_ constraint: NSLayoutConstraint)
  @available(iOS 6.0, *)
  func removeConstraints(_ constraints: [NSLayoutConstraint])
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
  func alignmentRect(forFrame frame: CGRect) -> CGRect
  @available(iOS 6.0, *)
  func frame(forAlignmentRect alignmentRect: CGRect) -> CGRect
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
  func contentHuggingPriority(for axis: UILayoutConstraintAxis) -> UILayoutPriority
  @available(iOS 6.0, *)
  func setContentHuggingPriority(_ priority: UILayoutPriority, for axis: UILayoutConstraintAxis)
  @available(iOS 6.0, *)
  func contentCompressionResistancePriority(for axis: UILayoutConstraintAxis) -> UILayoutPriority
  @available(iOS 6.0, *)
  func setContentCompressionResistancePriority(_ priority: UILayoutPriority, for axis: UILayoutConstraintAxis)
}
@available(iOS 6.0, *)
let UIViewNoIntrinsicMetric: CGFloat
@available(iOS 6.0, *)
let UILayoutFittingCompressedSize: CGSize
@available(iOS 6.0, *)
let UILayoutFittingExpandedSize: CGSize
extension UIView {
  @available(iOS 6.0, *)
  func systemLayoutSizeFitting(_ targetSize: CGSize) -> CGSize
  @available(iOS 8.0, *)
  func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority verticalFittingPriority: UILayoutPriority) -> CGSize
}
extension UIView {
  @available(iOS 9.0, *)
  var layoutGuides: [UILayoutGuide] { get }
  @available(iOS 9.0, *)
  func addLayoutGuide(_ layoutGuide: UILayoutGuide)
  @available(iOS 9.0, *)
  func removeLayoutGuide(_ layoutGuide: UILayoutGuide)
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
  func constraintsAffectingLayout(for axis: UILayoutConstraintAxis) -> [NSLayoutConstraint]
  @available(iOS 6.0, *)
  func hasAmbiguousLayout() -> Bool
  @available(iOS 6.0, *)
  func exerciseAmbiguityInLayout()
}
extension UIView {
  @available(iOS 6.0, *)
  var restorationIdentifier: String?
  @available(iOS 6.0, *)
  func encodeRestorableState(with coder: NSCoder)
  @available(iOS 6.0, *)
  func decodeRestorableState(with coder: NSCoder)
}
extension UIView {
  @available(iOS 7.0, *)
  func snapshotView(afterScreenUpdates afterUpdates: Bool) -> UIView
  @available(iOS 7.0, *)
  func resizableSnapshotView(from rect: CGRect, afterScreenUpdates afterUpdates: Bool, withCapInsets capInsets: UIEdgeInsets) -> UIView
  @available(iOS 7.0, *)
  func drawHierarchy(in rect: CGRect, afterScreenUpdates afterUpdates: Bool) -> Bool
}
