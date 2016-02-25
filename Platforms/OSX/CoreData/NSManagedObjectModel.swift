
@available(OSX 10.4, *)
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
  @available(OSX 10.5, *)
  class func mergedModelFromBundles(_ bundles: [NSBundle]?, forStoreMetadata metadata: [String : AnyObject]) -> NSManagedObjectModel?
  @available(OSX 10.5, *)
  /*not inherited*/ init?(byMergingModels models: [NSManagedObjectModel], forStoreMetadata metadata: [String : AnyObject])
  @available(OSX 10.5, *)
  var fetchRequestTemplatesByName: [String : NSFetchRequest] { get }
  @available(OSX 10.5, *)
  var versionIdentifiers: Set<NSObject>
  @available(OSX 10.5, *)
  func isConfiguration(_ configuration: String?, compatibleWithStoreMetadata metadata: [String : AnyObject]) -> Bool
  @available(OSX 10.5, *)
  var entityVersionHashesByName: [String : NSData] { get }
  @available(OSX 10.4, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.4, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.4, *)
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
