
extension CSSearchableIndex {
  func beginIndexBatch()
  func endIndexBatchWithClientState(clientState: NSData, completionHandler: ((NSError?) -> Void)?)
  func fetchLastClientStateWithCompletionHandler(completionHandler: (NSData?, NSError?) -> Void)
}
