
@available(OSX 10.4, *)
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
  @available(OSX 10.5, *)
  class func mergedModelFromBundles(bundles: [NSBundle]?, forStoreMetadata metadata: [String : AnyObject]) -> NSManagedObjectModel?
  @available(OSX 10.5, *)
  /*not inherited*/ init?(byMergingModels models: [NSManagedObjectModel], forStoreMetadata metadata: [String : AnyObject])
  @available(OSX 10.5, *)
  var fetchRequestTemplatesByName: [String : NSFetchRequest] { get }
  @available(OSX 10.5, *)
  var versionIdentifiers: Set<NSObject>
  @available(OSX 10.5, *)
  func isConfiguration(configuration: String?, compatibleWithStoreMetadata metadata: [String : AnyObject]) -> Bool
  @available(OSX 10.5, *)
  var entityVersionHashesByName: [String : NSData] { get }
  @available(OSX 10.4, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.4, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.4, *)
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
