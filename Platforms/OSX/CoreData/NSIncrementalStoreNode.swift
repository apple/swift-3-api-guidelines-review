
@available(OSX 10.7, *)
class NSIncrementalStoreNode : Object {
  init(objectID: NSManagedObjectID, withValues values: [String : AnyObject], version: UInt64)
  func update(withValues values: [String : AnyObject], version: UInt64)
  var objectID: NSManagedObjectID { get }
  var version: UInt64 { get }
  func value(forPropertyDescription prop: NSPropertyDescription) -> AnyObject?
  init()
}
