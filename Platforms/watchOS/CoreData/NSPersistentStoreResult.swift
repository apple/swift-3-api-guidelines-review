
@available(watchOS 2.0, *)
enum NSBatchUpdateRequestResultType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case StatusOnlyResultType
  case UpdatedObjectIDsResultType
  case UpdatedObjectsCountResultType
}
@available(watchOS 2.0, *)
enum NSBatchDeleteRequestResultType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case ResultTypeStatusOnly
  case ResultTypeObjectIDs
  case ResultTypeCount
}
@available(watchOS 2.0, *)
class NSPersistentStoreResult : NSObject {
}
@available(watchOS 2.0, *)
class NSPersistentStoreAsynchronousResult : NSPersistentStoreResult {
  var managedObjectContext: NSManagedObjectContext { get }
  var operationError: NSError? { get }
  var progress: NSProgress? { get }
  func cancel()
}
@available(watchOS 2.0, *)
class NSAsynchronousFetchResult : NSPersistentStoreAsynchronousResult {
  var fetchRequest: NSAsynchronousFetchRequest { get }
  var finalResult: [AnyObject]? { get }
}
@available(watchOS 2.0, *)
class NSBatchUpdateResult : NSPersistentStoreResult {
  var result: AnyObject? { get }
  var resultType: NSBatchUpdateRequestResultType { get }
}
@available(watchOS 2.0, *)
class NSBatchDeleteResult : NSPersistentStoreResult {
  var result: AnyObject? { get }
  var resultType: NSBatchDeleteRequestResultType { get }
}
