
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
