
@available(iOS 3.0, *)
let NSManagedObjectContextWillSaveNotification: String
@available(iOS 3.0, *)
let NSManagedObjectContextDidSaveNotification: String
@available(iOS 3.0, *)
let NSManagedObjectContextObjectsDidChangeNotification: String
@available(iOS 3.0, *)
let NSInsertedObjectsKey: String
@available(iOS 3.0, *)
let NSUpdatedObjectsKey: String
@available(iOS 3.0, *)
let NSDeletedObjectsKey: String
@available(iOS 3.0, *)
let NSRefreshedObjectsKey: String
@available(iOS 3.0, *)
let NSInvalidatedObjectsKey: String
@available(iOS 3.0, *)
let NSInvalidatedAllObjectsKey: String
@available(iOS 5.0, *)
enum NSManagedObjectContextConcurrencyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(iOS, introduced=3.0, deprecated=9.0, message="Use another NSManagedObjectContextConcurrencyType")
  case confinementConcurrencyType
  case privateQueueConcurrencyType
  case mainQueueConcurrencyType
}
@available(iOS 3.0, *)
class NSManagedObjectContext : Object, Coding, Locking {
  @available(iOS, introduced=3.0, deprecated=9.0, message="Use -initWithConcurrencyType: instead")
  class func new() -> Self
  @available(iOS, introduced=3.0, deprecated=9.0, message="Use -initWithConcurrencyType: instead")
  convenience init()
  @available(iOS 5.0, *)
  init(concurrencyType ct: NSManagedObjectContextConcurrencyType)
  @available(iOS 5.0, *)
  func perform(block: () -> Void)
  @available(iOS 5.0, *)
  func performBlockAndWait(block: () -> Void)
  var persistentStoreCoordinator: NSPersistentStoreCoordinator?
  @available(iOS 5.0, *)
  var parent: NSManagedObjectContext?
  @available(iOS 8.0, *)
  var name: String?
  var undoManager: UndoManager?
  var hasChanges: Bool { get }
  @available(iOS 5.0, *)
  var userInfo: MutableDictionary { get }
  @available(iOS 5.0, *)
  var concurrencyType: NSManagedObjectContextConcurrencyType { get }
  func objectRegisteredFor(objectID: NSManagedObjectID) -> NSManagedObject?
  func objectWith(objectID: NSManagedObjectID) -> NSManagedObject
  @available(iOS 3.0, *)
  func existingObjectWith(objectID: NSManagedObjectID) throws -> NSManagedObject
  func execute(request: NSFetchRequest) throws -> [AnyObject]
  @available(iOS 3.0, *)
  func countFor(request: NSFetchRequest, error: ErrorPointer) -> Int
  @available(iOS 8.0, *)
  func execute(request: NSPersistentStoreRequest) throws -> NSPersistentStoreResult
  func insert(object: NSManagedObject)
  func delete(object: NSManagedObject)
  func refreshObject(object: NSManagedObject, mergeChanges flag: Bool)
  func detectConflictsFor(object: NSManagedObject)
  func observeValueFor(keyPath keyPath: String?, of object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
  func processPendingChanges()
  func assign(object: AnyObject, to store: NSPersistentStore)
  var insertedObjects: Set<NSManagedObject> { get }
  var updatedObjects: Set<NSManagedObject> { get }
  var deletedObjects: Set<NSManagedObject> { get }
  var registeredObjects: Set<NSManagedObject> { get }
  func undo()
  func redo()
  func reset()
  func rollback()
  func save() throws
  @available(iOS 8.3, *)
  func refreshAllObjects()
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use a queue style context and -performBlockAndWait: instead")
  func lock()
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use a queue style context and -performBlockAndWait: instead")
  func unlock()
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use a queue style context and -performBlock: instead")
  func tryLock() -> Bool
  var propagatesDeletesAtEndOfEvent: Bool
  var retainsRegisteredObjects: Bool
  @available(iOS 9.0, *)
  var shouldDeleteInaccessibleFaults: Bool
  @available(iOS 9.0, *)
  func shouldHandleInaccessibleFault(fault: NSManagedObject, forObjectID oid: NSManagedObjectID, triggeredByProperty property: NSPropertyDescription?) -> Bool
  var stalenessInterval: TimeInterval
  var mergePolicy: AnyObject
  @available(iOS 3.0, *)
  func obtainPermanentIDsFor(objects: [NSManagedObject]) throws
  @available(iOS 3.0, *)
  func mergeChangesFromContextDidSave(notification: Notification)
  @available(iOS 9.0, *)
  class func mergeChangesFromRemoteContextSave(changeNotificationData: [Object : AnyObject], into contexts: [NSManagedObjectContext])
  @available(iOS 3.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
struct _managedObjectContextFlags {
  var _registeredForCallback: UInt32
  var _propagatesDeletesAtEndOfEvent: UInt32
  var _exhaustiveValidation: UInt32
  var _processingChanges: UInt32
  var _useCommittedSnapshot: UInt32
  var _registeredUndoTransactionID: UInt32
  var _retainsAllRegisteredObjects: UInt32
  var _savingInProgress: UInt32
  var _wasDisposed: UInt32
  var _unprocessedChangesPending: UInt32
  var _isDirty: UInt32
  var _ignoreUndoCheckpoints: UInt32
  var _propagatingDeletes: UInt32
  var _isNSEditorEditing: UInt32
  var _isMainThreadBlessed: UInt32
  var _isImportContext: UInt32
  var _preflightSaveInProgress: UInt32
  var _disableDiscardEditing: UInt32
  var _isParentStoreContext: UInt32
  var _postSaveNotifications: UInt32
  var _isMerging: UInt32
  var _concurrencyType: UInt32
  var _deleteInaccessible: UInt32
  var _reservedFlags: UInt32
  init()
  init(_registeredForCallback: UInt32, _propagatesDeletesAtEndOfEvent: UInt32, _exhaustiveValidation: UInt32, _processingChanges: UInt32, _useCommittedSnapshot: UInt32, _registeredUndoTransactionID: UInt32, _retainsAllRegisteredObjects: UInt32, _savingInProgress: UInt32, _wasDisposed: UInt32, _unprocessedChangesPending: UInt32, _isDirty: UInt32, _ignoreUndoCheckpoints: UInt32, _propagatingDeletes: UInt32, _isNSEditorEditing: UInt32, _isMainThreadBlessed: UInt32, _isImportContext: UInt32, _preflightSaveInProgress: UInt32, _disableDiscardEditing: UInt32, _isParentStoreContext: UInt32, _postSaveNotifications: UInt32, _isMerging: UInt32, _concurrencyType: UInt32, _deleteInaccessible: UInt32, _reservedFlags: UInt32)
}
