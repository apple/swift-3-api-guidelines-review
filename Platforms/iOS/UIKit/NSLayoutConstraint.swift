
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
  @available(iOS 8.0, *)
  case FirstBaseline
  @available(iOS 8.0, *)
  case LeftMargin
  @available(iOS 8.0, *)
  case RightMargin
  @available(iOS 8.0, *)
  case TopMargin
  @available(iOS 8.0, *)
  case BottomMargin
  @available(iOS 8.0, *)
  case LeadingMargin
  @available(iOS 8.0, *)
  case TrailingMargin
  @available(iOS 8.0, *)
  case CenterXWithinMargins
  @available(iOS 8.0, *)
  case CenterYWithinMargins
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
  @available(iOS 8.0, *)
  static var AlignAllFirstBaseline: NSLayoutFormatOptions { get }
  static var AlignmentMask: NSLayoutFormatOptions { get }
  static var DirectionLeadingToTrailing: NSLayoutFormatOptions { get }
  static var DirectionLeftToRight: NSLayoutFormatOptions { get }
  static var DirectionRightToLeft: NSLayoutFormatOptions { get }
  static var DirectionMask: NSLayoutFormatOptions { get }
}
typealias UILayoutPriority = Float
@available(iOS 6.0, *)
let UILayoutPriorityRequired: UILayoutPriority
@available(iOS 6.0, *)
let UILayoutPriorityDefaultHigh: UILayoutPriority
@available(iOS 6.0, *)
let UILayoutPriorityDefaultLow: UILayoutPriority
@available(iOS 6.0, *)
let UILayoutPriorityFittingSizeLevel: UILayoutPriority
@available(iOS 6.0, *)
class NSLayoutConstraint : Object {
  class func constraintsWith(visualFormat format: String, options opts: NSLayoutFormatOptions = [], metrics: [String : AnyObject]?, views: [String : AnyObject]) -> [NSLayoutConstraint]
  convenience init(item view1: AnyObject, attribute attr1: NSLayoutAttribute, relatedBy relation: NSLayoutRelation, toItem view2: AnyObject?, attribute attr2: NSLayoutAttribute, multiplier: CGFloat, constant c: CGFloat)
  var priority: UILayoutPriority
  var shouldBeArchived: Bool
  unowned(unsafe) var firstItem: @sil_unmanaged AnyObject { get }
  var firstAttribute: NSLayoutAttribute { get }
  var relation: NSLayoutRelation { get }
  unowned(unsafe) var secondItem: @sil_unmanaged AnyObject? { get }
  var secondAttribute: NSLayoutAttribute { get }
  var multiplier: CGFloat { get }
  var constant: CGFloat
  @available(iOS 8.0, *)
  var isActive: Bool
  @available(iOS 8.0, *)
  class func activateConstraints(constraints: [NSLayoutConstraint])
  @available(iOS 8.0, *)
  class func deactivateConstraints(constraints: [NSLayoutConstraint])
  init()
}
extension NSLayoutConstraint {
  @available(iOS 7.0, *)
  var identifier: String?
}
protocol UILayoutSupport : ObjectProtocol {
  var length: CGFloat { get }
  @available(iOS 9.0, *)
  var topAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var heightAnchor: NSLayoutDimension { get }
}
