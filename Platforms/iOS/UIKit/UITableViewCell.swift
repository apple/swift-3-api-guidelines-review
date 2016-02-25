
enum UITableViewCellStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Value1
  case Value2
  case Subtitle
}
enum UITableViewCellSeparatorStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case SingleLine
  case SingleLineEtched
}
enum UITableViewCellSelectionStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case Blue
  case Gray
  @available(iOS 7.0, *)
  case Default
}
@available(iOS 9.0, *)
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
  case DetailDisclosureButton
  case Checkmark
  @available(iOS 7.0, *)
  case DetailButton
}
struct UITableViewCellStateMask : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var DefaultMask: UITableViewCellStateMask { get }
  static var ShowingEditControlMask: UITableViewCellStateMask { get }
  static var ShowingDeleteConfirmationMask: UITableViewCellStateMask { get }
}
@available(iOS 2.0, *)
class UITableViewCell : UIView, NSCoding, UIGestureRecognizerDelegate {
  @available(iOS 3.0, *)
  init(style style: UITableViewCellStyle, reuseIdentifier reuseIdentifier: String?)
  @available(iOS 3.0, *)
  var imageView: UIImageView? { get }
  @available(iOS 3.0, *)
  var textLabel: UILabel? { get }
  @available(iOS 3.0, *)
  var detailTextLabel: UILabel? { get }
  var contentView: UIView { get }
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
  @available(iOS 5.0, *)
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
  @available(iOS 7.0, *)
  var separatorInset: UIEdgeInsets
  var editing: Bool
  func setEditing(_ editing: Bool, animated animated: Bool)
  var showingDeleteConfirmation: Bool { get }
  @available(iOS 9.0, *)
  var focusStyle: UITableViewCellFocusStyle
  @available(iOS 3.0, *)
  func willTransitionToState(_ state: UITableViewCellStateMask)
  @available(iOS 3.0, *)
  func didTransitionToState(_ state: UITableViewCellStateMask)
  @available(iOS 3.2, *)
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOfGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailByGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 3.2, *)
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool
  @available(iOS 9.0, *)
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceivePress press: UIPress) -> Bool
}
extension UITableViewCell {
}
