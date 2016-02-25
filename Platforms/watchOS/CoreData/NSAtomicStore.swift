
@available(watchOS 2.0, *)
class NSAtomicStore : NSPersistentStore {
  func load() throws
  func save() throws
  func newCacheNodeForManagedObject(_ managedObject: NSManagedObject) -> NSAtomicStoreCacheNode
  func updateCacheNode(_ node: NSAtomicStoreCacheNode, fromManagedObject managedObject: NSManagedObject)
  func cacheNodes() -> Set<NSAtomicStoreCacheNode>
  func addCacheNodes(_ cacheNodes: Set<NSAtomicStoreCacheNode>)
  func willRemoveCacheNodes(_ cacheNodes: Set<NSAtomicStoreCacheNode>)
  func cacheNodeForObjectID(_ objectID: NSManagedObjectID) -> NSAtomicStoreCacheNode?
  func objectIDForEntity(_ entity: NSEntityDescription, referenceObject data: AnyObject) -> NSManagedObjectID
  func newReferenceObjectForManagedObject(_ managedObject: NSManagedObject) -> AnyObject
  func referenceObjectForObjectID(_ objectID: NSManagedObjectID) -> AnyObject
}
