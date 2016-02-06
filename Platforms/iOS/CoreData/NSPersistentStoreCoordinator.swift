
@available(iOS 3.0, *)
let NSSQLiteStoreType: String
@available(iOS 3.0, *)
let NSBinaryStoreType: String
@available(iOS 3.0, *)
let NSInMemoryStoreType: String
@available(iOS 7.0, *)
enum NSPersistentStoreUbiquitousTransitionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AccountAdded
  case AccountRemoved
  case ContentRemoved
  case InitialImportCompleted
}
@available(iOS 3.0, *)
let NSStoreTypeKey: String
@available(iOS 3.0, *)
let NSStoreUUIDKey: String
@available(iOS 7.0, *)
let NSPersistentStoreCoordinatorStoresWillChangeNotification: String
@available(iOS 3.0, *)
let NSPersistentStoreCoordinatorStoresDidChangeNotification: String
@available(iOS 3.0, *)
let NSPersistentStoreCoordinatorWillRemoveStoreNotification: String
@available(iOS 3.0, *)
let NSAddedPersistentStoresKey: String
@available(iOS 3.0, *)
let NSRemovedPersistentStoresKey: String
@available(iOS 3.0, *)
let NSUUIDChangedPersistentStoresKey: String
@available(iOS 3.0, *)
let NSReadOnlyPersistentStoreOption: String
@available(iOS 3.0, *)
let NSPersistentStoreTimeoutOption: String
@available(iOS 3.0, *)
let NSSQLitePragmasOption: String
@available(iOS 3.0, *)
let NSSQLiteAnalyzeOption: String
@available(iOS 3.0, *)
let NSSQLiteManualVacuumOption: String
@available(iOS 3.0, *)
let NSIgnorePersistentStoreVersioningOption: String
@available(iOS 3.0, *)
let NSMigratePersistentStoresAutomaticallyOption: String
@available(iOS 3.0, *)
let NSInferMappingModelAutomaticallyOption: String
@available(iOS 3.0, *)
let NSStoreModelVersionHashesKey: String
@available(iOS 3.0, *)
let NSStoreModelVersionIdentifiersKey: String
@available(iOS 3.0, *)
let NSPersistentStoreOSCompatibility: String
@available(iOS 5.0, *)
let NSPersistentStoreUbiquitousContentNameKey: String
@available(iOS 5.0, *)
let NSPersistentStoreUbiquitousContentURLKey: String
@available(iOS 5.0, *)
let NSPersistentStoreDidImportUbiquitousContentChangesNotification: String
@available(iOS 7.0, *)
let NSPersistentStoreUbiquitousTransitionTypeKey: String
@available(iOS 7.0, *)
let NSPersistentStoreUbiquitousPeerTokenOption: String
@available(iOS 7.0, *)
let NSPersistentStoreRemoveUbiquitousMetadataOption: String
@available(iOS 7.0, *)
let NSPersistentStoreUbiquitousContainerIdentifierKey: String
@available(iOS 7.0, *)
let NSPersistentStoreRebuildFromUbiquitousContentOption: String
@available(iOS 6.0, *)
let NSPersistentStoreForceDestroyOption: String
@available(iOS 5.0, *)
let NSPersistentStoreFileProtectionKey: String
@available(iOS 3.0, *)
class NSPersistentStoreCoordinator : Object, Locking {
  init(managedObjectModel model: NSManagedObjectModel)
  var managedObjectModel: NSManagedObjectModel { get }
  var persistentStores: [NSPersistentStore] { get }
  @available(iOS 8.0, *)
  var name: String?
  func persistentStoreFor(URL: URL) -> NSPersistentStore?
  func urlFor(store: NSPersistentStore) -> URL
  @available(iOS 3.0, *)
  func setURL(url: URL, forPersistentStore store: NSPersistentStore) -> Bool
  func addPersistentStore(type storeType: String, configuration: String?, url storeURL: URL?, options: [Object : AnyObject]? = [:]) throws -> NSPersistentStore
  func removePersistentStore(store: NSPersistentStore) throws
  func setMetadata(metadata: [String : AnyObject]?, forPersistentStore store: NSPersistentStore)
  func metadataFor(store: NSPersistentStore) -> [String : AnyObject]
  func managedObjectIDFor(uriRepresentation url: URL) -> NSManagedObjectID?
  @available(iOS 5.0, *)
  func execute(request: NSPersistentStoreRequest, withContext context: NSManagedObjectContext) throws -> AnyObject
  @available(iOS 3.0, *)
  class func registeredStoreTypes() -> [String : Value]
  @available(iOS 3.0, *)
  class func registerStoreClass(storeClass: AnyClass, forStoreType storeType: String)
  @available(iOS 7.0, *)
  class func metadataForPersistentStoreOf(type storeType: String, url: URL, options: [Object : AnyObject]? = [:]) throws -> [String : AnyObject]
  @available(iOS 7.0, *)
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String, url: URL, options: [Object : AnyObject]? = [:]) throws
  @available(iOS, introduced=3.0, deprecated=9.0, message="Use a -metadataForPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func metadataForPersistentStoreOf(type storeType: String?, url: URL) throws -> [String : AnyObject]
  @available(iOS, introduced=3.0, deprecated=9.0, message="Use a -setMetadata:forPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String?, url: URL) throws
  @available(iOS 7.0, *)
  class func removeUbiquitousContentAndPersistentStoreAt(storeURL: URL, options: [Object : AnyObject]? = [:]) throws
  func migratePersistentStore(store: NSPersistentStore, to URL: URL, options: [Object : AnyObject]? = [:], withType storeType: String) throws -> NSPersistentStore
  @available(iOS 9.0, *)
  func destroyPersistentStoreAt(url: URL, withType storeType: String, options: [Object : AnyObject]? = [:]) throws
  @available(iOS 9.0, *)
  func replacePersistentStoreAt(destinationURL: URL, destinationOptions: [Object : AnyObject]? = [:], withPersistentStoreFrom sourceURL: URL, sourceOptions: [Object : AnyObject]? = [:], storeType: String) throws
  @available(iOS 8.0, *)
  func perform(block: () -> Void)
  @available(iOS 8.0, *)
  func performBlockAndWait(block: () -> Void)
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use -performBlockAndWait: instead")
  func lock()
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use -performBlockAndWait: instead")
  func unlock()
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use -performBlock: instead")
  func tryLock() -> Bool
  convenience init()
}
struct _persistentStoreCoordinatorFlags {
  var _isRegistered: UInt32
  var _reservedFlags: UInt32
  init()
  init(_isRegistered: UInt32, _reservedFlags: UInt32)
}
