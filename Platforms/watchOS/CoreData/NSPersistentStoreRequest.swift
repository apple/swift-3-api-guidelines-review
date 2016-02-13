
enum NSPersistentStoreRequestType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case fetchRequestType
  case saveRequestType
  @available(watchOS 2.0, *)
  case batchUpdateRequestType
  @available(watchOS 2.0, *)
  case batchDeleteRequestType
}
@available(watchOS 2.0, *)
class NSPersistentStoreRequest : Object, Copying {
  var affectedStores: [NSPersistentStore]?
  var requestType: NSPersistentStoreRequestType { get }
  init()
  @available(watchOS 2.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
typealias NSPersistentStoreAsynchronousFetchResultCompletionBlock = (NSAsynchronousFetchResult) -> Void
@available(watchOS 2.0, *)
class NSAsynchronousFetchRequest : NSPersistentStoreRequest {
  var fetchRequest: NSFetchRequest { get }
  var completionBlock: NSPersistentStoreAsynchronousFetchResultCompletionBlock? { get }
  var estimatedResultCount: Int
  init(fetchRequest request: NSFetchRequest, completionBlock blk: NSPersistentStoreAsynchronousFetchResultCompletionBlock? = nil)
  init()
}
