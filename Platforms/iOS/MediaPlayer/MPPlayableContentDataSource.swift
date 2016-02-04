
protocol MPPlayableContentDataSource : ObjectProtocol {
  optional func beginLoadingChildItemsAt(indexPath: IndexPath, completionHandler: (Error?) -> Void)
  optional func childItemsDisplayPlaybackProgressAt(indexPath: IndexPath) -> Bool
  func numberOfChildItemsAt(indexPath: IndexPath) -> Int
  @available(iOS 7.1, *)
  func contentItemAt(indexPath: IndexPath) -> MPContentItem?
}
