
@available(OSX 10.9, *)
enum NSStackViewGravity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Top
  static var Leading: NSStackViewGravity { get }
  case Center
  case Bottom
  static var Trailing: NSStackViewGravity { get }
}
@available(OSX 10.11, *)
enum NSStackViewDistribution : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case GravityAreas
  case Fill
  case FillEqually
  case FillProportionally
  case EqualSpacing
  case EqualCentering
}
@available(OSX 10.9, *)
typealias NSStackViewVisibilityPriority = Float
@available(OSX 10.9, *)
let NSStackViewVisibilityPriorityMustHold: NSStackViewVisibilityPriority
@available(OSX 10.9, *)
let NSStackViewVisibilityPriorityDetachOnlyIfNecessary: NSStackViewVisibilityPriority
@available(OSX 10.9, *)
let NSStackViewVisibilityPriorityNotVisible: NSStackViewVisibilityPriority
@available(OSX 10.9, *)
let NSStackViewSpacingUseDefault: CGFloat
@available(OSX 10.9, *)
class NSStackView : NSView {
  convenience init(views: [NSView])
  unowned(unsafe) var delegate: @sil_unmanaged NSStackViewDelegate?
  var orientation: NSUserInterfaceLayoutOrientation
  var alignment: NSLayoutAttribute
  var edgeInsets: EdgeInsets
  func add(aView: NSView, in gravity: NSStackViewGravity)
  func insert(aView: NSView, at index: Int, in gravity: NSStackViewGravity)
  func remove(aView: NSView)
  func viewsIn(gravity: NSStackViewGravity) -> [NSView]
  func setViews(views: [NSView], in gravity: NSStackViewGravity)
  var views: [NSView] { get }
  var detachedViews: [NSView] { get }
  @available(OSX 10.11, *)
  var detachesHiddenViews: Bool
  func setVisibilityPriority(priority: NSStackViewVisibilityPriority, forView aView: NSView)
  func visibilityPriorityFor(aView: NSView) -> NSStackViewVisibilityPriority
  var spacing: CGFloat
  func setCustomSpacing(spacing: CGFloat, after aView: NSView)
  func customSpacingAfter(aView: NSView) -> CGFloat
  @available(OSX 10.11, *)
  var distribution: NSStackViewDistribution
  func clippingResistancePriorityFor(orientation: NSLayoutConstraintOrientation) -> NSLayoutPriority
  func setClippingResistancePriority(clippingResistancePriority: NSLayoutPriority, forOrientation orientation: NSLayoutConstraintOrientation)
  func huggingPriorityFor(orientation: NSLayoutConstraintOrientation) -> NSLayoutPriority
  func setHuggingPriority(huggingPriority: NSLayoutPriority, forOrientation orientation: NSLayoutConstraintOrientation)
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
extension NSStackView {
  @available(OSX 10.11, *)
  var arrangedSubviews: [NSView] { get }
  @available(OSX 10.11, *)
  func addArrangedSubview(view: NSView)
  @available(OSX 10.11, *)
  func insertArrangedSubview(view: NSView, at index: Int)
  @available(OSX 10.11, *)
  func removeArrangedSubview(view: NSView)
}
protocol NSStackViewDelegate : ObjectProtocol {
  @available(OSX 10.9, *)
  optional func stackView(stackView: NSStackView, willDetach views: [NSView])
  @available(OSX 10.9, *)
  optional func stackView(stackView: NSStackView, didReattachViews views: [NSView])
}
extension NSStackView {
  @available(OSX, introduced=10.9, deprecated=10.11, message="Set -distribution to NSStackViewDistributionEqualSpacing instead.")
  var hasEqualSpacing: Bool
}
