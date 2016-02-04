
@available(OSX 10.10, *)
class NSBatchUpdateRequest : NSPersistentStoreRequest {
  init(entityName: String)
  init(entity: NSEntityDescription)
  var entityName: String { get }
  var entity: NSEntityDescription { get }
  var predicate: NSPredicate?
  var includesSubentities: Bool
  var resultType: NSBatchUpdateRequestResultType
  var propertiesToUpdate: [NSObject : AnyObject]?
  init()
}
struct _requestFlags {
  var includesSubentities: UInt32
  var resultType: UInt32
  var entityIsName: UInt32
  var _RESERVED: UInt32
  init()
  init(includesSubentities: UInt32, resultType: UInt32, entityIsName: UInt32, _RESERVED: UInt32)
}