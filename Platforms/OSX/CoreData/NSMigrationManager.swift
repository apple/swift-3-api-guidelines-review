
@available(OSX 10.5, *)
class NSMigrationManager : NSObject {
  init(sourceModel: NSManagedObjectModel, destinationModel: NSManagedObjectModel)
  func migrateStoreFromURL(sourceURL: NSURL, type sStoreType: String, options sOptions: [NSObject : AnyObject]?, withMappingModel mappings: NSMappingModel?, toDestinationURL dURL: NSURL, destinationType dStoreType: String, destinationOptions dOptions: [NSObject : AnyObject]?) throws
  @available(OSX 10.7, *)
  var usesStoreSpecificMigrationManager: Bool
  func reset()
  var mappingModel: NSMappingModel { get }
  var sourceModel: NSManagedObjectModel { get }
  var destinationModel: NSManagedObjectModel { get }
  var sourceContext: NSManagedObjectContext { get }
  var destinationContext: NSManagedObjectContext { get }
  func sourceEntityForEntityMapping(mEntity: NSEntityMapping) -> NSEntityDescription?
  func destinationEntityForEntityMapping(mEntity: NSEntityMapping) -> NSEntityDescription?
  func associateSourceInstance(sourceInstance: NSManagedObject, withDestinationInstance destinationInstance: NSManagedObject, forEntityMapping entityMapping: NSEntityMapping)
  func destinationInstancesForEntityMappingNamed(mappingName: String, sourceInstances: [NSManagedObject]?) -> [NSManagedObject]
  func sourceInstancesForEntityMappingNamed(mappingName: String, destinationInstances: [NSManagedObject]?) -> [NSManagedObject]
  var currentEntityMapping: NSEntityMapping { get }
  var migrationProgress: Float { get }
  var userInfo: [NSObject : AnyObject]?
  func cancelMigrationWithError(error: NSError)
  init()
}
struct _migrationManagerFlags {
  var _migrationWasCancelled: UInt32
  var _usesStoreSpecificMigrationManager: UInt32
  var _reservedMigrationManager: UInt32
  init()
  init(_migrationWasCancelled: UInt32, _usesStoreSpecificMigrationManager: UInt32, _reservedMigrationManager: UInt32)
}
