
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
  case ConfinementConcurrencyType
  case PrivateQueueConcurrencyType
  case MainQueueConcurrencyType
}
@available(OSX 10.4, *)
class NSManagedObjectContext : NSObject, NSCoding, NSLocking {
  @available(OSX, introduced=10.4, deprecated=10.11, message="Use -initWithConcurrencyType: instead")
  class func new() -> Self
  @available(OSX, introduced=10.4, deprecated=10.11, message="Use -initWithConcurrencyType: instead")
  convenience init()
  @available(OSX 10.7, *)
  init(concurrencyType ct: NSManagedObjectContextConcurrencyType)
  @available(OSX 10.7, *)
  func performBlock(block: () -> Void)
  @available(OSX 10.7, *)
  func performBlockAndWait(block: () -> Void)
  var persistentStoreCoordinator: NSPersistentStoreCoordinator?
  @available(OSX 10.7, *)
  var parentContext: NSManagedObjectContext?
  @available(OSX 10.10, *)
  var name: String?
  var undoManager: NSUndoManager?
  var hasChanges: Bool { get }
  @available(OSX 10.7, *)
  var userInfo: NSMutableDictionary { get }
  @available(OSX 10.7, *)
  var concurrencyType: NSManagedObjectContextConcurrencyType { get }
  func objectRegisteredForID(objectID: NSManagedObjectID) -> NSManagedObject?
  func objectWithID(objectID: NSManagedObjectID) -> NSManagedObject
  @available(OSX 10.6, *)
  func existingObjectWithID(objectID: NSManagedObjectID) throws -> NSManagedObject
  func executeFetchRequest(request: NSFetchRequest) throws -> [AnyObject]
  @available(OSX 10.5, *)
  func countForFetchRequest(request: NSFetchRequest, error: NSErrorPointer) -> Int
  @available(OSX 10.10, *)
  func executeRequest(request: NSPersistentStoreRequest) throws -> NSPersistentStoreResult
  func insertObject(object: NSManagedObject)
  func deleteObject(object: NSManagedObject)
  func refreshObject(object: NSManagedObject, mergeChanges flag: Bool)
  func detectConflictsForObject(object: NSManagedObject)
  func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
  func processPendingChanges()
  func assignObject(object: AnyObject, toPersistentStore store: NSPersistentStore)
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
  func shouldHandleInaccessibleFault(fault: NSManagedObject, forObjectID oid: NSManagedObjectID, triggeredByProperty property: NSPropertyDescription?) -> Bool
  var stalenessInterval: NSTimeInterval
  var mergePolicy: AnyObject
  @available(OSX 10.5, *)
  func obtainPermanentIDsForObjects(objects: [NSManagedObject]) throws
  @available(OSX 10.5, *)
  func mergeChangesFromContextDidSaveNotification(notification: NSNotification)
  @available(OSX 10.11, *)
  class func mergeChangesFromRemoteContextSave(changeNotificationData: [NSObject : AnyObject], intoContexts contexts: [NSManagedObjectContext])
  @available(OSX 10.4, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
