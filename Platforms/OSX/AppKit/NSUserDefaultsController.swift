
class NSUserDefaultsController : NSController {
  class func shared() -> NSUserDefaultsController
  init(defaults: NSUserDefaults?, initialValues: [String : AnyObject]?)
  init?(coder: NSCoder)
  var defaults: NSUserDefaults { get }
  var initialValues: [String : AnyObject]?
  var appliesImmediately: Bool
  var hasUnappliedChanges: Bool { get }
  var values: AnyObject { get }
  func revert(sender: AnyObject?)
  func save(sender: AnyObject?)
  func revertToInitialValues(sender: AnyObject?)
  convenience init()
}
struct __userDefaultsControllerFlags {
  var _sharedInstance: UInt32
  var _appliesImmediately: UInt32
  var _reservedUserDefaultsController: UInt32
  init()
  init(_sharedInstance: UInt32, _appliesImmediately: UInt32, _reservedUserDefaultsController: UInt32)
}
