
@available(iOS 3.0, *)
let NSMigrationManagerKey: String
@available(iOS 3.0, *)
let NSMigrationSourceObjectKey: String
@available(iOS 3.0, *)
let NSMigrationDestinationObjectKey: String
@available(iOS 3.0, *)
let NSMigrationEntityMappingKey: String
@available(iOS 3.0, *)
let NSMigrationPropertyMappingKey: String
@available(iOS 3.0, *)
let NSMigrationEntityPolicyKey: String
@available(iOS 3.0, *)
class NSEntityMigrationPolicy : Object {
  func begin(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func createDestinationInstancesForSourceInstance(sInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func endInstanceCreationFor(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func createRelationshipsForDestinationInstance(dInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func endRelationshipCreationFor(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func performCustomValidationFor(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func end(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  init()
}
