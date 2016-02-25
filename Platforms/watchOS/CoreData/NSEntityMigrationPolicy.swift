
@available(watchOS 2.0, *)
let NSMigrationManagerKey: String
@available(watchOS 2.0, *)
let NSMigrationSourceObjectKey: String
@available(watchOS 2.0, *)
let NSMigrationDestinationObjectKey: String
@available(watchOS 2.0, *)
let NSMigrationEntityMappingKey: String
@available(watchOS 2.0, *)
let NSMigrationPropertyMappingKey: String
@available(watchOS 2.0, *)
let NSMigrationEntityPolicyKey: String
@available(watchOS 2.0, *)
class NSEntityMigrationPolicy : NSObject {
  func beginEntityMapping(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func createDestinationInstancesForSourceInstance(_ sInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func endInstanceCreationForEntityMapping(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func createRelationshipsForDestinationInstance(_ dInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func endRelationshipCreationForEntityMapping(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func performCustomValidationForEntityMapping(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func endEntityMapping(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
}
