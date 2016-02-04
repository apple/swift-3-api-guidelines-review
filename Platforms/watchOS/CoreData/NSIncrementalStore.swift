
@available(watchOS 2.0, *)
class NSIncrementalStore : NSPersistentStore {
  func loadMetadata() throws
  func executeRequest(request: NSPersistentStoreRequest, withContext context: NSManagedObjectContext?) throws -> AnyObject
  func newValuesForObjectWithID(objectID: NSManagedObjectID, withContext context: NSManagedObjectContext) throws -> NSIncrementalStoreNode
  func newValueForRelationship(relationship: NSRelationshipDescription, forObjectWithID objectID: NSManagedObjectID, withContext context: NSManagedObjectContext?) throws -> AnyObject
  class func identifierForNewStoreAtURL(storeURL: NSURL) -> AnyObject
  func obtainPermanentIDsForObjects(array: [NSManagedObject]) throws -> [NSManagedObjectID]
  func managedObjectContextDidRegisterObjectsWithIDs(objectIDs: [NSManagedObjectID])
  func managedObjectContextDidUnregisterObjectsWithIDs(objectIDs: [NSManagedObjectID])
  func newObjectIDForEntity(entity: NSEntityDescription, referenceObject data: AnyObject) -> NSManagedObjectID
  func referenceObjectForObjectID(objectID: NSManagedObjectID) -> AnyObject
  init(persistentStoreCoordinator root: NSPersistentStoreCoordinator?, configurationName name: String?, URL url: NSURL, options: [NSObject : AnyObject]?)
}
