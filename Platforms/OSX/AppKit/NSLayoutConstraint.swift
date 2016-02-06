
enum NSLayoutRelation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LessThanOrEqual
  case Equal
  case GreaterThanOrEqual
}
enum NSLayoutAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Left
  case Right
  case Top
  case Bottom
  case Leading
  case Trailing
  case Width
  case Height
  case CenterX
  case CenterY
  case Baseline
  static var LastBaseline: NSLayoutAttribute { get }
  @available(OSX 10.11, *)
  case FirstBaseline
  case NotAnAttribute
}
struct NSLayoutFormatOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AlignAllLeft: NSLayoutFormatOptions { get }
  static var AlignAllRight: NSLayoutFormatOptions { get }
  static var AlignAllTop: NSLayoutFormatOptions { get }
  static var AlignAllBottom: NSLayoutFormatOptions { get }
  static var AlignAllLeading: NSLayoutFormatOptions { get }
  static var AlignAllTrailing: NSLayoutFormatOptions { get }
  static var AlignAllCenterX: NSLayoutFormatOptions { get }
  static var AlignAllCenterY: NSLayoutFormatOptions { get }
  static var AlignAllBaseline: NSLayoutFormatOptions { get }
  static var AlignAllLastBaseline: NSLayoutFormatOptions { get }
  @available(OSX 10.11, *)
  static var AlignAllFirstBaseline: NSLayoutFormatOptions { get }
  static var AlignmentMask: NSLayoutFormatOptions { get }
  static var DirectionLeadingToTrailing: NSLayoutFormatOptions { get }
  static var DirectionLeftToRight: NSLayoutFormatOptions { get }
  static var DirectionRightToLeft: NSLayoutFormatOptions { get }
  static var DirectionMask: NSLayoutFormatOptions { get }
}
enum NSLayoutConstraintOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
@available(OSX 10.7, *)
typealias NSLayoutPriority = Float
@available(OSX 10.7, *)
let NSLayoutPriorityRequired: NSLayoutPriority
@available(OSX 10.7, *)
let NSLayoutPriorityDefaultHigh: NSLayoutPriority
@available(OSX 10.7, *)
let NSLayoutPriorityDragThatCanResizeWindow: NSLayoutPriority
@available(OSX 10.7, *)
let NSLayoutPriorityWindowSizeStayPut: NSLayoutPriority
@available(OSX 10.7, *)
let NSLayoutPriorityDragThatCannotResizeWindow: NSLayoutPriority
@available(OSX 10.7, *)
let NSLayoutPriorityDefaultLow: NSLayoutPriority
@available(OSX 10.7, *)
let NSLayoutPriorityFittingSizeCompression: NSLayoutPriority
@available(OSX 10.7, *)
class NSLayoutConstraint : Object, NSAnimatablePropertyContainer {
  class func constraintsWith(visualFormat format: String, options opts: NSLayoutFormatOptions = [], metrics: [String : Number]?, views: [String : AnyObject]) -> [NSLayoutConstraint]
  convenience init(item view1: AnyObject, attribute attr1: NSLayoutAttribute, relatedBy relation: NSLayoutRelation, toItem view2: AnyObject?, attribute attr2: NSLayoutAttribute, multiplier: CGFloat, constant c: CGFloat)
  var priority: NSLayoutPriority
  var shouldBeArchived: Bool
  unowned(unsafe) var firstItem: @sil_unmanaged AnyObject { get }
  var firstAttribute: NSLayoutAttribute { get }
  var relation: NSLayoutRelation { get }
  unowned(unsafe) var secondItem: @sil_unmanaged AnyObject? { get }
  var secondAttribute: NSLayoutAttribute { get }
  var multiplier: CGFloat { get }
  var constant: CGFloat
  @available(OSX 10.10, *)
  var isActive: Bool
  @available(OSX 10.10, *)
  class func activateConstraints(constraints: [NSLayoutConstraint])
  @available(OSX 10.10, *)
  class func deactivateConstraints(constraints: [NSLayoutConstraint])
  init()
  @available(OSX 10.5, *)
  func animator() -> Self
  @available(OSX 10.5, *)
  var animations: [String : AnyObject]
  @available(OSX 10.5, *)
  func animationFor(key key: String) -> AnyObject?
  @available(OSX 10.5, *)
  class func defaultAnimationFor(key key: String) -> AnyObject?
}
extension NSLayoutConstraint {
  var identifier: String?
}
extension NSView {
  @available(OSX 10.11, *)
  var leadingAnchor: NSLayoutXAxisAnchor { get }
  @available(OSX 10.11, *)
  var trailingAnchor: NSLayoutXAxisAnchor { get }
  @available(OSX 10.11, *)
  var leftAnchor: NSLayoutXAxisAnchor { get }
  @available(OSX 10.11, *)
  var rightAnchor: NSLayoutXAxisAnchor { get }
  @available(OSX 10.11, *)
  var topAnchor: NSLayoutYAxisAnchor { get }
  @available(OSX 10.11, *)
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  @available(OSX 10.11, *)
  var widthAnchor: NSLayoutDimension { get }
  @available(OSX 10.11, *)
  var heightAnchor: NSLayoutDimension { get }
  @available(OSX 10.11, *)
  var centerXAnchor: NSLayoutXAxisAnchor { get }
  @available(OSX 10.11, *)
  var centerYAnchor: NSLayoutYAxisAnchor { get }
  @available(OSX 10.11, *)
  var firstBaselineAnchor: NSLayoutYAxisAnchor { get }
  @available(OSX 10.11, *)
  var lastBaselineAnchor: NSLayoutYAxisAnchor { get }
  @available(OSX 10.7, *)
  var constraints: [NSLayoutConstraint] { get }
  @available(OSX 10.7, *)
  func addConstraint(constraint: NSLayoutConstraint)
  @available(OSX 10.7, *)
  func addConstraints(constraints: [NSLayoutConstraint])
  @available(OSX 10.7, *)
  func removeConstraint(constraint: NSLayoutConstraint)
  @available(OSX 10.7, *)
  func removeConstraints(constraints: [NSLayoutConstraint])
}
extension NSWindow {
  @available(OSX 10.7, *)
  func updateConstraintsIfNeeded()
  @available(OSX 10.7, *)
  func layoutIfNeeded()
}
extension NSView {
  @available(OSX 10.7, *)
  func updateConstraintsForSubtreeIfNeeded()
  @available(OSX 10.7, *)
  func updateConstraints()
  @available(OSX 10.7, *)
  var needsUpdateConstraints: Bool
  @available(OSX 10.7, *)
  func layoutSubtreeIfNeeded()
  @available(OSX 10.7, *)
  func layout()
  @available(OSX 10.7, *)
  var needsLayout: Bool
}
extension NSView {
  @available(OSX 10.7, *)
  var translatesAutoresizingMaskIntoConstraints: Bool
  @available(OSX 10.7, *)
  class func requiresConstraintBasedLayout() -> Bool
}
extension NSView {
  @available(OSX 10.7, *)
  func alignmentRectFor(frame frame: Rect) -> Rect
  @available(OSX 10.7, *)
  func frameFor(alignmentRect alignmentRect: Rect) -> Rect
  @available(OSX 10.7, *)
  var alignmentRectInsets: EdgeInsets { get }
  @available(OSX 10.11, *)
  var firstBaselineOffsetFromTop: CGFloat { get }
  @available(OSX 10.11, *)
  var lastBaselineOffsetFromBottom: CGFloat { get }
  @available(OSX 10.7, *)
  var baselineOffsetFromBottom: CGFloat { get }
  @available(OSX 10.7, *)
  var intrinsicContentSize: Size { get }
  @available(OSX 10.7, *)
  func invalidateIntrinsicContentSize()
  @available(OSX 10.7, *)
  func contentHuggingPriorityFor(orientation: NSLayoutConstraintOrientation) -> NSLayoutPriority
  @available(OSX 10.7, *)
  func setContentHuggingPriority(priority: NSLayoutPriority, forOrientation orientation: NSLayoutConstraintOrientation)
  @available(OSX 10.7, *)
  func contentCompressionResistancePriorityFor(orientation: NSLayoutConstraintOrientation) -> NSLayoutPriority
  @available(OSX 10.7, *)
  func setContentCompressionResistancePriority(priority: NSLayoutPriority, forOrientation orientation: NSLayoutConstraintOrientation)
}
let NSViewNoInstrinsicMetric: CGFloat
@available(OSX 10.11, *)
let NSViewNoIntrinsicMetric: CGFloat
extension NSControl {
  @available(OSX 10.7, *)
  func invalidateIntrinsicContentSizeFor(cell: NSCell)
}
extension NSWindow {
  func anchorAttributeFor(orientation: NSLayoutConstraintOrientation) -> NSLayoutAttribute
  func setAnchorAttribute(attr: NSLayoutAttribute, forOrientation orientation: NSLayoutConstraintOrientation)
}
extension NSView {
  @available(OSX 10.7, *)
  var fittingSize: Size { get }
}
extension NSView {
  @available(OSX 10.7, *)
  func constraintsAffectingLayoutFor(orientation: NSLayoutConstraintOrientation) -> [NSLayoutConstraint]
  @available(OSX 10.7, *)
  var hasAmbiguousLayout: Bool { get }
  @available(OSX 10.7, *)
  func exerciseAmbiguityInLayout()
}
extension NSWindow {
  @available(OSX 10.7, *)
  func visualizeConstraints(constraints: [NSLayoutConstraint])
}
