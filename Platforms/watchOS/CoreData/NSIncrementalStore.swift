
@available(watchOS 2.0, *)
class NSIncrementalStore : NSPersistentStore {
  func loadMetadata() throws
  func execute(request: NSPersistentStoreRequest, withContext context: NSManagedObjectContext?) throws -> AnyObject
  func newValuesForObject(withID objectID: NSManagedObjectID, withContext context: NSManagedObjectContext) throws -> NSIncrementalStoreNode
  func newValue(forRelationship relationship: NSRelationshipDescription, forObjectWith objectID: NSManagedObjectID, withContext context: NSManagedObjectContext?) throws -> AnyObject
  class func identifierForNewStore(at storeURL: URL) -> AnyObject
  func obtainPermanentIDs(forObjects array: [NSManagedObject]) throws -> [NSManagedObjectID]
  func managedObjectContextDidRegisterObjects(withIDs objectIDs: [NSManagedObjectID])
  func managedObjectContextDidUnregisterObjects(withIDs objectIDs: [NSManagedObjectID])
  func newObjectID(forEntity entity: NSEntityDescription, referenceObject data: AnyObject) -> NSManagedObjectID
  func referenceObject(forObjectID objectID: NSManagedObjectID) -> AnyObject
  init(persistentStoreCoordinator root: NSPersistentStoreCoordinator?, configurationName name: String?, url: URL, options: [Object : AnyObject]? = [:])
}
