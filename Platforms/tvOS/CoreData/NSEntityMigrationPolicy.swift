
@available(tvOS 3.0, *)
let NSMigrationManagerKey: String
@available(tvOS 3.0, *)
let NSMigrationSourceObjectKey: String
@available(tvOS 3.0, *)
let NSMigrationDestinationObjectKey: String
@available(tvOS 3.0, *)
let NSMigrationEntityMappingKey: String
@available(tvOS 3.0, *)
let NSMigrationPropertyMappingKey: String
@available(tvOS 3.0, *)
let NSMigrationEntityPolicyKey: String
@available(tvOS 3.0, *)
class NSEntityMigrationPolicy : NSObject {
  func beginEntityMapping(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func createDestinationInstancesForSourceInstance(sInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func endInstanceCreationForEntityMapping(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func createRelationshipsForDestinationInstance(dInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func endRelationshipCreationForEntityMapping(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func performCustomValidationForEntityMapping(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func endEntityMapping(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  init()
}
