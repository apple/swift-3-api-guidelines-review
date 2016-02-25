
extension CSSearchableIndex {
  func beginIndexBatch()
  func endIndexBatchWithClientState(_ clientState: NSData, completionHandler completionHandler: ((NSError?) -> Void)?)
  func fetchLastClientStateWithCompletionHandler(_ completionHandler: (NSData?, NSError?) -> Void)
}
