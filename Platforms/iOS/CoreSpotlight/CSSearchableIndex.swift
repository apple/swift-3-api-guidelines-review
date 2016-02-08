
@available(iOS 9.0, *)
let CSIndexErrorDomain: String
@available(iOS 9.0, *)
enum CSIndexErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknownError
  case indexUnavailableError
  case invalidItemError
  case invalidClientStateError
  case remoteConnectionError
  case quotaExceeded
  case indexingUnsupported
}
@available(iOS 9.0, *)
class CSSearchableIndex : Object {
  weak var indexDelegate: @sil_weak CSSearchableIndexDelegate?
  class func isIndexingAvailable() -> Bool
  class func defaultSearchableIndex() -> Self
  init(name: String)
  init(name: String, protectionClass: String?)
  func indexSearchableItems(items: [CSSearchableItem], completionHandler: ((Error?) -> Void)? = nil)
  func deleteSearchableItems(identifiers identifiers: [String], completionHandler: ((Error?) -> Void)? = nil)
  func deleteSearchableItems(domainIdentifiers domainIdentifiers: [String], completionHandler: ((Error?) -> Void)? = nil)
  func deleteAllSearchableItems(completionHandler completionHandler: ((Error?) -> Void)? = nil)
  init()
}
extension CSSearchableIndex {
  func beginBatch()
  func endBatch(clientState clientState: Data, completionHandler: ((Error?) -> Void)? = nil)
  func fetchLastClientState(completionHandler completionHandler: (Data?, Error?) -> Void)
}
@available(iOS 9.0, *)
protocol CSSearchableIndexDelegate : ObjectProtocol {
  func searchableIndex(searchableIndex: CSSearchableIndex, reindexAllSearchableItemsWithAcknowledgementHandler acknowledgementHandler: () -> Void)
  func searchableIndex(searchableIndex: CSSearchableIndex, reindexSearchableItemsWithIdentifiers identifiers: [String], acknowledgementHandler: () -> Void)
  optional func searchableIndexDidThrottle(searchableIndex: CSSearchableIndex)
  optional func searchableIndexDidFinishThrottle(searchableIndex: CSSearchableIndex)
}
