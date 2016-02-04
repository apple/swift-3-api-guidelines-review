
protocol MPPlayableContentDelegate : NSObjectProtocol {
  @available(iOS 7.1, *)
  optional func playableContentManager(contentManager: MPPlayableContentManager, initiatePlaybackOfContentItemAtIndexPath indexPath: NSIndexPath, completionHandler: (NSError?) -> Void)
  @available(iOS 9.0, *)
  optional func playableContentManager(contentManager: MPPlayableContentManager, initializePlaybackQueueWithCompletionHandler completionHandler: (NSError?) -> Void)
  @available(iOS 8.4, *)
  optional func playableContentManager(contentManager: MPPlayableContentManager, didUpdateContext context: MPPlayableContentManagerContext)
}
