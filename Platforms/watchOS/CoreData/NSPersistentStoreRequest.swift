
enum NSPersistentStoreRequestType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case FetchRequestType
  case SaveRequestType
  @available(watchOS 2.0, *)
  case BatchUpdateRequestType
  @available(watchOS 2.0, *)
  case BatchDeleteRequestType
}
@available(watchOS 2.0, *)
class NSPersistentStoreRequest : NSObject, NSCopying {
  var affectedStores: [NSPersistentStore]?
  var requestType: NSPersistentStoreRequestType { get }
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
typealias NSPersistentStoreAsynchronousFetchResultCompletionBlock = (NSAsynchronousFetchResult) -> Void
@available(watchOS 2.0, *)
class NSAsynchronousFetchRequest : NSPersistentStoreRequest {
  var fetchRequest: NSFetchRequest { get }
  var completionBlock: NSPersistentStoreAsynchronousFetchResultCompletionBlock? { get }
  var estimatedResultCount: Int
  init(fetchRequest request: NSFetchRequest, completionBlock blk: NSPersistentStoreAsynchronousFetchResultCompletionBlock?)
}
