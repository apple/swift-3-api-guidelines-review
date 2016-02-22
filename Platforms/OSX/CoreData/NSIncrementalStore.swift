
@available(OSX 10.7, *)
class NSIncrementalStore : NSPersistentStore {
  func loadMetadata() throws
  func execute(_ request: NSPersistentStoreRequest, with context: NSManagedObjectContext?) throws -> AnyObject
  func newValuesForObject(with objectID: NSManagedObjectID, with context: NSManagedObjectContext) throws -> NSIncrementalStoreNode
  func newValue(forRelationship relationship: NSRelationshipDescription, forObjectWith objectID: NSManagedObjectID, with context: NSManagedObjectContext?) throws -> AnyObject
  class func identifierForNewStore(at storeURL: NSURL) -> AnyObject
  func obtainPermanentIDs(for array: [NSManagedObject]) throws -> [NSManagedObjectID]
  func managedObjectContextDidRegisterObjects(with objectIDs: [NSManagedObjectID])
  func managedObjectContextDidUnregisterObjects(with objectIDs: [NSManagedObjectID])
  func newObjectID(forEntity entity: NSEntityDescription, referenceObject data: AnyObject) -> NSManagedObjectID
  func referenceObject(for objectID: NSManagedObjectID) -> AnyObject
  init(persistentStoreCoordinator root: NSPersistentStoreCoordinator?, configurationName name: String?, url url: NSURL, options options: [NSObject : AnyObject]? = [:])
}
