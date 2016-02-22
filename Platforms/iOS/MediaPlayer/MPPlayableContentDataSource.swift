
protocol MPPlayableContentDataSource : NSObjectProtocol {
  optional func beginLoadingChildItems(at indexPath: NSIndexPath, completionHandler completionHandler: (NSError?) -> Void)
  optional func childItemsDisplayPlaybackProgress(at indexPath: NSIndexPath) -> Bool
  func numberOfChildItems(at indexPath: NSIndexPath) -> Int
  @available(iOS 7.1, *)
  func contentItem(at indexPath: NSIndexPath) -> MPContentItem?
}
