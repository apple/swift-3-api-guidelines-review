
extension CSSearchableIndex {
  func beginBatch()
  func endBatch(clientState clientState: Data, completionHandler: ((Error?) -> Void)? = nil)
  func fetchLastClientState(completionHandler completionHandler: (Data?, Error?) -> Void)
}
