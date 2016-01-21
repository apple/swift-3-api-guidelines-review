

/// Category for creating language options from AV types
extension AVMediaSelectionOption {

  /// Will create a language option from the AVMediaSelectionOption
  /// Returns nil if the AVMediaSelectionOption does not represent an Audible or Legible selection option.
  func makeNowPlayingInfoLanguageOption() -> MPNowPlayingInfoLanguageOption?
}
extension AVMediaSelectionGroup {

  /// Will create a language option group from the AVMediaSelectionGroup
  /// Any AVMediaSelectionOptions in the AVMediaSelectionGroup not representing
  /// Audible or Legible selection options will be ignored.
  func makeNowPlayingInfoLanguageOptionGroup() -> MPNowPlayingInfoLanguageOptionGroup
}
typealias MPMediaEntityPersistentID = UInt64
@available(tvOS 4.2, *)
let MPMediaEntityPropertyPersistentID: String
@available(tvOS 4.2, *)
let MPMediaItemPropertyPersistentID: String
let MPMediaItemPropertyMediaType: String
let MPMediaItemPropertyTitle: String
let MPMediaItemPropertyAlbumTitle: String
@available(tvOS 4.2, *)
let MPMediaItemPropertyAlbumPersistentID: String
let MPMediaItemPropertyArtist: String
@available(tvOS 4.2, *)
let MPMediaItemPropertyArtistPersistentID: String
let MPMediaItemPropertyAlbumArtist: String
@available(tvOS 4.2, *)
let MPMediaItemPropertyAlbumArtistPersistentID: String
let MPMediaItemPropertyGenre: String
@available(tvOS 4.2, *)
let MPMediaItemPropertyGenrePersistentID: String
let MPMediaItemPropertyComposer: String
@available(tvOS 4.2, *)
let MPMediaItemPropertyComposerPersistentID: String
let MPMediaItemPropertyPlaybackDuration: String
let MPMediaItemPropertyAlbumTrackNumber: String
let MPMediaItemPropertyAlbumTrackCount: String
let MPMediaItemPropertyDiscNumber: String
let MPMediaItemPropertyDiscCount: String
let MPMediaItemPropertyArtwork: String
let MPMediaItemPropertyLyrics: String
let MPMediaItemPropertyIsCompilation: String
@available(tvOS 4.0, *)
let MPMediaItemPropertyReleaseDate: String
@available(tvOS 4.0, *)
let MPMediaItemPropertyBeatsPerMinute: String
@available(tvOS 4.0, *)
let MPMediaItemPropertyComments: String
@available(tvOS 4.0, *)
let MPMediaItemPropertyAssetURL: String
@available(tvOS 6.0, *)
let MPMediaItemPropertyIsCloudItem: String
@available(tvOS 9.2, *)
let MPMediaItemPropertyHasProtectedAsset: String
let MPMediaItemPropertyPodcastTitle: String
@available(tvOS 4.2, *)
let MPMediaItemPropertyPodcastPersistentID: String
let MPMediaItemPropertyPlayCount: String
let MPMediaItemPropertySkipCount: String
let MPMediaItemPropertyRating: String
let MPMediaItemPropertyLastPlayedDate: String
@available(tvOS 4.0, *)
let MPMediaItemPropertyUserGrouping: String
@available(tvOS 6.0, *)
let MPMediaItemPropertyBookmarkTime: String
protocol MPMediaPlayback {
  func prepareToPlay()
  var isPreparedToPlay: Bool { get }
  func play()
  func pause()
  func stop()
  var currentPlaybackTime: TimeInterval { get set }
  var currentPlaybackRate: Float { get set }
  func beginSeekingForward()
  func beginSeekingBackward()
  func endSeeking()
}
let MPMediaPlaylistPropertyPersistentID: String
let MPMediaPlaylistPropertyName: String
let MPMediaPlaylistPropertyPlaylistAttributes: String
let MPMediaPlaylistPropertySeedItems: String
extension MPMediaItem {
  @available(tvOS 4.2, *)
  class func persistentIDPropertyForGroupingType(groupingType: MPMediaGrouping) -> String
  @available(tvOS 4.2, *)
  class func titlePropertyForGroupingType(groupingType: MPMediaGrouping) -> String
}
extension MPMoviePlayerController {
  @available(tvOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var movieMediaTypes: MPMovieMediaTypeMask { get }
  @available(tvOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var movieSourceType: MPMovieSourceType
  @available(tvOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var duration: TimeInterval { get }
  @available(tvOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var playableDuration: TimeInterval { get }
  @available(tvOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var naturalSize: CGSize { get }
  @available(tvOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var initialPlaybackTime: TimeInterval
  @available(tvOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var endPlaybackTime: TimeInterval
  @available(tvOS, introduced=4.3, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var allowsAirPlay: Bool
  @available(tvOS, introduced=5.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var isAirPlayVideoActive: Bool { get }
}
@available(tvOS, introduced=2.0, deprecated=9.0)
let MPMoviePlayerScalingModeDidChangeNotification: String
@available(tvOS, introduced=2.0, deprecated=9.0)
let MPMoviePlayerPlaybackDidFinishNotification: String
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerPlaybackDidFinishReasonUserInfoKey: String
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerPlaybackStateDidChangeNotification: String
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerLoadStateDidChangeNotification: String
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerNowPlayingMovieDidChangeNotification: String
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerWillEnterFullscreenNotification: String
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerDidEnterFullscreenNotification: String
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerWillExitFullscreenNotification: String
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerDidExitFullscreenNotification: String
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerFullscreenAnimationDurationUserInfoKey: String
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerFullscreenAnimationCurveUserInfoKey: String
@available(tvOS, introduced=5.0, deprecated=9.0)
let MPMoviePlayerIsAirPlayVideoActiveDidChangeNotification: String
@available(tvOS, introduced=6.0, deprecated=9.0)
let MPMoviePlayerReadyForDisplayDidChangeNotification: String
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMovieMediaTypesAvailableNotification: String
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMovieSourceTypeAvailableNotification: String
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMovieDurationAvailableNotification: String
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMovieNaturalSizeAvailableNotification: String
extension MPMoviePlayerController {
  @available(tvOS, introduced=3.2, deprecated=9.0)
  func requestThumbnailImagesAtTimes(playbackTimes: [AnyObject]!, timeOption option: MPMovieTimeOption)
  @available(tvOS, introduced=3.2, deprecated=9.0)
  func cancelAllThumbnailImageRequests()
}
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerThumbnailImageRequestDidFinishNotification: String
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerThumbnailImageKey: String
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerThumbnailTimeKey: String
@available(tvOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerThumbnailErrorKey: String
extension MPMoviePlayerController {
  @available(tvOS, introduced=4.0, deprecated=9.0)
  var timedMetadata: [AnyObject]! { get }
}
@available(tvOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataUpdatedNotification: String
@available(tvOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataUserInfoKey: String
@available(tvOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyName: String
@available(tvOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyInfo: String
@available(tvOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyMIMEType: String
@available(tvOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyDataType: String
@available(tvOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyLanguageCode: String
extension MPMoviePlayerController {
  @available(tvOS, introduced=4.3, deprecated=9.0)
  var accessLog: MPMovieAccessLog! { get }
  @available(tvOS, introduced=4.3, deprecated=9.0)
  var errorLog: MPMovieErrorLog! { get }
}
extension MPMoviePlayerController {
}
extension UIViewController {
}
extension MPMusicPlayerController {
  var playbackState: MPMusicPlaybackState { get }
  var repeatMode: MPMusicRepeatMode
  var shuffleMode: MPMusicShuffleMode
  @NSCopying var nowPlayingItem: MPMediaItem?
  @available(tvOS 5.0, *)
  var indexOfNowPlayingItem: Int { get }
  func setQueueWith(query: MPMediaQuery)
  func setQueueWith(itemCollection: MPMediaItemCollection)
  func skipToNextItem()
  func skipToBeginning()
  func skipToPreviousItem()
  func beginGeneratingPlaybackNotifications()
  func endGeneratingPlaybackNotifications()
}
@available(tvOS 5.0, *)
class MPNowPlayingInfoCenter : Object {
  class func defaultCenter() -> MPNowPlayingInfoCenter
  var nowPlayingInfo: [String : AnyObject]?
  init()
}
@available(tvOS 5.0, *)
let MPNowPlayingInfoPropertyElapsedPlaybackTime: String
@available(tvOS 5.0, *)
let MPNowPlayingInfoPropertyPlaybackRate: String
@available(tvOS 8.0, *)
let MPNowPlayingInfoPropertyDefaultPlaybackRate: String
@available(tvOS 5.0, *)
let MPNowPlayingInfoPropertyPlaybackQueueIndex: String
@available(tvOS 5.0, *)
let MPNowPlayingInfoPropertyPlaybackQueueCount: String
@available(tvOS 5.0, *)
let MPNowPlayingInfoPropertyChapterNumber: String
@available(tvOS 5.0, *)
let MPNowPlayingInfoPropertyChapterCount: String
@available(tvOS 9.0, *)
let MPNowPlayingInfoPropertyAvailableLanguageOptions: String
@available(tvOS 9.0, *)
let MPNowPlayingInfoPropertyCurrentLanguageOptions: String
@available(tvOS 9.0, *)
let MPLanguageOptionCharacteristicIsMainProgramContent: String
@available(tvOS 9.0, *)
let MPLanguageOptionCharacteristicIsAuxiliaryContent: String
@available(tvOS 9.0, *)
let MPLanguageOptionCharacteristicContainsOnlyForcedSubtitles: String
@available(tvOS 9.0, *)
let MPLanguageOptionCharacteristicTranscribesSpokenDialog: String
@available(tvOS 9.0, *)
let MPLanguageOptionCharacteristicDescribesMusicAndSound: String
@available(tvOS 9.0, *)
let MPLanguageOptionCharacteristicEasyToRead: String
@available(tvOS 9.0, *)
let MPLanguageOptionCharacteristicDescribesVideo: String
@available(tvOS 9.0, *)
let MPLanguageOptionCharacteristicLanguageTranslation: String
@available(tvOS 9.0, *)
let MPLanguageOptionCharacteristicDubbedTranslation: String
@available(tvOS 9.0, *)
let MPLanguageOptionCharacteristicVoiceOverTranslation: String
@available(tvOS 9.0, *)
enum MPNowPlayingInfoLanguageOptionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Audible
  case Legible
}

/// Represents a single language option option.
@available(tvOS 9.0, *)
class MPNowPlayingInfoLanguageOption : Object {
  init(type languageOptionType: MPNowPlayingInfoLanguageOptionType, languageTag: String, characteristics languageOptionCharacteristics: [String]?, displayName: String, identifier: String)

  /// Represents a special case that is used to
  /// represent the best legible language option based on system preferences.
  /// See AVPlayerItem-selectMediaOptionAutomaticallyInMediaSelectionGroup
  func isAutomaticLegibleLanguageOption() -> Bool

  /// Represents a special case that is used to
  /// represent the best audible language option based on system preferences.
  /// See AVPlayerItem-selectMediaOptionAutomaticallyInMediaSelectionGroup
  func isAutomaticAudibleLanguageOption() -> Bool

  /// The type of language option.
  var languageOptionType: MPNowPlayingInfoLanguageOptionType { get }

  /// The IETF BCP 47 language tag.
  /// A nil languageTag reprsents that this option should be disabled.
  /// A languageTag with the value of MPLangaugeOptionAutoLangaugeTag represents
  /// that the best langauge based on the system preferences should be used.
  var languageTag: String? { get }

  /// Characteristics describing the content of the language options.
  /// See the LanguageOptionCharacteristics for the most commonly used values.
  var languageOptionCharacteristics: [String]? { get }

  /// A user presentable display name for this option.
  var displayName: String? { get }

  /// A unique identifier representing this option.
  var identifier: String? { get }
  init()
}
@available(tvOS 9.0, *)
class MPNowPlayingInfoLanguageOptionGroup : Object {
  init(languageOptions: [MPNowPlayingInfoLanguageOption], defaultLanguageOption: MPNowPlayingInfoLanguageOption?, allowEmptySelection: Bool)

  /// The available language options within this group.
  var languageOptions: [MPNowPlayingInfoLanguageOption] { get }

  /// The default language option, if any, within this group.
  var defaultLanguageOption: MPNowPlayingInfoLanguageOption? { get }

  /// Indicates whether a selection in this group is required at all times.
  var allowEmptySelection: Bool { get }
  init()
}
@available(tvOS 7.1, *)
enum MPRemoteCommandHandlerStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /// There was no error executing the requested command.
  case Success

  /// The command could not be executed because the requested content does not
  /// exist in the current application state.
  case NoSuchContent

  /// The command could not be executed because there is no now playing item
  /// available that is required for this command. As an example, an
  /// application would return this error code if an "enable language option"
  /// command is received, but nothing is currently playing.
  @available(tvOS 9.1, *)
  case NoActionableNowPlayingItem

  /// The command could not be executed for another reason.
  case CommandFailed
}
@available(tvOS 7.1, *)
class MPRemoteCommand : Object {

  /// Whether a button (for example) should be enabled and tappable for this
  /// particular command.
  var isEnabled: Bool
  func addTarget(target: AnyObject, action: Selector)
  func removeTarget(target: AnyObject, action: Selector)
  func removeTarget(target: AnyObject?)

  /// Returns an opaque object to act as the target.
  func addTargetWithHandler(handler: (MPRemoteCommandEvent) -> MPRemoteCommandHandlerStatus) -> AnyObject
  init()
}
@available(tvOS 7.1, *)
class MPSkipIntervalCommand : MPRemoteCommand {

  /// An array of NSNumbers (NSTimeIntervals) that contain preferred skip intervals.
  var preferredIntervals: [AnyObject]
  init()
}
@available(tvOS 7.1, *)
class MPFeedbackCommand : MPRemoteCommand {

  /// Whether the feedback command is in an "active" state. An example of when a
  /// feedback command would be active is if the user already "liked" a particular
  /// content item.
  var isActive: Bool

  /// A localized string briefly describing the context of the command.
  var localizedTitle: String

  /// An optional shorter version of the localized title for this feedback
  /// command. MediaPlayer uses this property to display this command's title on
  /// remote control interfaces with little screen space.
  @available(tvOS 8.0, *)
  var localizedShortTitle: String
  init()
}
@available(tvOS 7.1, *)
class MPRatingCommand : MPRemoteCommand {

  /// Minimum rating for the command.
  var minimumRating: Float

  /// Maximum rating for the command.
  var maximumRating: Float
  init()
}
@available(tvOS 7.1, *)
class MPChangePlaybackRateCommand : MPRemoteCommand {

  /// An array of NSNumbers (floats) that contain supported playback rates that
  /// the command can send.
  var supportedPlaybackRates: [Number]
  init()
}
@available(tvOS 9.0, *)
class MPChangePlaybackPositionCommand : MPRemoteCommand {
  init()
}
@available(tvOS 7.1, *)
class MPRemoteCommandCenter : Object {
  var pauseCommand: MPRemoteCommand { get }
  var playCommand: MPRemoteCommand { get }
  var stopCommand: MPRemoteCommand { get }
  var togglePlayPauseCommand: MPRemoteCommand { get }
  var enableLanguageOptionCommand: MPRemoteCommand { get }
  var disableLanguageOptionCommand: MPRemoteCommand { get }
  var nextTrackCommand: MPRemoteCommand { get }
  var previousTrackCommand: MPRemoteCommand { get }
  var skipForwardCommand: MPSkipIntervalCommand { get }
  var skipBackwardCommand: MPSkipIntervalCommand { get }
  var seekForwardCommand: MPRemoteCommand { get }
  var seekBackwardCommand: MPRemoteCommand { get }
  var ratingCommand: MPRatingCommand { get }
  var changePlaybackRateCommand: MPChangePlaybackRateCommand { get }
  var likeCommand: MPFeedbackCommand { get }
  var dislikeCommand: MPFeedbackCommand { get }
  var bookmarkCommand: MPFeedbackCommand { get }
  var changePlaybackPositionCommand: MPChangePlaybackPositionCommand { get }
  class func shared() -> MPRemoteCommandCenter
  init()
}
@available(tvOS 7.1, *)
class MPRemoteCommandEvent : Object {

  /// The command that sent the event.
  var command: MPRemoteCommand { get }

  /// The time when the event occurred.
  var timestamp: TimeInterval { get }
  init()
}
@available(tvOS 7.1, *)
class MPSkipIntervalCommandEvent : MPRemoteCommandEvent {

  /// The chosen interval for this skip command event.
  var interval: TimeInterval { get }
  init()
}
@available(tvOS 7.1, *)
enum MPSeekCommandEventType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BeginSeeking
  case EndSeeking
}
@available(tvOS 7.1, *)
class MPSeekCommandEvent : MPRemoteCommandEvent {

  /// The type of seek command event, which specifies whether an external player
  /// began or ended seeking.
  var type: MPSeekCommandEventType { get }
  init()
}
@available(tvOS 7.1, *)
class MPRatingCommandEvent : MPRemoteCommandEvent {

  /// The chosen rating for this command event. This value will be within the
  /// minimumRating and maximumRating values set for the MPRatingCommand object.
  var rating: Float { get }
  init()
}
@available(tvOS 7.1, *)
class MPChangePlaybackRateCommandEvent : MPRemoteCommandEvent {

  /// The chosen playback rate for this command event. This value will be equal
  /// to one of the values specified in the supportedPlaybackRates array for the
  /// MPChangePlaybackRateCommand object.
  var playbackRate: Float { get }
  init()
}
@available(tvOS 7.1, *)
class MPFeedbackCommandEvent : MPRemoteCommandEvent {

  /// Whether the command event is a negative operation. For example, the command
  /// might ask that the app remove a bookmark for a particular track, rather than
  /// add it. In this case, the handler for the bookmark command should check this
  /// flag and remove the bookmark if it is set to YES.
  ///
  /// For like/dislike, a "negative like" might be treated differently from a
  /// dislike command. The app might want to remove the "like" flag from the
  /// current track, but not blacklist and skip to the next track as it would for
  /// a dislike command.
  var isNegative: Bool { get }
  init()
}
@available(tvOS 9.0, *)
class MPChangeLanguageOptionCommandEvent : MPRemoteCommandEvent {

  /// The requested language option to change.
  /// The supplied language option may be the Automatic Legible Language Option
  /// which would mean that best legible language option based on user preferences
  /// is being requested. See MPNowPlayingInfoLanguageOption isAutomaticLegibleLanguageOption
  var languageOption: MPNowPlayingInfoLanguageOption { get }
  init()
}
@available(tvOS 8.0, *)
class MPChangePlaybackPositionCommandEvent : MPRemoteCommandEvent {

  /// The desired playback position to use when setting the current time of the player.
  var positionTime: TimeInterval { get }
  init()
}
