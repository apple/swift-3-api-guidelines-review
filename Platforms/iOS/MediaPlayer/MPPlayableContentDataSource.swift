
protocol MPPlayableContentDataSource : NSObjectProtocol {
  optional func beginLoadingChildItemsAtIndexPath(_ indexPath: NSIndexPath, completionHandler completionHandler: (NSError?) -> Void)
  optional func childItemsDisplayPlaybackProgressAtIndexPath(_ indexPath: NSIndexPath) -> Bool
  func numberOfChildItemsAtIndexPath(_ indexPath: NSIndexPath) -> Int
  @available(iOS 7.1, *)
  func contentItemAtIndexPath(_ indexPath: NSIndexPath) -> MPContentItem?
}
