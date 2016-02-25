
@available(iOS 5.0, *)
class NSIncrementalStore : NSPersistentStore {
  func execute(_ request: NSPersistentStoreRequest, with context: NSManagedObjectContext?) throws -> AnyObject
  func newValuesForObject(with objectID: NSManagedObjectID, with context: NSManagedObjectContext) throws -> NSIncrementalStoreNode
  func newValue(forRelationship relationship: NSRelationshipDescription, forObjectWith objectID: NSManagedObjectID, with context: NSManagedObjectContext?) throws -> AnyObject
  class func identifierForNewStore(at storeURL: NSURL) -> AnyObject
  func obtainPermanentIDs(for array: [NSManagedObject]) throws -> [NSManagedObjectID]
  func managedObjectContextDidRegisterObjects(with objectIDs: [NSManagedObjectID])
  func managedObjectContextDidUnregisterObjects(with objectIDs: [NSManagedObjectID])
  func newObjectID(forEntity entity: NSEntityDescription, referenceObject data: AnyObject) -> NSManagedObjectID
  func referenceObject(for objectID: NSManagedObjectID) -> AnyObject
}
