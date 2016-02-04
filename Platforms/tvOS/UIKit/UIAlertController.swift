
@available(tvOS 8.0, *)
enum UIAlertActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Cancel
  case Destructive
}
@available(tvOS 8.0, *)
enum UIAlertControllerStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ActionSheet
  case Alert
}
@available(tvOS 8.0, *)
class UIAlertAction : NSObject, NSCopying {
  convenience init(title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction) -> Void)?)
  var title: String? { get }
  var style: UIAlertActionStyle { get }
  var enabled: Bool
  init()
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(tvOS 8.0, *)
class UIAlertController : UIViewController {
  convenience init(title: String?, message: String?, preferredStyle: UIAlertControllerStyle)
  func addAction(action: UIAlertAction)
  var actions: [UIAlertAction] { get }
  @available(tvOS 9.0, *)
  var preferredAction: UIAlertAction?
  func addTextFieldWithConfigurationHandler(configurationHandler: ((UITextField) -> Void)?)
  var textFields: [UITextField]? { get }
  var title: String?
  var message: String?
  var preferredStyle: UIAlertControllerStyle { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
