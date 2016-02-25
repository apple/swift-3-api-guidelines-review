
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
  func begin(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func createDestinationInstances(forSourceInstance sInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func endInstanceCreation(for mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func createRelationships(forDestinationInstance dInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func endRelationshipCreation(for mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func performCustomValidation(for mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func end(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
}
