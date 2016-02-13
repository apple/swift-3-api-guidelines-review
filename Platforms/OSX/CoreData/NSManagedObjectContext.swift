
@available(OSX 10.5, *)
let NSManagedObjectContextWillSaveNotification: String
@available(OSX 10.4, *)
let NSManagedObjectContextDidSaveNotification: String
@available(OSX 10.4, *)
let NSManagedObjectContextObjectsDidChangeNotification: String
@available(OSX 10.4, *)
let NSInsertedObjectsKey: String
@available(OSX 10.4, *)
let NSUpdatedObjectsKey: String
@available(OSX 10.4, *)
let NSDeletedObjectsKey: String
@available(OSX 10.5, *)
let NSRefreshedObjectsKey: String
@available(OSX 10.5, *)
let NSInvalidatedObjectsKey: String
@available(OSX 10.5, *)
let NSInvalidatedAllObjectsKey: String
@available(OSX 10.7, *)
enum NSManagedObjectContextConcurrencyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(OSX, introduced=10.4, deprecated=10.11, message="Use another NSManagedObjectContextConcurrencyType")
  case confinementConcurrencyType
  case privateQueueConcurrencyType
  case mainQueueConcurrencyType
}
@available(OSX 10.4, *)
class NSManagedObjectContext : Object, Coding, Locking {
  @available(OSX, introduced=10.4, deprecated=10.11, message="Use -initWithConcurrencyType: instead")
  class func new() -> Self
  @available(OSX, introduced=10.4, deprecated=10.11, message="Use -initWithConcurrencyType: instead")
  convenience init()
  @available(OSX 10.7, *)
  init(concurrencyType ct: NSManagedObjectContextConcurrencyType)
  @available(OSX 10.7, *)
  func perform(block: () -> Void)
  @available(OSX 10.7, *)
  func performBlockAndWait(block: () -> Void)
  var persistentStoreCoordinator: NSPersistentStoreCoordinator?
  @available(OSX 10.7, *)
  var parent: NSManagedObjectContext?
  @available(OSX 10.10, *)
  var name: String?
  var undoManager: UndoManager?
  var hasChanges: Bool { get }
  @available(OSX 10.7, *)
  var userInfo: MutableDictionary { get }
  @available(OSX 10.7, *)
  var concurrencyType: NSManagedObjectContextConcurrencyType { get }
  func objectRegistered(for objectID: NSManagedObjectID) -> NSManagedObject?
  func object(objectID: NSManagedObjectID) -> NSManagedObject
  @available(OSX 10.6, *)
  func existingObject(objectID: NSManagedObjectID) throws -> NSManagedObject
  func execute(request: NSFetchRequest) throws -> [AnyObject]
  @available(OSX 10.5, *)
  func count(for request: NSFetchRequest, error: ErrorPointer) -> Int
  @available(OSX 10.10, *)
  func execute(request: NSPersistentStoreRequest) throws -> NSPersistentStoreResult
  func insert(object: NSManagedObject)
  func delete(object: NSManagedObject)
  func refreshObject(object: NSManagedObject, mergeChanges flag: Bool)
  func detectConflicts(for object: NSManagedObject)
  func observeValue(forKeyPath keyPath: String?, of object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
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
  @available(OSX 10.11, *)
  func refreshAllObjects()
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use a queue style context and -performBlockAndWait: instead")
  func lock()
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use a queue style context and -performBlockAndWait: instead")
  func unlock()
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use a queue style context and -performBlock: instead")
  func tryLock() -> Bool
  var propagatesDeletesAtEndOfEvent: Bool
  var retainsRegisteredObjects: Bool
  @available(OSX 10.11, *)
  var shouldDeleteInaccessibleFaults: Bool
  @available(OSX 10.11, *)
  func shouldHandleInaccessibleFault(fault: NSManagedObject, for oid: NSManagedObjectID, triggeredByProperty property: NSPropertyDescription?) -> Bool
  var stalenessInterval: TimeInterval
  var mergePolicy: AnyObject
  @available(OSX 10.5, *)
  func obtainPermanentIDs(for objects: [NSManagedObject]) throws
  @available(OSX 10.5, *)
  func mergeChanges(fromContextDidSave notification: Notification)
  @available(OSX 10.11, *)
  class func mergeChanges(fromRemoteContextSave changeNotificationData: [Object : AnyObject], into contexts: [NSManagedObjectContext])
  @available(OSX 10.4, *)
  func encode(aCoder: Coder)
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
