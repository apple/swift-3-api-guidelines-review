
@available(OSX 10.5, *)
class NSAtomicStore : NSPersistentStore {
  func load() throws
  func save() throws
  func newCacheNode(for managedObject: NSManagedObject) -> NSAtomicStoreCacheNode
  func updateCacheNode(_ node: NSAtomicStoreCacheNode, from managedObject: NSManagedObject)
  func cacheNodes() -> Set<NSAtomicStoreCacheNode>
  func addCacheNodes(_ cacheNodes: Set<NSAtomicStoreCacheNode>)
  func willRemoveCacheNodes(_ cacheNodes: Set<NSAtomicStoreCacheNode>)
  func cacheNode(for objectID: NSManagedObjectID) -> NSAtomicStoreCacheNode?
  func objectID(forEntity entity: NSEntityDescription, referenceObject data: AnyObject) -> NSManagedObjectID
  func newReferenceObject(for managedObject: NSManagedObject) -> AnyObject
  func referenceObject(for objectID: NSManagedObjectID) -> AnyObject
}
