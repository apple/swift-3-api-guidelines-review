
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
  case confinementConcurrencyType
  case privateQueueConcurrencyType
  case mainQueueConcurrencyType
}
@available(watchOS 2.0, *)
class NSManagedObjectContext : Object, Coding {
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -initWithConcurrencyType: instead")
  class func new() -> Self
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -initWithConcurrencyType: instead")
  convenience init()
  @available(watchOS 2.0, *)
  init(concurrencyType ct: NSManagedObjectContextConcurrencyType)
  @available(watchOS 2.0, *)
  func perform(block: () -> Void)
  @available(watchOS 2.0, *)
  func performBlockAndWait(block: () -> Void)
  var persistentStoreCoordinator: NSPersistentStoreCoordinator?
  @available(watchOS 2.0, *)
  var parent: NSManagedObjectContext?
  @available(watchOS 2.0, *)
  var name: String?
  var undoManager: UndoManager?
  var hasChanges: Bool { get }
  @available(watchOS 2.0, *)
  var userInfo: MutableDictionary { get }
  @available(watchOS 2.0, *)
  var concurrencyType: NSManagedObjectContextConcurrencyType { get }
  func objectRegistered(for objectID: NSManagedObjectID) -> NSManagedObject?
  func object(with objectID: NSManagedObjectID) -> NSManagedObject
  @available(watchOS 2.0, *)
  func existingObject(with objectID: NSManagedObjectID) throws -> NSManagedObject
  func execute(request: NSFetchRequest) throws -> [AnyObject]
  @available(watchOS 2.0, *)
  func count(for request: NSFetchRequest, error: ErrorPointer) -> Int
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  func refreshAllObjects()
  var propagatesDeletesAtEndOfEvent: Bool
  var retainsRegisteredObjects: Bool
  @available(watchOS 2.0, *)
  var shouldDeleteInaccessibleFaults: Bool
  @available(watchOS 2.0, *)
  func shouldHandleInaccessibleFault(fault: NSManagedObject, for oid: NSManagedObjectID, triggeredByProperty property: NSPropertyDescription?) -> Bool
  var stalenessInterval: TimeInterval
  var mergePolicy: AnyObject
  @available(watchOS 2.0, *)
  func obtainPermanentIDs(for objects: [NSManagedObject]) throws
  @available(watchOS 2.0, *)
  func mergeChanges(fromContextDidSave notification: Notification)
  @available(watchOS 2.0, *)
  class func mergeChanges(fromRemoteContextSave changeNotificationData: [Object : AnyObject], into contexts: [NSManagedObjectContext])
  @available(watchOS 2.0, *)
  func encode(with aCoder: Coder)
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
