
@available(iOS 9.0, *)
let CSIndexErrorDomain: String
@available(iOS 9.0, *)
enum CSIndexErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case IndexUnavailableError
  case InvalidItemError
  case InvalidClientStateError
  case RemoteConnectionError
  case QuotaExceeded
  case IndexingUnsupported
}
@available(iOS 9.0, *)
class CSSearchableIndex : NSObject {
  weak var indexDelegate: @sil_weak CSSearchableIndexDelegate?
  class func isIndexingAvailable() -> Bool
  class func defaultSearchableIndex() -> Self
  init(name: String)
  init(name: String, protectionClass: String?)
  func indexSearchableItems(items: [CSSearchableItem], completionHandler: ((NSError?) -> Void)?)
  func deleteSearchableItemsWithIdentifiers(identifiers: [String], completionHandler: ((NSError?) -> Void)?)
  func deleteSearchableItemsWithDomainIdentifiers(domainIdentifiers: [String], completionHandler: ((NSError?) -> Void)?)
  func deleteAllSearchableItemsWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  init()
}
extension CSSearchableIndex {
  func beginIndexBatch()
  func endIndexBatchWithClientState(clientState: NSData, completionHandler: ((NSError?) -> Void)?)
  func fetchLastClientStateWithCompletionHandler(completionHandler: (NSData?, NSError?) -> Void)
}
@available(iOS 9.0, *)
protocol CSSearchableIndexDelegate : NSObjectProtocol {
  func searchableIndex(searchableIndex: CSSearchableIndex, reindexAllSearchableItemsWithAcknowledgementHandler acknowledgementHandler: () -> Void)
  func searchableIndex(searchableIndex: CSSearchableIndex, reindexSearchableItemsWithIdentifiers identifiers: [String], acknowledgementHandler: () -> Void)
  optional func searchableIndexDidThrottle(searchableIndex: CSSearchableIndex)
  optional func searchableIndexDidFinishThrottle(searchableIndex: CSSearchableIndex)
}
