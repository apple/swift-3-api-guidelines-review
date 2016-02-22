
@available(iOS 9.0, *)
class CSIndexExtensionRequestHandler : NSObject, NSExtensionRequestHandling, CSSearchableIndexDelegate {
  init()
  @available(iOS 9.0, *)
  func beginRequest(context: NSExtensionContext)
  @available(iOS 9.0, *)
  func searchableIndex(searchableIndex: CSSearchableIndex, reindexAllSearchableItemsWithAcknowledgementHandler acknowledgementHandler: () -> Void)
  @available(iOS 9.0, *)
  func searchableIndex(searchableIndex: CSSearchableIndex, reindexSearchableItemsWithIdentifiers identifiers: [String], acknowledgementHandler: () -> Void)
  @available(iOS 9.0, *)
  func searchableIndexDidThrottle(searchableIndex: CSSearchableIndex)
  @available(iOS 9.0, *)
  func searchableIndexDidFinishThrottle(searchableIndex: CSSearchableIndex)
}
