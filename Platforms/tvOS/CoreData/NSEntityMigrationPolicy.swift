
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
  func beginEntityMapping(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func createDestinationInstancesForSourceInstance(_ sInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func endInstanceCreationForEntityMapping(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func createRelationshipsForDestinationInstance(_ dInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func endRelationshipCreationForEntityMapping(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func performCustomValidationForEntityMapping(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func endEntityMapping(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
}
