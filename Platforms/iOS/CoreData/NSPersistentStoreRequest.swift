
enum NSPersistentStoreRequestType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case FetchRequestType
  case SaveRequestType
  @available(iOS 8.0, *)
  case BatchUpdateRequestType
  @available(iOS 9.0, *)
  case BatchDeleteRequestType
}
@available(iOS 5.0, *)
class NSPersistentStoreRequest : NSObject, NSCopying {
  var affectedStores: [NSPersistentStore]?
  var requestType: NSPersistentStoreRequestType { get }
  init()
  @available(iOS 5.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
typealias NSPersistentStoreAsynchronousFetchResultCompletionBlock = (NSAsynchronousFetchResult) -> Void
@available(iOS 8.0, *)
class NSAsynchronousFetchRequest : NSPersistentStoreRequest {
  var fetchRequest: NSFetchRequest { get }
  var completionBlock: NSPersistentStoreAsynchronousFetchResultCompletionBlock? { get }
  var estimatedResultCount: Int
  init(fetchRequest request: NSFetchRequest, completionBlock blk: NSPersistentStoreAsynchronousFetchResultCompletionBlock?)
  init()
}
