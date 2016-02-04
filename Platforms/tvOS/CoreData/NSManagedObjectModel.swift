
@available(tvOS 3.0, *)
class NSManagedObjectModel : NSObject, NSCoding, NSCopying, NSFastEnumeration {
  class func mergedModelFromBundles(bundles: [NSBundle]?) -> NSManagedObjectModel?
  /*not inherited*/ init?(byMergingModels models: [NSManagedObjectModel]?)
  init()
  convenience init?(contentsOfURL url: NSURL)
  var entitiesByName: [String : NSEntityDescription] { get }
  var entities: [NSEntityDescription]
  var configurations: [String] { get }
  func entitiesForConfiguration(configuration: String?) -> [NSEntityDescription]?
  func setEntities(entities: [NSEntityDescription], forConfiguration configuration: String)
  func setFetchRequestTemplate(fetchRequestTemplate: NSFetchRequest?, forName name: String)
  func fetchRequestTemplateForName(name: String) -> NSFetchRequest?
  func fetchRequestFromTemplateWithName(name: String, substitutionVariables variables: [String : AnyObject]) -> NSFetchRequest?
  var localizationDictionary: [String : String]?
  @available(tvOS 3.0, *)
  class func mergedModelFromBundles(bundles: [NSBundle]?, forStoreMetadata metadata: [String : AnyObject]) -> NSManagedObjectModel?
  @available(tvOS 3.0, *)
  /*not inherited*/ init?(byMergingModels models: [NSManagedObjectModel], forStoreMetadata metadata: [String : AnyObject])
  @available(tvOS 3.0, *)
  var fetchRequestTemplatesByName: [String : NSFetchRequest] { get }
  @available(tvOS 3.0, *)
  var versionIdentifiers: Set<NSObject>
  @available(tvOS 3.0, *)
  func isConfiguration(configuration: String?, compatibleWithStoreMetadata metadata: [String : AnyObject]) -> Bool
  @available(tvOS 3.0, *)
  var entityVersionHashesByName: [String : NSData] { get }
  @available(tvOS 3.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 3.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 3.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
