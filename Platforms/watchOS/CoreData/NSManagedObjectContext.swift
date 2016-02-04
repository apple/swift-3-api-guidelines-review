
@available(watchOS 2.0, *)
let NSManagedObjectContextWillSaveNotification: String
@available(watchOS 2.0, *)
let NSManagedObjectContextDidSaveNotification: String
@available(watchOS 2.0, *)
let NSManagedObjectContextObjectsDidChangeNotification: String
@available(watchOS 2.0, *)
let NSInsertedObjectsKey: String
@available(watchOS 2.0, *)
let NSUpdatedObjectsKey: String
@available(watchOS 2.0, *)
let NSDeletedObjectsKey: String
@available(watchOS 2.0, *)
let NSRefreshedObjectsKey: String
@available(watchOS 2.0, *)
let NSInvalidatedObjectsKey: String
@available(watchOS 2.0, *)
let NSInvalidatedAllObjectsKey: String
@available(watchOS 2.0, *)
enum NSManagedObjectContextConcurrencyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use another NSManagedObjectContextConcurrencyType")
  case ConfinementConcurrencyType
  case PrivateQueueConcurrencyType
  case MainQueueConcurrencyType
}
@available(watchOS 2.0, *)
class NSManagedObjectContext : NSObject, NSCoding {
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -initWithConcurrencyType: instead")
  class func new() -> Self
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -initWithConcurrencyType: instead")
  convenience init()
  @available(watchOS 2.0, *)
  init(concurrencyType ct: NSManagedObjectContextConcurrencyType)
  @available(watchOS 2.0, *)
  func performBlock(block: () -> Void)
  @available(watchOS 2.0, *)
  func performBlockAndWait(block: () -> Void)
  var persistentStoreCoordinator: NSPersistentStoreCoordinator?
  @available(watchOS 2.0, *)
  var parentContext: NSManagedObjectContext?
  @available(watchOS 2.0, *)
  var name: String?
  var undoManager: NSUndoManager?
  var hasChanges: Bool { get }
  @available(watchOS 2.0, *)
  var userInfo: NSMutableDictionary { get }
  @available(watchOS 2.0, *)
  var concurrencyType: NSManagedObjectContextConcurrencyType { get }
  func objectRegisteredForID(objectID: NSManagedObjectID) -> NSManagedObject?
  func objectWithID(objectID: NSManagedObjectID) -> NSManagedObject
  @available(watchOS 2.0, *)
  func existingObjectWithID(objectID: NSManagedObjectID) throws -> NSManagedObject
  func executeFetchRequest(request: NSFetchRequest) throws -> [AnyObject]
  @available(watchOS 2.0, *)
  func countForFetchRequest(request: NSFetchRequest, error: NSErrorPointer) -> Int
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  func refreshAllObjects()
  var propagatesDeletesAtEndOfEvent: Bool
  var retainsRegisteredObjects: Bool
  @available(watchOS 2.0, *)
  var shouldDeleteInaccessibleFaults: Bool
  @available(watchOS 2.0, *)
  func shouldHandleInaccessibleFault(fault: NSManagedObject, forObjectID oid: NSManagedObjectID, triggeredByProperty property: NSPropertyDescription?) -> Bool
  var stalenessInterval: NSTimeInterval
  var mergePolicy: AnyObject
  @available(watchOS 2.0, *)
  func obtainPermanentIDsForObjects(objects: [NSManagedObject]) throws
  @available(watchOS 2.0, *)
  func mergeChangesFromContextDidSaveNotification(notification: NSNotification)
  @available(watchOS 2.0, *)
  class func mergeChangesFromRemoteContextSave(changeNotificationData: [NSObject : AnyObject], intoContexts contexts: [NSManagedObjectContext])
  @available(watchOS 2.0, *)
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
