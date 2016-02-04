
@available(OSX 10.4, *)
let NSSQLiteStoreType: String
@available(OSX 10.4, *)
let NSXMLStoreType: String
@available(OSX 10.4, *)
let NSBinaryStoreType: String
@available(OSX 10.4, *)
let NSInMemoryStoreType: String
@available(OSX 10.9, *)
enum NSPersistentStoreUbiquitousTransitionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AccountAdded
  case AccountRemoved
  case ContentRemoved
  case InitialImportCompleted
}
@available(OSX 10.4, *)
let NSStoreTypeKey: String
@available(OSX 10.4, *)
let NSStoreUUIDKey: String
@available(OSX 10.9, *)
let NSPersistentStoreCoordinatorStoresWillChangeNotification: String
@available(OSX 10.4, *)
let NSPersistentStoreCoordinatorStoresDidChangeNotification: String
@available(OSX 10.5, *)
let NSPersistentStoreCoordinatorWillRemoveStoreNotification: String
@available(OSX 10.4, *)
let NSAddedPersistentStoresKey: String
@available(OSX 10.4, *)
let NSRemovedPersistentStoresKey: String
@available(OSX 10.4, *)
let NSUUIDChangedPersistentStoresKey: String
@available(OSX 10.4, *)
let NSReadOnlyPersistentStoreOption: String
@available(OSX 10.4, *)
let NSValidateXMLStoreOption: String
@available(OSX 10.5, *)
let NSPersistentStoreTimeoutOption: String
@available(OSX 10.5, *)
let NSSQLitePragmasOption: String
@available(OSX 10.5, *)
let NSSQLiteAnalyzeOption: String
@available(OSX 10.6, *)
let NSSQLiteManualVacuumOption: String
@available(OSX 10.5, *)
let NSIgnorePersistentStoreVersioningOption: String
@available(OSX 10.5, *)
let NSMigratePersistentStoresAutomaticallyOption: String
@available(OSX 10.6, *)
let NSInferMappingModelAutomaticallyOption: String
@available(OSX 10.5, *)
let NSStoreModelVersionHashesKey: String
@available(OSX 10.5, *)
let NSStoreModelVersionIdentifiersKey: String
@available(OSX 10.5, *)
let NSPersistentStoreOSCompatibility: String
@available(OSX 10.6, *)
let NSXMLExternalRecordType: String
@available(OSX 10.6, *)
let NSBinaryExternalRecordType: String
@available(OSX 10.6, *)
let NSExternalRecordsFileFormatOption: String
@available(OSX 10.6, *)
let NSExternalRecordsDirectoryOption: String
@available(OSX 10.6, *)
let NSExternalRecordExtensionOption: String
@available(OSX 10.6, *)
let NSEntityNameInPathKey: String
@available(OSX 10.6, *)
let NSStoreUUIDInPathKey: String
@available(OSX 10.6, *)
let NSStorePathKey: String
@available(OSX 10.6, *)
let NSModelPathKey: String
@available(OSX 10.6, *)
let NSObjectURIKey: String
@available(OSX 10.7, *)
let NSPersistentStoreUbiquitousContentNameKey: String
@available(OSX 10.7, *)
let NSPersistentStoreUbiquitousContentURLKey: String
@available(OSX 10.7, *)
let NSPersistentStoreDidImportUbiquitousContentChangesNotification: String
@available(OSX 10.9, *)
let NSPersistentStoreUbiquitousTransitionTypeKey: String
@available(OSX 10.9, *)
let NSPersistentStoreUbiquitousPeerTokenOption: String
@available(OSX 10.9, *)
let NSPersistentStoreRemoveUbiquitousMetadataOption: String
@available(OSX 10.9, *)
let NSPersistentStoreUbiquitousContainerIdentifierKey: String
@available(OSX 10.9, *)
let NSPersistentStoreRebuildFromUbiquitousContentOption: String
@available(OSX 10.8, *)
let NSPersistentStoreForceDestroyOption: String
@available(OSX 10.4, *)
class NSPersistentStoreCoordinator : Object, Locking {
  init(managedObjectModel model: NSManagedObjectModel)
  var managedObjectModel: NSManagedObjectModel { get }
  var persistentStores: [NSPersistentStore] { get }
  @available(OSX 10.10, *)
  var name: String?
  func persistentStoreFor(URL: URL) -> NSPersistentStore?
  func urlFor(store: NSPersistentStore) -> URL
  @available(OSX 10.5, *)
  func setURL(url: URL, forPersistentStore store: NSPersistentStore) -> Bool
  func addPersistentStoreWithType(storeType: String, configuration: String?, url storeURL: URL?, options: [Object : AnyObject]? = [:]) throws -> NSPersistentStore
  func removePersistentStore(store: NSPersistentStore) throws
  func setMetadata(metadata: [String : AnyObject]?, forPersistentStore store: NSPersistentStore)
  func metadataFor(store: NSPersistentStore) -> [String : AnyObject]
  func managedObjectIDForURIRepresentation(url: URL) -> NSManagedObjectID?
  @available(OSX 10.7, *)
  func execute(request: NSPersistentStoreRequest, withContext context: NSManagedObjectContext) throws -> AnyObject
  @available(OSX 10.5, *)
  class func registeredStoreTypes() -> [String : Value]
  @available(OSX 10.5, *)
  class func registerStoreClass(storeClass: AnyClass, forStoreType storeType: String)
  @available(OSX 10.9, *)
  class func metadataForPersistentStoreOfType(storeType: String, url: URL, options: [Object : AnyObject]? = [:]) throws -> [String : AnyObject]
  @available(OSX 10.9, *)
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String, url: URL, options: [Object : AnyObject]? = [:]) throws
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use a -metadataForPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func metadataForPersistentStoreOfType(storeType: String?, url: URL) throws -> [String : AnyObject]
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use a -setMetadata:forPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String?, url: URL) throws
  @available(OSX 10.6, *)
  class func elementsDerivedFromExternalRecord(fileURL: URL) -> [Object : AnyObject]
  @available(OSX 10.9, *)
  class func removeUbiquitousContentAndPersistentStoreAt(storeURL: URL, options: [Object : AnyObject]? = [:]) throws
  @available(OSX 10.6, *)
  func importStoreWithIdentifier(storeIdentifier: String?, fromExternalRecordsDirectory externalRecordsURL: URL, to destinationURL: URL, options: [Object : AnyObject]? = [:], withType storeType: String) throws -> NSPersistentStore
  func migratePersistentStore(store: NSPersistentStore, to URL: URL, options: [Object : AnyObject]? = [:], withType storeType: String) throws -> NSPersistentStore
  @available(OSX 10.11, *)
  func destroyPersistentStoreAt(url: URL, withType storeType: String, options: [Object : AnyObject]? = [:]) throws
  @available(OSX 10.11, *)
  func replacePersistentStoreAt(destinationURL: URL, destinationOptions: [Object : AnyObject]? = [:], withPersistentStoreFrom sourceURL: URL, sourceOptions: [Object : AnyObject]? = [:], storeType: String) throws
  @available(OSX 10.10, *)
  func perform(block: () -> Void)
  @available(OSX 10.10, *)
  func performBlockAndWait(block: () -> Void)
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use -performBlockAndWait: instead")
  func lock()
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use -performBlockAndWait: instead")
  func unlock()
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use -performBlock: instead")
  func tryLock() -> Bool
  convenience init()
}
struct _persistentStoreCoordinatorFlags {
  var _isRegistered: UInt32
  var _reservedFlags: UInt32
  init()
  init(_isRegistered: UInt32, _reservedFlags: UInt32)
}
