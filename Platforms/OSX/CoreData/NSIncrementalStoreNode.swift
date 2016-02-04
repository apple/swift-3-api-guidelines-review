
@available(OSX 10.7, *)
class NSIncrementalStoreNode : NSObject {
  init(objectID: NSManagedObjectID, withValues values: [String : AnyObject], version: UInt64)
  func updateWithValues(values: [String : AnyObject], version: UInt64)
  var objectID: NSManagedObjectID { get }
  var version: UInt64 { get }
  func valueForPropertyDescription(prop: NSPropertyDescription) -> AnyObject?
  init()
}
