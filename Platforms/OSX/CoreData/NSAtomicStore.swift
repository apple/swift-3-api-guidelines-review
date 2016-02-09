
@available(OSX 10.5, *)
class NSAtomicStore : NSPersistentStore {
  init(persistentStoreCoordinator coordinator: NSPersistentStoreCoordinator?, configurationName: String?, url: URL, options: [Object : AnyObject]? = [:])
  func load() throws
  func save() throws
  func newCacheNode(forManagedObject managedObject: NSManagedObject) -> NSAtomicStoreCacheNode
  func updateCacheNode(node: NSAtomicStoreCacheNode, from managedObject: NSManagedObject)
  func cacheNodes() -> Set<NSAtomicStoreCacheNode>
  func addCacheNodes(cacheNodes: Set<NSAtomicStoreCacheNode>)
  func willRemoveCacheNodes(cacheNodes: Set<NSAtomicStoreCacheNode>)
  func cacheNode(forObjectID objectID: NSManagedObjectID) -> NSAtomicStoreCacheNode?
  func objectID(forEntity entity: NSEntityDescription, referenceObject data: AnyObject) -> NSManagedObjectID
  func newReferenceObject(forManagedObject managedObject: NSManagedObject) -> AnyObject
  func referenceObject(forObjectID objectID: NSManagedObjectID) -> AnyObject
}
