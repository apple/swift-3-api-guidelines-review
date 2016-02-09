
enum UITableViewCellStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case value1
  case value2
  case subtitle
}
enum UITableViewCellSelectionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case blue
  case gray
  @available(tvOS 7.0, *)
  case `default`
}
@available(tvOS 9.0, *)
enum UITableViewCellFocusStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case custom
}
enum UITableViewCellEditingStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case delete
  case insert
}
enum UITableViewCellAccessoryType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case disclosureIndicator
  case checkmark
}
struct UITableViewCellStateMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var defaultMask: UITableViewCellStateMask { get }
  static var showingEditControlMask: UITableViewCellStateMask { get }
  static var showingDeleteConfirmationMask: UITableViewCellStateMask { get }
}
@available(tvOS 2.0, *)
class UITableViewCell : UIView, Coding, UIGestureRecognizerDelegate {
  @available(tvOS 3.0, *)
  init(style: UITableViewCellStyle, reuseIdentifier: String?)
  init?(coder aDecoder: Coder)
  @available(tvOS 3.0, *)
  var imageView: UIImageView? { get }
  @available(tvOS 3.0, *)
  var textLabel: UILabel? { get }
  @available(tvOS 3.0, *)
  var detailTextLabel: UILabel? { get }
  var contentView: UIView { get }
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
  @available(tvOS 5.0, *)
  var multipleSelectionBackgroundView: UIView?
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  var selectionStyle: UITableViewCellSelectionStyle
  var isSelected: Bool
  var isHighlighted: Bool
  func setSelected(selected: Bool, animated: Bool)
  func setHighlighted(highlighted: Bool, animated: Bool)
  var editingStyle: UITableViewCellEditingStyle { get }
  var showsReorderControl: Bool
  var shouldIndentWhileEditing: Bool
  var accessoryType: UITableViewCellAccessoryType
  var accessoryView: UIView?
  var editingAccessoryType: UITableViewCellAccessoryType
  var editingAccessoryView: UIView?
  var indentationLevel: Int
  var indentationWidth: CGFloat
  var isEditing: Bool
  func setEditing(editing: Bool, animated: Bool)
  var showingDeleteConfirmation: Bool { get }
  @available(tvOS 9.0, *)
  var focusStyle: UITableViewCellFocusStyle
  @available(tvOS 3.0, *)
  func willTransition(toState state: UITableViewCellStateMask)
  @available(tvOS 3.0, *)
  func didTransition(toState state: UITableViewCellStateMask)
  convenience init(frame: CGRect)
  convenience init()
  @available(tvOS 3.2, *)
  func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 3.2, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 3.2, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool
  @available(tvOS 9.0, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceive press: UIPress) -> Bool
}
extension UITableViewCell {
}
