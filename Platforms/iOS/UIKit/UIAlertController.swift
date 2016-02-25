
@available(iOS 8.0, *)
enum UIAlertActionStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Cancel
  case Destructive
}
@available(iOS 8.0, *)
enum UIAlertControllerStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case ActionSheet
  case Alert
}
@available(iOS 8.0, *)
class UIAlertAction : NSObject, NSCopying {
  convenience init(title title: String?, style style: UIAlertActionStyle, handler handler: ((UIAlertAction) -> Void)?)
  var title: String? { get }
  var style: UIAlertActionStyle { get }
  var enabled: Bool
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(iOS 8.0, *)
class UIAlertController : UIViewController {
  convenience init(title title: String?, message message: String?, preferredStyle preferredStyle: UIAlertControllerStyle)
  func addAction(_ action: UIAlertAction)
  var actions: [UIAlertAction] { get }
  @available(iOS 9.0, *)
  var preferredAction: UIAlertAction?
  func addTextFieldWithConfigurationHandler(_ configurationHandler: ((UITextField) -> Void)?)
  var textFields: [UITextField]? { get }
  var message: String?
  var preferredStyle: UIAlertControllerStyle { get }
}
