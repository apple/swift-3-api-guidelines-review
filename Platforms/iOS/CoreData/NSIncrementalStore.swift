
@available(iOS 5.0, *)
class NSIncrementalStore : NSPersistentStore {
  func executeRequest(_ request: NSPersistentStoreRequest, withContext context: NSManagedObjectContext?) throws -> AnyObject
  func newValuesForObjectWithID(_ objectID: NSManagedObjectID, withContext context: NSManagedObjectContext) throws -> NSIncrementalStoreNode
  func newValueForRelationship(_ relationship: NSRelationshipDescription, forObjectWithID objectID: NSManagedObjectID, withContext context: NSManagedObjectContext?) throws -> AnyObject
  class func identifierForNewStoreAtURL(_ storeURL: NSURL) -> AnyObject
  func obtainPermanentIDsForObjects(_ array: [NSManagedObject]) throws -> [NSManagedObjectID]
  func managedObjectContextDidRegisterObjectsWithIDs(_ objectIDs: [NSManagedObjectID])
  func managedObjectContextDidUnregisterObjectsWithIDs(_ objectIDs: [NSManagedObjectID])
  func newObjectIDForEntity(_ entity: NSEntityDescription, referenceObject data: AnyObject) -> NSManagedObjectID
  func referenceObjectForObjectID(_ objectID: NSManagedObjectID) -> AnyObject
}
