
extension CSSearchableIndex {
  func beginBatch()
  func endBatchWithClientState(clientState: Data, completionHandler: ((Error?) -> Void)? = nil)
  func fetchLastClientStateWithCompletionHandler(completionHandler: (Data?, Error?) -> Void)
}
