
enum NSPersistentStoreRequestType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case FetchRequestType
  case SaveRequestType
  @available(tvOS 8.0, *)
  case BatchUpdateRequestType
  @available(tvOS 9.0, *)
  case BatchDeleteRequestType
}
@available(tvOS 5.0, *)
class NSPersistentStoreRequest : NSObject, NSCopying {
  var affectedStores: [NSPersistentStore]?
  var requestType: NSPersistentStoreRequestType { get }
  @available(tvOS 5.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
typealias NSPersistentStoreAsynchronousFetchResultCompletionBlock = (NSAsynchronousFetchResult) -> Void
@available(tvOS 8.0, *)
class NSAsynchronousFetchRequest : NSPersistentStoreRequest {
  var fetchRequest: NSFetchRequest { get }
  var completionBlock: NSPersistentStoreAsynchronousFetchResultCompletionBlock? { get }
  var estimatedResultCount: Int
  init(fetchRequest request: NSFetchRequest, completionBlock blk: NSPersistentStoreAsynchronousFetchResultCompletionBlock?)
}
