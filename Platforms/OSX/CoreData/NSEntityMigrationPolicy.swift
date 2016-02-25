
@available(OSX 10.5, *)
let NSMigrationManagerKey: String
@available(OSX 10.5, *)
let NSMigrationSourceObjectKey: String
@available(OSX 10.5, *)
let NSMigrationDestinationObjectKey: String
@available(OSX 10.5, *)
let NSMigrationEntityMappingKey: String
@available(OSX 10.5, *)
let NSMigrationPropertyMappingKey: String
@available(OSX 10.5, *)
let NSMigrationEntityPolicyKey: String
@available(OSX 10.5, *)
class NSEntityMigrationPolicy : NSObject {
  func beginEntityMapping(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func createDestinationInstancesForSourceInstance(_ sInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func endInstanceCreationForEntityMapping(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func createRelationshipsForDestinationInstance(_ dInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func endRelationshipCreationForEntityMapping(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func performCustomValidationForEntityMapping(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func endEntityMapping(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
}
