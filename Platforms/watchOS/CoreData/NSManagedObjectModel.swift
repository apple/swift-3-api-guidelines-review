
@available(watchOS 2.0, *)
class NSManagedObjectModel : NSObject, NSCoding, NSCopying, NSFastEnumeration {
  class func mergedModelFromBundles(_ bundles: [NSBundle]?) -> NSManagedObjectModel?
  /*not inherited*/ init?(byMergingModels models: [NSManagedObjectModel]?)
  convenience init?(contentsOfURL url: NSURL)
  var entitiesByName: [String : NSEntityDescription] { get }
  var entities: [NSEntityDescription]
  var configurations: [String] { get }
  func entitiesForConfiguration(_ configuration: String?) -> [NSEntityDescription]?
  func setEntities(_ entities: [NSEntityDescription], forConfiguration configuration: String)
  func setFetchRequestTemplate(_ fetchRequestTemplate: NSFetchRequest?, forName name: String)
  func fetchRequestTemplateForName(_ name: String) -> NSFetchRequest?
  func fetchRequestFromTemplateWithName(_ name: String, substitutionVariables variables: [String : AnyObject]) -> NSFetchRequest?
  var localizationDictionary: [String : String]?
  @available(watchOS 2.0, *)
  class func mergedModelFromBundles(_ bundles: [NSBundle]?, forStoreMetadata metadata: [String : AnyObject]) -> NSManagedObjectModel?
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(byMergingModels models: [NSManagedObjectModel], forStoreMetadata metadata: [String : AnyObject])
  @available(watchOS 2.0, *)
  var fetchRequestTemplatesByName: [String : NSFetchRequest] { get }
  @available(watchOS 2.0, *)
  var versionIdentifiers: Set<NSObject>
  @available(watchOS 2.0, *)
  func isConfiguration(_ configuration: String?, compatibleWithStoreMetadata metadata: [String : AnyObject]) -> Bool
  @available(watchOS 2.0, *)
  var entityVersionHashesByName: [String : NSData] { get }
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  func countByEnumeratingWithState(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
