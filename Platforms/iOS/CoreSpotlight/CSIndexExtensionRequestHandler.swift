
@available(iOS 9.0, *)
class CSIndexExtensionRequestHandler : NSObject, NSExtensionRequestHandling, CSSearchableIndexDelegate {
  @available(iOS 9.0, *)
  func beginRequest(with context: NSExtensionContext)
  @available(iOS 9.0, *)
  func searchableIndex(_ searchableIndex: CSSearchableIndex, reindexAllSearchableItemsWithAcknowledgementHandler acknowledgementHandler: () -> Void)
  @available(iOS 9.0, *)
  func searchableIndex(_ searchableIndex: CSSearchableIndex, reindexSearchableItemsWithIdentifiers identifiers: [String], acknowledgementHandler acknowledgementHandler: () -> Void)
  @available(iOS 9.0, *)
  func searchableIndexDidThrottle(_ searchableIndex: CSSearchableIndex)
  @available(iOS 9.0, *)
  func searchableIndexDidFinishThrottle(_ searchableIndex: CSSearchableIndex)
}
