
protocol MPPlayableContentDataSource : NSObjectProtocol {
  optional func beginLoadingChildItemsAtIndexPath(indexPath: NSIndexPath, completionHandler: (NSError?) -> Void)
  optional func childItemsDisplayPlaybackProgressAtIndexPath(indexPath: NSIndexPath) -> Bool
  func numberOfChildItemsAtIndexPath(indexPath: NSIndexPath) -> Int
  @available(iOS 7.1, *)
  func contentItemAtIndexPath(indexPath: NSIndexPath) -> MPContentItem?
}
