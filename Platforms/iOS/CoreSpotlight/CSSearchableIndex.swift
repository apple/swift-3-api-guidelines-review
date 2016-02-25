
@available(iOS 9.0, *)
let CSIndexErrorDomain: String
@available(iOS 9.0, *)
enum CSIndexErrorCode : Int {
  init?(rawValue rawValue: Int)
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
  init(name name: String)
  init(name name: String, protectionClass protectionClass: String?)
  func indexSearchableItems(_ items: [CSSearchableItem], completionHandler completionHandler: ((NSError?) -> Void)?)
  func deleteSearchableItemsWithIdentifiers(_ identifiers: [String], completionHandler completionHandler: ((NSError?) -> Void)?)
  func deleteSearchableItemsWithDomainIdentifiers(_ domainIdentifiers: [String], completionHandler completionHandler: ((NSError?) -> Void)?)
  func deleteAllSearchableItemsWithCompletionHandler(_ completionHandler: ((NSError?) -> Void)?)
}
extension CSSearchableIndex {
  func beginIndexBatch()
  func endIndexBatchWithClientState(_ clientState: NSData, completionHandler completionHandler: ((NSError?) -> Void)?)
  func fetchLastClientStateWithCompletionHandler(_ completionHandler: (NSData?, NSError?) -> Void)
}
@available(iOS 9.0, *)
protocol CSSearchableIndexDelegate : NSObjectProtocol {
  func searchableIndex(_ searchableIndex: CSSearchableIndex, reindexAllSearchableItemsWithAcknowledgementHandler acknowledgementHandler: () -> Void)
  func searchableIndex(_ searchableIndex: CSSearchableIndex, reindexSearchableItemsWithIdentifiers identifiers: [String], acknowledgementHandler acknowledgementHandler: () -> Void)
  optional func searchableIndexDidThrottle(_ searchableIndex: CSSearchableIndex)
  optional func searchableIndexDidFinishThrottle(_ searchableIndex: CSSearchableIndex)
}
