
@available(OSX 10.4, *)
class NSManagedObjectModel : Object, Coding, Copying, FastEnumeration {
  class func mergedModelFrom(bundles: [Bundle]?) -> NSManagedObjectModel?
  /*not inherited*/ init?(byMerging models: [NSManagedObjectModel]?)
  init()
  convenience init?(contentsOf url: URL)
  var entitiesByName: [String : NSEntityDescription] { get }
  var entities: [NSEntityDescription]
  var configurations: [String] { get }
  func entitiesFor(configuration configuration: String?) -> [NSEntityDescription]?
  func setEntities(entities: [NSEntityDescription], forConfiguration configuration: String)
  func setFetchRequestTemplate(fetchRequestTemplate: NSFetchRequest?, forName name: String)
  func fetchRequestTemplateFor(name name: String) -> NSFetchRequest?
  func fetchRequestFromTemplate(name name: String, substitutionVariables variables: [String : AnyObject]) -> NSFetchRequest?
  var localizationDictionary: [String : String]?
  @available(OSX 10.5, *)
  class func mergedModel(from bundles: [Bundle]?, forStoreMetadata metadata: [String : AnyObject]) -> NSManagedObjectModel?
  @available(OSX 10.5, *)
  /*not inherited*/ init?(byMerging models: [NSManagedObjectModel], forStoreMetadata metadata: [String : AnyObject])
  @available(OSX 10.5, *)
  var fetchRequestTemplatesByName: [String : NSFetchRequest] { get }
  @available(OSX 10.5, *)
  var versionIdentifiers: Set<Object>
  @available(OSX 10.5, *)
  func isConfiguration(configuration: String?, compatibleWithStoreMetadata metadata: [String : AnyObject]) -> Bool
  @available(OSX 10.5, *)
  var entityVersionHashesByName: [String : Data] { get }
  @available(OSX 10.4, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.4, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(OSX 10.4, *)
  func countByEnumerating(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
struct __managedObjectModelFlags {
  var _isInUse: UInt32
  var _isImmutable: UInt32
  var _isOptimizedForEncoding: UInt32
  var _hasEntityWithConstraints: UInt32
  var _reservedEntityDescription: UInt32
  init()
  init(_isInUse: UInt32, _isImmutable: UInt32, _isOptimizedForEncoding: UInt32, _hasEntityWithConstraints: UInt32, _reservedEntityDescription: UInt32)
}
