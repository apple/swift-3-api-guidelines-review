
extension CSSearchableIndex {
  func beginBatch()
  func endBatch(clientState clientState: NSData, completionHandler: ((NSError?) -> Void)? = nil)
  func fetchLastClientState(completionHandler completionHandler: (NSData?, NSError?) -> Void)
}
