
@available(tvOS 3.0, *)
class NSAtomicStore : NSPersistentStore {
  init(persistentStoreCoordinator coordinator: NSPersistentStoreCoordinator?, configurationName: String?, URL url: NSURL, options: [NSObject : AnyObject]?)
  func load() throws
  func save() throws
  func newCacheNodeForManagedObject(managedObject: NSManagedObject) -> NSAtomicStoreCacheNode
  func updateCacheNode(node: NSAtomicStoreCacheNode, fromManagedObject managedObject: NSManagedObject)
  func cacheNodes() -> Set<NSAtomicStoreCacheNode>
  func addCacheNodes(cacheNodes: Set<NSAtomicStoreCacheNode>)
  func willRemoveCacheNodes(cacheNodes: Set<NSAtomicStoreCacheNode>)
  func cacheNodeForObjectID(objectID: NSManagedObjectID) -> NSAtomicStoreCacheNode?
  func objectIDForEntity(entity: NSEntityDescription, referenceObject data: AnyObject) -> NSManagedObjectID
  func newReferenceObjectForManagedObject(managedObject: NSManagedObject) -> AnyObject
  func referenceObjectForObjectID(objectID: NSManagedObjectID) -> AnyObject
}
