
class NSObjectController : NSController {
  init(content: AnyObject?)
  init?(coder: NSCoder)
  var content: AnyObject?
  var selection: AnyObject { get }
  var selectedObjects: [AnyObject] { get }
  var automaticallyPreparesContent: Bool
  func prepareContent()
  var objectClass: AnyClass!
  func newObject() -> AnyObject
  func add(object: AnyObject)
  func remove(object: AnyObject)
  var isEditable: Bool
  func add(sender: AnyObject?)
  var canAdd: Bool { get }
  func remove(sender: AnyObject?)
  var canRemove: Bool { get }
  func validate(item: NSValidatedUserInterfaceItem) -> Bool
  convenience init()
}
struct __objectControllerFlags {
  var _editable: UInt32
  var _automaticallyPreparesContent: UInt32
  var _hasLoadedData: UInt32
  var _explicitlyCannotAdd: UInt32
  var _explicitlyCannotRemove: UInt32
  var _isUsingManagedProxy: UInt32
  var _hasFetched: UInt32
  var _batches: UInt32
  var _reservedObjectController: UInt32
  init()
  init(_editable: UInt32, _automaticallyPreparesContent: UInt32, _hasLoadedData: UInt32, _explicitlyCannotAdd: UInt32, _explicitlyCannotRemove: UInt32, _isUsingManagedProxy: UInt32, _hasFetched: UInt32, _batches: UInt32, _reservedObjectController: UInt32)
}
extension NSObjectController {
  var managedObjectContext: NSManagedObjectContext?
  var entityName: String?
  var fetchPredicate: NSPredicate?
  func fetch(fetchRequest: NSFetchRequest?, merge: Bool) throws
  func fetch(sender: AnyObject?)
  @available(OSX 10.5, *)
  var usesLazyFetching: Bool
  @available(OSX 10.5, *)
  func defaultFetchRequest() -> NSFetchRequest
}
