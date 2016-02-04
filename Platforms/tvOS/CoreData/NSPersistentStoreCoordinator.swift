
@available(tvOS 3.0, *)
let NSSQLiteStoreType: String
@available(tvOS 3.0, *)
let NSBinaryStoreType: String
@available(tvOS 3.0, *)
let NSInMemoryStoreType: String
@available(tvOS 3.0, *)
let NSStoreTypeKey: String
@available(tvOS 3.0, *)
let NSStoreUUIDKey: String
@available(tvOS 7.0, *)
let NSPersistentStoreCoordinatorStoresWillChangeNotification: String
@available(tvOS 3.0, *)
let NSPersistentStoreCoordinatorStoresDidChangeNotification: String
@available(tvOS 3.0, *)
let NSPersistentStoreCoordinatorWillRemoveStoreNotification: String
@available(tvOS 3.0, *)
let NSAddedPersistentStoresKey: String
@available(tvOS 3.0, *)
let NSRemovedPersistentStoresKey: String
@available(tvOS 3.0, *)
let NSUUIDChangedPersistentStoresKey: String
@available(tvOS 3.0, *)
let NSReadOnlyPersistentStoreOption: String
@available(tvOS 3.0, *)
let NSPersistentStoreTimeoutOption: String
@available(tvOS 3.0, *)
let NSSQLitePragmasOption: String
@available(tvOS 3.0, *)
let NSSQLiteAnalyzeOption: String
@available(tvOS 3.0, *)
let NSSQLiteManualVacuumOption: String
@available(tvOS 3.0, *)
let NSIgnorePersistentStoreVersioningOption: String
@available(tvOS 3.0, *)
let NSMigratePersistentStoresAutomaticallyOption: String
@available(tvOS 3.0, *)
let NSInferMappingModelAutomaticallyOption: String
@available(tvOS 3.0, *)
let NSStoreModelVersionHashesKey: String
@available(tvOS 3.0, *)
let NSStoreModelVersionIdentifiersKey: String
@available(tvOS 3.0, *)
let NSPersistentStoreOSCompatibility: String
@available(tvOS 6.0, *)
let NSPersistentStoreForceDestroyOption: String
@available(tvOS 5.0, *)
let NSPersistentStoreFileProtectionKey: String
@available(tvOS 3.0, *)
class NSPersistentStoreCoordinator : NSObject {
  init(managedObjectModel model: NSManagedObjectModel)
  var managedObjectModel: NSManagedObjectModel { get }
  var persistentStores: [NSPersistentStore] { get }
  @available(tvOS 8.0, *)
  var name: String?
  func persistentStoreForURL(URL: NSURL) -> NSPersistentStore?
  func URLForPersistentStore(store: NSPersistentStore) -> NSURL
  @available(tvOS 3.0, *)
  func setURL(url: NSURL, forPersistentStore store: NSPersistentStore) -> Bool
  func addPersistentStoreWithType(storeType: String, configuration: String?, URL storeURL: NSURL?, options: [NSObject : AnyObject]?) throws -> NSPersistentStore
  func removePersistentStore(store: NSPersistentStore) throws
  func setMetadata(metadata: [String : AnyObject]?, forPersistentStore store: NSPersistentStore)
  func metadataForPersistentStore(store: NSPersistentStore) -> [String : AnyObject]
  func managedObjectIDForURIRepresentation(url: NSURL) -> NSManagedObjectID?
  @available(tvOS 5.0, *)
  func executeRequest(request: NSPersistentStoreRequest, withContext context: NSManagedObjectContext) throws -> AnyObject
  @available(tvOS 3.0, *)
  class func registeredStoreTypes() -> [String : NSValue]
  @available(tvOS 3.0, *)
  class func registerStoreClass(storeClass: AnyClass, forStoreType storeType: String)
  @available(tvOS 7.0, *)
  class func metadataForPersistentStoreOfType(storeType: String, URL url: NSURL, options: [NSObject : AnyObject]?) throws -> [String : AnyObject]
  @available(tvOS 7.0, *)
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String, URL url: NSURL, options: [NSObject : AnyObject]?) throws
  @available(tvOS, introduced=3.0, deprecated=9.0, message="Use a -metadataForPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func metadataForPersistentStoreOfType(storeType: String?, URL url: NSURL) throws -> [String : AnyObject]
  @available(tvOS, introduced=3.0, deprecated=9.0, message="Use a -setMetadata:forPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String?, URL url: NSURL) throws
  func migratePersistentStore(store: NSPersistentStore, toURL URL: NSURL, options: [NSObject : AnyObject]?, withType storeType: String) throws -> NSPersistentStore
  @available(tvOS 9.0, *)
  func destroyPersistentStoreAtURL(url: NSURL, withType storeType: String, options: [NSObject : AnyObject]?) throws
  @available(tvOS 9.0, *)
  func replacePersistentStoreAtURL(destinationURL: NSURL, destinationOptions: [NSObject : AnyObject]?, withPersistentStoreFromURL sourceURL: NSURL, sourceOptions: [NSObject : AnyObject]?, storeType: String) throws
  @available(tvOS 8.0, *)
  func performBlock(block: () -> Void)
  @available(tvOS 8.0, *)
  func performBlockAndWait(block: () -> Void)
  convenience init()
}
struct _persistentStoreCoordinatorFlags {
  var _isRegistered: UInt32
  var _reservedFlags: UInt32
  init()
  init(_isRegistered: UInt32, _reservedFlags: UInt32)
}
