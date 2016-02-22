
@available(watchOS 2.0, *)
class NSAtomicStore : NSPersistentStore {
  init(persistentStoreCoordinator coordinator: NSPersistentStoreCoordinator?, configurationName configurationName: String?, url url: NSURL, options options: [NSObject : AnyObject]? = [:])
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
