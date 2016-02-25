
enum UITableViewCellStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Value1
  case Value2
  case Subtitle
}
enum UITableViewCellSelectionStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case Blue
  case Gray
  @available(tvOS 7.0, *)
  case Default
}
@available(tvOS 9.0, *)
enum UITableViewCellFocusStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Custom
}
enum UITableViewCellEditingStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case Delete
  case Insert
}
enum UITableViewCellAccessoryType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case DisclosureIndicator
  case Checkmark
}
struct UITableViewCellStateMask : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var DefaultMask: UITableViewCellStateMask { get }
  static var ShowingEditControlMask: UITableViewCellStateMask { get }
  static var ShowingDeleteConfirmationMask: UITableViewCellStateMask { get }
}
@available(tvOS 2.0, *)
class UITableViewCell : UIView, NSCoding, UIGestureRecognizerDelegate {
  @available(tvOS 3.0, *)
  init(style style: UITableViewCellStyle, reuseIdentifier reuseIdentifier: String?)
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
  var selected: Bool
  var highlighted: Bool
  func setSelected(_ selected: Bool, animated animated: Bool)
  func setHighlighted(_ highlighted: Bool, animated animated: Bool)
  var editingStyle: UITableViewCellEditingStyle { get }
  var showsReorderControl: Bool
  var shouldIndentWhileEditing: Bool
  var accessoryType: UITableViewCellAccessoryType
  var accessoryView: UIView?
  var editingAccessoryType: UITableViewCellAccessoryType
  var editingAccessoryView: UIView?
  var indentationLevel: Int
  var indentationWidth: CGFloat
  var editing: Bool
  func setEditing(_ editing: Bool, animated animated: Bool)
  var showingDeleteConfirmation: Bool { get }
  @available(tvOS 9.0, *)
  var focusStyle: UITableViewCellFocusStyle
  @available(tvOS 3.0, *)
  func willTransitionToState(_ state: UITableViewCellStateMask)
  @available(tvOS 3.0, *)
  func didTransitionToState(_ state: UITableViewCellStateMask)
  @available(tvOS 3.2, *)
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOfGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailByGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 3.2, *)
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool
  @available(tvOS 9.0, *)
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceivePress press: UIPress) -> Bool
}
extension UITableViewCell {
}
