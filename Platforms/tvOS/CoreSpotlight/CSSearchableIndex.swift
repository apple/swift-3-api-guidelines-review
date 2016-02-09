
extension CSSearchableIndex {
  func beginBatch()
  func endBatch(withClientState clientState: Data, completionHandler: ((Error?) -> Void)? = nil)
  func fetchLastClientState(withCompletionHandler completionHandler: (Data?, Error?) -> Void)
}
