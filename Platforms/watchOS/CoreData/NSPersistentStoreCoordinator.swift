
@available(watchOS 2.0, *)
let NSSQLiteStoreType: String
@available(watchOS 2.0, *)
let NSBinaryStoreType: String
@available(watchOS 2.0, *)
let NSInMemoryStoreType: String
@available(watchOS 2.0, *)
let NSStoreTypeKey: String
@available(watchOS 2.0, *)
let NSStoreUUIDKey: String
@available(watchOS 2.0, *)
let NSPersistentStoreCoordinatorStoresWillChangeNotification: String
@available(watchOS 2.0, *)
let NSPersistentStoreCoordinatorStoresDidChangeNotification: String
@available(watchOS 2.0, *)
let NSPersistentStoreCoordinatorWillRemoveStoreNotification: String
@available(watchOS 2.0, *)
let NSAddedPersistentStoresKey: String
@available(watchOS 2.0, *)
let NSRemovedPersistentStoresKey: String
@available(watchOS 2.0, *)
let NSUUIDChangedPersistentStoresKey: String
@available(watchOS 2.0, *)
let NSReadOnlyPersistentStoreOption: String
@available(watchOS 2.0, *)
let NSPersistentStoreTimeoutOption: String
@available(watchOS 2.0, *)
let NSSQLitePragmasOption: String
@available(watchOS 2.0, *)
let NSSQLiteAnalyzeOption: String
@available(watchOS 2.0, *)
let NSSQLiteManualVacuumOption: String
@available(watchOS 2.0, *)
let NSIgnorePersistentStoreVersioningOption: String
@available(watchOS 2.0, *)
let NSMigratePersistentStoresAutomaticallyOption: String
@available(watchOS 2.0, *)
let NSInferMappingModelAutomaticallyOption: String
@available(watchOS 2.0, *)
let NSStoreModelVersionHashesKey: String
@available(watchOS 2.0, *)
let NSStoreModelVersionIdentifiersKey: String
@available(watchOS 2.0, *)
let NSPersistentStoreOSCompatibility: String
@available(watchOS 2.0, *)
let NSPersistentStoreForceDestroyOption: String
@available(watchOS 2.0, *)
let NSPersistentStoreFileProtectionKey: String
@available(watchOS 2.0, *)
class NSPersistentStoreCoordinator : Object {
  init(managedObjectModel model: NSManagedObjectModel)
  var managedObjectModel: NSManagedObjectModel { get }
  var persistentStores: [NSPersistentStore] { get }
  @available(watchOS 2.0, *)
  var name: String?
  func persistentStoreFor(URL: URL) -> NSPersistentStore?
  func urlFor(store: NSPersistentStore) -> URL
  @available(watchOS 2.0, *)
  func setURL(url: URL, forPersistentStore store: NSPersistentStore) -> Bool
  func addPersistentStoreWithType(storeType: String, configuration: String?, url storeURL: URL?, options: [Object : AnyObject]? = [:]) throws -> NSPersistentStore
  func removePersistentStore(store: NSPersistentStore) throws
  func setMetadata(metadata: [String : AnyObject]?, forPersistentStore store: NSPersistentStore)
  func metadataFor(store: NSPersistentStore) -> [String : AnyObject]
  func managedObjectIDForURIRepresentation(url: URL) -> NSManagedObjectID?
  @available(watchOS 2.0, *)
  func execute(request: NSPersistentStoreRequest, withContext context: NSManagedObjectContext) throws -> AnyObject
  @available(watchOS 2.0, *)
  class func registeredStoreTypes() -> [String : Value]
  @available(watchOS 2.0, *)
  class func registerStoreClass(storeClass: AnyClass, forStoreType storeType: String)
  @available(watchOS 2.0, *)
  class func metadataForPersistentStoreOfType(storeType: String, url: URL, options: [Object : AnyObject]? = [:]) throws -> [String : AnyObject]
  @available(watchOS 2.0, *)
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String, url: URL, options: [Object : AnyObject]? = [:]) throws
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use a -metadataForPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func metadataForPersistentStoreOfType(storeType: String?, url: URL) throws -> [String : AnyObject]
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use a -setMetadata:forPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String?, url: URL) throws
  func migratePersistentStore(store: NSPersistentStore, to URL: URL, options: [Object : AnyObject]? = [:], withType storeType: String) throws -> NSPersistentStore
  @available(watchOS 2.0, *)
  func destroyPersistentStoreAt(url: URL, withType storeType: String, options: [Object : AnyObject]? = [:]) throws
  @available(watchOS 2.0, *)
  func replacePersistentStoreAt(destinationURL: URL, destinationOptions: [Object : AnyObject]? = [:], withPersistentStoreFrom sourceURL: URL, sourceOptions: [Object : AnyObject]? = [:], storeType: String) throws
  @available(watchOS 2.0, *)
  func perform(block: () -> Void)
  @available(watchOS 2.0, *)
  func performBlockAndWait(block: () -> Void)
  convenience init()
}
struct _persistentStoreCoordinatorFlags {
  var _isRegistered: UInt32
  var _reservedFlags: UInt32
  init()
  init(_isRegistered: UInt32, _reservedFlags: UInt32)
}
