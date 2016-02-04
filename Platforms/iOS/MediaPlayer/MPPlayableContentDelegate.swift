
protocol MPPlayableContentDelegate : ObjectProtocol {
  @available(iOS 7.1, *)
  optional func playableContentManager(contentManager: MPPlayableContentManager, initiatePlaybackOfContentItemAt indexPath: IndexPath, completionHandler: (Error?) -> Void)
  @available(iOS 9.0, *)
  optional func playableContentManager(contentManager: MPPlayableContentManager, initializePlaybackQueueWithCompletionHandler completionHandler: (Error?) -> Void)
  @available(iOS 8.4, *)
  optional func playableContentManager(contentManager: MPPlayableContentManager, didUpdateContext context: MPPlayableContentManagerContext)
}
