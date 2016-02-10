
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
class NSEntityMigrationPolicy : Object {
  func begin(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func createDestinationInstancesFor(sourceInstance sInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func endInstanceCreationFor(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func createRelationshipsFor(destinationInstance dInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func endRelationshipCreationFor(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func performCustomValidationFor(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func end(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  init()
}
