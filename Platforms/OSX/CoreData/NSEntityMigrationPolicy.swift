
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
  func createDestinationInstances(forSourceInstance sInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func endInstanceCreation(forEntityMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func createRelationships(forDestinationInstance dInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func endRelationshipCreation(forEntityMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func performCustomValidation(forEntityMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func end(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  init()
}
