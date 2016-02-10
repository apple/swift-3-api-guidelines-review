
@available(OSX 10.5, *)
class NSMigrationManager : Object {
  init(sourceModel: NSManagedObjectModel, destinationModel: NSManagedObjectModel)
  func migrateStore(from sourceURL: URL, type sStoreType: String, options sOptions: [Object : AnyObject]? = [:], with mappings: NSMappingModel?, toDestinationURL dURL: URL, destinationType dStoreType: String, destinationOptions dOptions: [Object : AnyObject]? = [:]) throws
  @available(OSX 10.7, *)
  var usesStoreSpecificMigrationManager: Bool
  func reset()
  var mappingModel: NSMappingModel { get }
  var sourceModel: NSManagedObjectModel { get }
  var destinationModel: NSManagedObjectModel { get }
  var sourceContext: NSManagedObjectContext { get }
  var destinationContext: NSManagedObjectContext { get }
  func sourceEntity(for mEntity: NSEntityMapping) -> NSEntityDescription?
  func destinationEntity(for mEntity: NSEntityMapping) -> NSEntityDescription?
  func associateSourceInstance(sourceInstance: NSManagedObject, withDestinationInstance destinationInstance: NSManagedObject, for entityMapping: NSEntityMapping)
  func destinationInstances(forEntityMappingNamed mappingName: String, sourceInstances: [NSManagedObject]?) -> [NSManagedObject]
  func sourceInstances(forEntityMappingNamed mappingName: String, destinationInstances: [NSManagedObject]?) -> [NSManagedObject]
  var currentEntityMapping: NSEntityMapping { get }
  var migrationProgress: Float { get }
  var userInfo: [Object : AnyObject]?
  func cancelMigrationWithError(error: Error)
  init()
}
struct _migrationManagerFlags {
  var _migrationWasCancelled: UInt32
  var _usesStoreSpecificMigrationManager: UInt32
  var _reservedMigrationManager: UInt32
  init()
  init(_migrationWasCancelled: UInt32, _usesStoreSpecificMigrationManager: UInt32, _reservedMigrationManager: UInt32)
}
