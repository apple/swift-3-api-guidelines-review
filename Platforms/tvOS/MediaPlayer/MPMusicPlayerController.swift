
extension MPMusicPlayerController {
  var playbackState: MPMusicPlaybackState { get }
  var repeatMode: MPMusicRepeatMode
  var shuffleMode: MPMusicShuffleMode
  @NSCopying var nowPlayingItem: MPMediaItem?
  @available(tvOS 5.0, *)
  var indexOfNowPlayingItem: Int { get }
  func setQueueWithQuery(query: MPMediaQuery)
  func setQueueWithItemCollection(itemCollection: MPMediaItemCollection)
  func skipToNextItem()
  func skipToBeginning()
  func skipToPreviousItem()
  func beginGeneratingPlaybackNotifications()
  func endGeneratingPlaybackNotifications()
}
