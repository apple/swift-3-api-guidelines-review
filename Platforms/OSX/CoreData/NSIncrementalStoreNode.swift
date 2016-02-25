
@available(OSX 10.7, *)
class NSIncrementalStoreNode : NSObject {
  init(objectID objectID: NSManagedObjectID, withValues values: [String : AnyObject], version version: UInt64)
  func updateWithValues(_ values: [String : AnyObject], version version: UInt64)
  var objectID: NSManagedObjectID { get }
  var version: UInt64 { get }
  func valueForPropertyDescription(_ prop: NSPropertyDescription) -> AnyObject?
}
