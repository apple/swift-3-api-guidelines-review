
protocol MPPlayableContentDataSource : ObjectProtocol {
  optional func beginLoadingChildItems(at indexPath: IndexPath, completionHandler: (Error?) -> Void)
  optional func childItemsDisplayPlaybackProgress(at indexPath: IndexPath) -> Bool
  func numberOfChildItems(at indexPath: IndexPath) -> Int
  @available(iOS 7.1, *)
  func contentItem(at indexPath: IndexPath) -> MPContentItem?
}
