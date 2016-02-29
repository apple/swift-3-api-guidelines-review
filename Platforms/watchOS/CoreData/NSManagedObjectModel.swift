
@available(watchOS 2.0, *)
class NSManagedObjectModel : NSObject, NSCoding, NSCopying, NSFastEnumeration {
  class func mergedModel(from bundles: [NSBundle]?) -> NSManagedObjectModel?
  /*not inherited*/ init?(byMerging models: [NSManagedObjectModel]?)
  convenience init?(contentsOf url: NSURL)
  var entitiesByName: [String : NSEntityDescription] { get }
  var entities: [NSEntityDescription]
  var configurations: [String] { get }
  func entities(forConfiguration configuration: String?) -> [NSEntityDescription]?
  func setEntities(_ entities: [NSEntityDescription], forConfiguration configuration: String)
  func setFetchRequestTemplate(_ fetchRequestTemplate: NSFetchRequest?, forName name: String)
  func fetchRequestTemplate(forName name: String) -> NSFetchRequest?
  func fetchRequestFromTemplate(withName name: String, substitutionVariables variables: [String : AnyObject]) -> NSFetchRequest?
  var localizationDictionary: [String : String]?
  @available(watchOS 2.0, *)
  class func mergedModel(from bundles: [NSBundle]?, forStoreMetadata metadata: [String : AnyObject]) -> NSManagedObjectModel?
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(byMerging models: [NSManagedObjectModel], forStoreMetadata metadata: [String : AnyObject])
  @available(watchOS 2.0, *)
  var fetchRequestTemplatesByName: [String : NSFetchRequest] { get }
  @available(watchOS 2.0, *)
  var versionIdentifiers: Set<NSObject>
  @available(watchOS 2.0, *)
  func isConfiguration(_ configuration: String?, compatibleWithStoreMetadata metadata: [String : AnyObject]) -> Bool
  @available(watchOS 2.0, *)
  var entityVersionHashesByName: [String : NSData] { get }
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
struct __managedObjectModelFlags {
  var _isInUse: UInt32
  var _isImmutable: UInt32
  var _isOptimizedForEncoding: UInt32
  var _hasEntityWithConstraints: UInt32
  var _reservedEntityDescription: UInt32
  init()
  init(_isInUse _isInUse: UInt32, _isImmutable _isImmutable: UInt32, _isOptimizedForEncoding _isOptimizedForEncoding: UInt32, _hasEntityWithConstraints _hasEntityWithConstraints: UInt32, _reservedEntityDescription _reservedEntityDescription: UInt32)
}
