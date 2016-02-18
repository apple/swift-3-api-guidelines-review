
@available(iOS 9.0, *)
class CSIndexExtensionRequestHandler : Object, ExtensionRequestHandling, CSSearchableIndexDelegate {
  init()
  @available(iOS 9.0, *)
  func beginRequest(with context: ExtensionContext)
  @available(iOS 9.0, *)
  func searchableIndex(searchableIndex: CSSearchableIndex, reindexAllSearchableItemsWithAcknowledgementHandler acknowledgementHandler: () -> Void)
  @available(iOS 9.0, *)
  func searchableIndex(searchableIndex: CSSearchableIndex, reindexSearchableItemsWithIdentifiers identifiers: [String], acknowledgementHandler: () -> Void)
  @available(iOS 9.0, *)
  func searchableIndexDidThrottle(searchableIndex: CSSearchableIndex)
  @available(iOS 9.0, *)
  func searchableIndexDidFinishThrottle(searchableIndex: CSSearchableIndex)
}
