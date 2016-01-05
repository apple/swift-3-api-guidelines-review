

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

/// MPContentItem represents high-level metadata for a particular media item for
/// representation outside the client application. Examples of media items that a
/// developer might want to represent include song files, streaming audio URLs,
/// or radio stations.
@available(iOS 7.1, *)
class MPContentItem : NSObject {

  /// A unique identifier for this content item. (Required)
  var identifier: String { get }

  /// A title for this item. Usually this would be the track name, if representing
  /// a song, the episode name of a podcast, etc.
  var title: String?

  /// A subtitle for this item. If this were representing a song, this would
  /// usually be the artist or composer.
  var subtitle: String?

  /// Artwork for this item. Examples of artwork for a content item are the album
  /// cover for a song, or a movie poster for a movie.
  var artwork: MPMediaItemArtwork?

  /// Represents whether the content item is a container of other content items.
  /// An example of a container content item might be an album, which contains
  /// multiple songs.
  var isContainer: Bool

  /// Represents whether this content item is playable or not. A content item can
  /// be both a container, and playable. For example, a container item like a
  /// playlist might be set as playable if the app would like to provide the
  /// option of playing the playlist's tracks in order when selected.
  var isPlayable: Bool

  /// Represents the current playback progress of the item.
  /// 0.0 = not watched/listened/viewed, 1.0 = fully watched/listened/viewed
  /// Default is -1.0 (no progress indicator shown)
  var playbackProgress: Float

  /// Designated initializer. A unique identifier is required to identify the item
  /// for later use.
  init(identifier: String)
  convenience init()
}
typealias MPMediaEntityPersistentID = UInt64
@available(iOS 4.2, *)
class MPMediaEntity : NSObject, NSSecureCoding {
  class func canFilterByProperty(property: String) -> Bool
  @available(iOS 4.0, *)
  func enumerateValuesForProperties(properties: Set<String>, usingBlock block: (String, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 8.0, *)
  subscript (key: AnyObject) -> AnyObject? { get }
  func valueForProperty(property: String) -> AnyObject?
  @available(iOS 7.0, *)
  var persistentID: MPMediaEntityPersistentID { get }
  init()
  @available(iOS 4.2, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.2, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 4.2, *)
let MPMediaEntityPropertyPersistentID: String
@available(iOS 3.0, *)
struct MPMediaType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Music: MPMediaType { get }
  static var Podcast: MPMediaType { get }
  static var AudioBook: MPMediaType { get }
  @available(iOS 5.0, *)
  static var AudioITunesU: MPMediaType { get }
  static var AnyAudio: MPMediaType { get }
  @available(iOS 5.0, *)
  static var Movie: MPMediaType { get }
  @available(iOS 5.0, *)
  static var TVShow: MPMediaType { get }
  @available(iOS 5.0, *)
  static var VideoPodcast: MPMediaType { get }
  @available(iOS 5.0, *)
  static var MusicVideo: MPMediaType { get }
  @available(iOS 5.0, *)
  static var VideoITunesU: MPMediaType { get }
  @available(iOS 7.0, *)
  static var HomeVideo: MPMediaType { get }
  @available(iOS 5.0, *)
  static var AnyVideo: MPMediaType { get }
  static var Any: MPMediaType { get }
}
@available(iOS 3.0, *)
class MPMediaItem : MPMediaEntity {
  @available(iOS 5.0, *)
  var persistentID: MPMediaEntityPersistentID { get }
  @available(iOS 7.0, *)
  var mediaType: MPMediaType { get }
  @available(iOS 7.0, *)
  var title: String? { get }
  @available(iOS 7.0, *)
  var albumTitle: String? { get }
  @available(iOS 8.0, *)
  var albumPersistentID: MPMediaEntityPersistentID { get }
  @available(iOS 7.0, *)
  var artist: String? { get }
  @available(iOS 8.0, *)
  var artistPersistentID: MPMediaEntityPersistentID { get }
  @available(iOS 7.0, *)
  var albumArtist: String? { get }
  @available(iOS 8.0, *)
  var albumArtistPersistentID: MPMediaEntityPersistentID { get }
  @available(iOS 7.0, *)
  var genre: String? { get }
  @available(iOS 8.0, *)
  var genrePersistentID: MPMediaEntityPersistentID { get }
  @available(iOS 7.0, *)
  var composer: String? { get }
  @available(iOS 8.0, *)
  var composerPersistentID: MPMediaEntityPersistentID { get }
  @available(iOS 7.0, *)
  var playbackDuration: NSTimeInterval { get }
  @available(iOS 7.0, *)
  var albumTrackNumber: Int { get }
  @available(iOS 8.0, *)
  var albumTrackCount: Int { get }
  @available(iOS 7.0, *)
  var discNumber: Int { get }
  @available(iOS 8.0, *)
  var discCount: Int { get }
  @available(iOS 7.0, *)
  var artwork: MPMediaItemArtwork? { get }
  @available(iOS 8.0, *)
  var lyrics: String? { get }
  @available(iOS 8.0, *)
  var isCompilation: Bool { get }
  @available(iOS 7.0, *)
  var releaseDate: NSDate? { get }
  @available(iOS 8.0, *)
  var beatsPerMinute: Int { get }
  @available(iOS 8.0, *)
  var comments: String? { get }
  @available(iOS 8.0, *)
  var assetURL: NSURL? { get }
  @available(iOS 8.0, *)
  var isCloudItem: Bool { get }
  @available(iOS 9.2, *)
  var isProtectedAsset: Bool { get }
  @available(iOS 7.0, *)
  var podcastTitle: String? { get }
  @available(iOS 8.0, *)
  var podcastPersistentID: MPMediaEntityPersistentID { get }
  @available(iOS 7.0, *)
  var playCount: Int { get }
  @available(iOS 7.0, *)
  var skipCount: Int { get }
  @available(iOS 7.0, *)
  var rating: Int { get }
  @available(iOS 7.0, *)
  var lastPlayedDate: NSDate? { get }
  @available(iOS 8.0, *)
  var userGrouping: String? { get }
  @available(iOS 7.0, *)
  var bookmarkTime: NSTimeInterval { get }
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 4.2, *)
let MPMediaItemPropertyPersistentID: String
let MPMediaItemPropertyMediaType: String
let MPMediaItemPropertyTitle: String
let MPMediaItemPropertyAlbumTitle: String
@available(iOS 4.2, *)
let MPMediaItemPropertyAlbumPersistentID: String
let MPMediaItemPropertyArtist: String
@available(iOS 4.2, *)
let MPMediaItemPropertyArtistPersistentID: String
let MPMediaItemPropertyAlbumArtist: String
@available(iOS 4.2, *)
let MPMediaItemPropertyAlbumArtistPersistentID: String
let MPMediaItemPropertyGenre: String
@available(iOS 4.2, *)
let MPMediaItemPropertyGenrePersistentID: String
let MPMediaItemPropertyComposer: String
@available(iOS 4.2, *)
let MPMediaItemPropertyComposerPersistentID: String
let MPMediaItemPropertyPlaybackDuration: String
let MPMediaItemPropertyAlbumTrackNumber: String
let MPMediaItemPropertyAlbumTrackCount: String
let MPMediaItemPropertyDiscNumber: String
let MPMediaItemPropertyDiscCount: String
let MPMediaItemPropertyArtwork: String
let MPMediaItemPropertyLyrics: String
let MPMediaItemPropertyIsCompilation: String
@available(iOS 4.0, *)
let MPMediaItemPropertyReleaseDate: String
@available(iOS 4.0, *)
let MPMediaItemPropertyBeatsPerMinute: String
@available(iOS 4.0, *)
let MPMediaItemPropertyComments: String
@available(iOS 4.0, *)
let MPMediaItemPropertyAssetURL: String
@available(iOS 6.0, *)
let MPMediaItemPropertyIsCloudItem: String
@available(iOS 9.2, *)
let MPMediaItemPropertyHasProtectedAsset: String
let MPMediaItemPropertyPodcastTitle: String
@available(iOS 4.2, *)
let MPMediaItemPropertyPodcastPersistentID: String
let MPMediaItemPropertyPlayCount: String
let MPMediaItemPropertySkipCount: String
let MPMediaItemPropertyRating: String
let MPMediaItemPropertyLastPlayedDate: String
@available(iOS 4.0, *)
let MPMediaItemPropertyUserGrouping: String
@available(iOS 6.0, *)
let MPMediaItemPropertyBookmarkTime: String
@available(iOS 3.0, *)
class MPMediaItemArtwork : NSObject {
  @available(iOS 5.0, *)
  init(image: UIImage)
  func imageWith(size: CGSize) -> UIImage?
  var bounds: CGRect { get }
  var imageCropRect: CGRect { get }
  convenience init()
}
@available(iOS 3.0, *)
class MPMediaItemCollection : MPMediaEntity {
  init(items: [MPMediaItem])
  var items: [MPMediaItem] { get }
  var representativeItem: MPMediaItem? { get }
  var count: Int { get }
  var mediaTypes: MPMediaType { get }
  convenience init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 3.0, *)
class MPMediaLibrary : NSObject, NSSecureCoding {
  class func defaultMediaLibrary() -> MPMediaLibrary
  var lastModifiedDate: NSDate { get }
  func beginGeneratingLibraryChangeNotifications()
  func endGeneratingLibraryChangeNotifications()
  init()
  @available(iOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let MPMediaLibraryDidChangeNotification: String
@available(iOS 3.0, *)
class MPMediaPickerController : UIViewController {
  init(mediaTypes: MPMediaType)
  var mediaTypes: MPMediaType { get }
  weak var delegate: @sil_weak MPMediaPickerControllerDelegate?
  var allowsPickingMultipleItems: Bool
  @available(iOS 6.0, *)
  var showsCloudItems: Bool
  @available(iOS 9.2, *)
  var showsItemsWithProtectedAssets: Bool
  var prompt: String?
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol MPMediaPickerControllerDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func mediaPicker(mediaPicker: MPMediaPickerController, didPickMediaItems mediaItemCollection: MPMediaItemCollection)
  @available(iOS 3.0, *)
  optional func mediaPickerDidCancel(mediaPicker: MPMediaPickerController)
}
protocol MPMediaPlayback {
  func prepareToPlay()
  var isPreparedToPlay: Bool { get }
  func play()
  func pause()
  func stop()
  var currentPlaybackTime: NSTimeInterval { get set }
  var currentPlaybackRate: Float { get set }
  func beginSeekingForward()
  func beginSeekingBackward()
  func endSeeking()
}
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMediaPlaybackIsPreparedToPlayDidChangeNotification: String
@available(iOS 3.0, *)
struct MPMediaPlaylistAttribute : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: MPMediaPlaylistAttribute { get }
  static var OnTheGo: MPMediaPlaylistAttribute { get }
  static var Smart: MPMediaPlaylistAttribute { get }
  static var Genius: MPMediaPlaylistAttribute { get }
}
@available(iOS 3.0, *)
class MPMediaPlaylist : MPMediaItemCollection {
  @available(iOS 7.0, *)
  var persistentID: MPMediaEntityPersistentID { get }
  @available(iOS 7.0, *)
  var name: String? { get }
  @available(iOS 7.0, *)
  var playlistAttributes: MPMediaPlaylistAttribute { get }
  @available(iOS 8.0, *)
  var seedItems: [MPMediaItem]? { get }
  init(items: [MPMediaItem])
  convenience init()
  init?(coder aDecoder: NSCoder)
}
let MPMediaPlaylistPropertyPersistentID: String
let MPMediaPlaylistPropertyName: String
let MPMediaPlaylistPropertyPlaylistAttributes: String
let MPMediaPlaylistPropertySeedItems: String
@available(iOS 3.0, *)
enum MPMediaGrouping : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Title
  case Album
  case Artist
  case AlbumArtist
  case Composer
  case Genre
  case Playlist
  case PodcastTitle
}
@available(iOS 3.0, *)
class MPMediaQuery : NSObject, NSSecureCoding, NSCopying {
  init(filterPredicates: Set<MPMediaPredicate>?)
  var filterPredicates: Set<MPMediaPredicate>?
  func addFilterPredicate(predicate: MPMediaPredicate)
  func removeFilterPredicate(predicate: MPMediaPredicate)
  var items: [MPMediaItem]? { get }
  var collections: [MPMediaItemCollection]? { get }
  var groupingType: MPMediaGrouping
  @available(iOS 4.2, *)
  var itemSections: [MPMediaQuerySection]? { get }
  @available(iOS 4.2, *)
  var collectionSections: [MPMediaQuerySection]? { get }
  class func albums() -> MPMediaQuery
  class func artists() -> MPMediaQuery
  class func songs() -> MPMediaQuery
  class func playlists() -> MPMediaQuery
  class func podcasts() -> MPMediaQuery
  class func audiobooks() -> MPMediaQuery
  class func compilations() -> MPMediaQuery
  class func composers() -> MPMediaQuery
  class func genres() -> MPMediaQuery
  convenience init()
  @available(iOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 3.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 3.0, *)
class MPMediaPredicate : NSObject, NSSecureCoding {
  init()
  @available(iOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 3.0, *)
enum MPMediaPredicateComparison : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case EqualTo
  case Contains
}
@available(iOS 3.0, *)
class MPMediaPropertyPredicate : MPMediaPredicate {
  /*not inherited*/ init(value: AnyObject?, forProperty property: String)
  /*not inherited*/ init(value: AnyObject?, forProperty property: String, comparisonType: MPMediaPredicateComparison)
  var property: String { get }
  @NSCopying var value: AnyObject? { get }
  var comparisonType: MPMediaPredicateComparison { get }
  init()
  init?(coder aDecoder: NSCoder)
}
extension MPMediaItem {
  @available(iOS 4.2, *)
  class func persistentIDPropertyForGroupingType(groupingType: MPMediaGrouping) -> String
  @available(iOS 4.2, *)
  class func titlePropertyForGroupingType(groupingType: MPMediaGrouping) -> String
}
@available(iOS 4.2, *)
class MPMediaQuerySection : NSObject, NSSecureCoding, NSCopying {
  var title: String { get }
  var range: NSRange { get }
  init()
  @available(iOS 4.2, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.2, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 4.2, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS, introduced=2.0, deprecated=9.0)
enum MPMovieScalingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case AspectFit
  case AspectFill
  case Fill
}
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMoviePlaybackState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Stopped
  case Playing
  case Paused
  case Interrupted
  case SeekingForward
  case SeekingBackward
}
@available(iOS, introduced=3.2, deprecated=9.0)
struct MPMovieLoadState : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Unknown: MPMovieLoadState { get }
  static var Playable: MPMovieLoadState { get }
  static var PlaythroughOK: MPMovieLoadState { get }
  static var Stalled: MPMovieLoadState { get }
}
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMovieRepeatMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case One
}
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMovieControlStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Embedded
  case Fullscreen
  static var Default: MPMovieControlStyle { get }
}
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMovieFinishReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case PlaybackEnded
  case PlaybackError
  case UserExited
}
@available(iOS, introduced=3.2, deprecated=9.0)
struct MPMovieMediaTypeMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: MPMovieMediaTypeMask { get }
  static var Video: MPMovieMediaTypeMask { get }
  static var Audio: MPMovieMediaTypeMask { get }
}
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMovieSourceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case File
  case Streaming
}
@available(iOS 2.0, *)
@available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
class MPMoviePlayerController : NSObject, MPMediaPlayback {
  init!(contentURL url: NSURL!)
  @NSCopying var contentURL: NSURL!
  var view: UIView! { get }
  var backgroundView: UIView! { get }
  var playbackState: MPMoviePlaybackState { get }
  var loadState: MPMovieLoadState { get }
  var controlStyle: MPMovieControlStyle
  var repeatMode: MPMovieRepeatMode
  var shouldAutoplay: Bool
  var isFullscreen: Bool
  func setFullscreen(fullscreen: Bool, animated: Bool)
  var scalingMode: MPMovieScalingMode
  @available(iOS 6.0, *)
  var isReadyForDisplay: Bool { get }
  convenience init()
  @available(iOS 2.0, *)
  func prepareToPlay()
  @available(iOS 2.0, *)
  var isPreparedToPlay: Bool { get }
  @available(iOS 2.0, *)
  func play()
  @available(iOS 2.0, *)
  func pause()
  @available(iOS 2.0, *)
  func stop()
  @available(iOS 2.0, *)
  var currentPlaybackTime: NSTimeInterval
  @available(iOS 2.0, *)
  var currentPlaybackRate: Float
  @available(iOS 2.0, *)
  func beginSeekingForward()
  @available(iOS 2.0, *)
  func beginSeekingBackward()
  @available(iOS 2.0, *)
  func endSeeking()
}
extension MPMoviePlayerController {
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var movieMediaTypes: MPMovieMediaTypeMask { get }
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var movieSourceType: MPMovieSourceType
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var duration: NSTimeInterval { get }
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var playableDuration: NSTimeInterval { get }
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var naturalSize: CGSize { get }
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var initialPlaybackTime: NSTimeInterval
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var endPlaybackTime: NSTimeInterval
  @available(iOS, introduced=4.3, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var allowsAirPlay: Bool
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var isAirPlayVideoActive: Bool { get }
}
@available(iOS, introduced=2.0, deprecated=9.0)
let MPMoviePlayerScalingModeDidChangeNotification: String
@available(iOS, introduced=2.0, deprecated=9.0)
let MPMoviePlayerPlaybackDidFinishNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerPlaybackDidFinishReasonUserInfoKey: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerPlaybackStateDidChangeNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerLoadStateDidChangeNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerNowPlayingMovieDidChangeNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerWillEnterFullscreenNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerDidEnterFullscreenNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerWillExitFullscreenNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerDidExitFullscreenNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerFullscreenAnimationDurationUserInfoKey: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerFullscreenAnimationCurveUserInfoKey: String
@available(iOS, introduced=5.0, deprecated=9.0)
let MPMoviePlayerIsAirPlayVideoActiveDidChangeNotification: String
@available(iOS, introduced=6.0, deprecated=9.0)
let MPMoviePlayerReadyForDisplayDidChangeNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMovieMediaTypesAvailableNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMovieSourceTypeAvailableNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMovieDurationAvailableNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMovieNaturalSizeAvailableNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMovieTimeOption : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NearestKeyFrame
  case Exact
}
extension MPMoviePlayerController {
  @available(iOS, introduced=3.2, deprecated=9.0)
  func requestThumbnailImagesAtTimes(playbackTimes: [AnyObject]!, timeOption option: MPMovieTimeOption)
  @available(iOS, introduced=3.2, deprecated=9.0)
  func cancelAllThumbnailImageRequests()
}
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerThumbnailImageRequestDidFinishNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerThumbnailImageKey: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerThumbnailTimeKey: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerThumbnailErrorKey: String
extension MPMoviePlayerController {
  @available(iOS, introduced=4.0, deprecated=9.0)
  var timedMetadata: [AnyObject]! { get }
}
@available(iOS 4.0, *)
@available(iOS, introduced=4.0, deprecated=9.0)
class MPTimedMetadata : NSObject {
  var key: String! { get }
  var keyspace: String! { get }
  var value: AnyObject! { get }
  var timestamp: NSTimeInterval { get }
  var allMetadata: [NSObject : AnyObject]! { get }
  init()
}
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataUpdatedNotification: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataUserInfoKey: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyName: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyInfo: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyMIMEType: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyDataType: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyLanguageCode: String
extension MPMoviePlayerController {
  @available(iOS, introduced=4.3, deprecated=9.0)
  var accessLog: MPMovieAccessLog! { get }
  @available(iOS, introduced=4.3, deprecated=9.0)
  var errorLog: MPMovieErrorLog! { get }
}
@available(iOS 4.3, *)
@available(iOS, introduced=4.3, deprecated=9.0)
class MPMovieAccessLog : NSObject, NSCopying {
  var extendedLogData: NSData! { get }
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AnyObject]! { get }
  init()
  @available(iOS 4.3, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 4.3, *)
@available(iOS, introduced=4.3, deprecated=9.0)
class MPMovieErrorLog : NSObject, NSCopying {
  var extendedLogData: NSData! { get }
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AnyObject]! { get }
  init()
  @available(iOS 4.3, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 4.3, *)
@available(iOS, introduced=4.3, deprecated=9.0)
class MPMovieAccessLogEvent : NSObject, NSCopying {
  var numberOfSegmentsDownloaded: Int { get }
  var playbackStartDate: NSDate! { get }
  var uri: String! { get }
  var serverAddress: String! { get }
  var numberOfServerAddressChanges: Int { get }
  var playbackSessionID: String! { get }
  var playbackStartOffset: NSTimeInterval { get }
  var segmentsDownloadedDuration: NSTimeInterval { get }
  var durationWatched: NSTimeInterval { get }
  var numberOfStalls: Int { get }
  var numberOfBytesTransferred: Int64 { get }
  var observedBitrate: Double { get }
  var indicatedBitrate: Double { get }
  var numberOfDroppedVideoFrames: Int { get }
  init()
  @available(iOS 4.3, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 4.3, *)
@available(iOS, introduced=4.3, deprecated=9.0)
class MPMovieErrorLogEvent : NSObject, NSCopying {
  var date: NSDate! { get }
  var uri: String! { get }
  var serverAddress: String! { get }
  var playbackSessionID: String! { get }
  var errorStatusCode: Int { get }
  var errorDomain: String! { get }
  var errorComment: String! { get }
  init()
  @available(iOS 4.3, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
extension MPMoviePlayerController {
}
@available(iOS 3.2, *)
@available(iOS, introduced=3.2, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
class MPMoviePlayerViewController : UIViewController {
  init!(contentURL: NSURL!)
  var moviePlayer: MPMoviePlayerController! { get }
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
extension UIViewController {
  @available(iOS, introduced=3.2, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  func presentMoviePlayerViewControllerAnimated(moviePlayerViewController: MPMoviePlayerViewController!)
  @available(iOS, introduced=3.2, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  func dismissMoviePlayerViewControllerAnimated()
}
enum MPMusicPlaybackState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Stopped
  case Playing
  case Paused
  case Interrupted
  case SeekingForward
  case SeekingBackward
}
enum MPMusicRepeatMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case None
  case One
  case All
}
enum MPMusicShuffleMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Off
  case Songs
  case Albums
}
@available(iOS 3.0, *)
class MPMusicPlayerController : NSObject, MPMediaPlayback {

  /// Playing media items with the applicationMusicPlayer will restore the user's Music state after the application quits.
  class func applicationMusicPlayer() -> MPMusicPlayerController

  /// Playing media items with the systemMusicPlayer will replace the user's current Music state.
  class func systemMusicPlayer() -> MPMusicPlayerController
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use +systemMusicPlayer instead.")
  class func iPodMusicPlayer() -> MPMusicPlayerController
  init()
  @available(iOS 3.0, *)
  func prepareToPlay()
  @available(iOS 3.0, *)
  var isPreparedToPlay: Bool { get }
  @available(iOS 3.0, *)
  func play()
  @available(iOS 3.0, *)
  func pause()
  @available(iOS 3.0, *)
  func stop()
  @available(iOS 3.0, *)
  var currentPlaybackTime: NSTimeInterval
  @available(iOS 3.0, *)
  var currentPlaybackRate: Float
  @available(iOS 3.0, *)
  func beginSeekingForward()
  @available(iOS 3.0, *)
  func beginSeekingBackward()
  @available(iOS 3.0, *)
  func endSeeking()
}
extension MPMusicPlayerController {
  var playbackState: MPMusicPlaybackState { get }
  var repeatMode: MPMusicRepeatMode
  var shuffleMode: MPMusicShuffleMode
  @NSCopying var nowPlayingItem: MPMediaItem?
  @available(iOS 5.0, *)
  var indexOfNowPlayingItem: Int { get }
  func setQueueWith(query: MPMediaQuery)
  func setQueueWith(itemCollection: MPMediaItemCollection)
  func skipToNextItem()
  func skipToBeginning()
  func skipToPreviousItem()
  func beginGeneratingPlaybackNotifications()
  func endGeneratingPlaybackNotifications()
}
let MPMusicPlayerControllerPlaybackStateDidChangeNotification: String
let MPMusicPlayerControllerNowPlayingItemDidChangeNotification: String
let MPMusicPlayerControllerVolumeDidChangeNotification: String
@available(iOS 5.0, *)
class MPNowPlayingInfoCenter : NSObject {
  class func defaultCenter() -> MPNowPlayingInfoCenter
  var nowPlayingInfo: [String : AnyObject]?
  init()
}
@available(iOS 5.0, *)
let MPNowPlayingInfoPropertyElapsedPlaybackTime: String
@available(iOS 5.0, *)
let MPNowPlayingInfoPropertyPlaybackRate: String
@available(iOS 8.0, *)
let MPNowPlayingInfoPropertyDefaultPlaybackRate: String
@available(iOS 5.0, *)
let MPNowPlayingInfoPropertyPlaybackQueueIndex: String
@available(iOS 5.0, *)
let MPNowPlayingInfoPropertyPlaybackQueueCount: String
@available(iOS 5.0, *)
let MPNowPlayingInfoPropertyChapterNumber: String
@available(iOS 5.0, *)
let MPNowPlayingInfoPropertyChapterCount: String
@available(iOS 9.0, *)
let MPNowPlayingInfoPropertyAvailableLanguageOptions: String
@available(iOS 9.0, *)
let MPNowPlayingInfoPropertyCurrentLanguageOptions: String
@available(iOS 9.0, *)
let MPLanguageOptionCharacteristicIsMainProgramContent: String
@available(iOS 9.0, *)
let MPLanguageOptionCharacteristicIsAuxiliaryContent: String
@available(iOS 9.0, *)
let MPLanguageOptionCharacteristicContainsOnlyForcedSubtitles: String
@available(iOS 9.0, *)
let MPLanguageOptionCharacteristicTranscribesSpokenDialog: String
@available(iOS 9.0, *)
let MPLanguageOptionCharacteristicDescribesMusicAndSound: String
@available(iOS 9.0, *)
let MPLanguageOptionCharacteristicEasyToRead: String
@available(iOS 9.0, *)
let MPLanguageOptionCharacteristicDescribesVideo: String
@available(iOS 9.0, *)
let MPLanguageOptionCharacteristicLanguageTranslation: String
@available(iOS 9.0, *)
let MPLanguageOptionCharacteristicDubbedTranslation: String
@available(iOS 9.0, *)
let MPLanguageOptionCharacteristicVoiceOverTranslation: String
@available(iOS 9.0, *)
enum MPNowPlayingInfoLanguageOptionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Audible
  case Legible
}

/// Represents a single language option option.
@available(iOS 9.0, *)
class MPNowPlayingInfoLanguageOption : NSObject {
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
@available(iOS 9.0, *)
class MPNowPlayingInfoLanguageOptionGroup : NSObject {
  init(languageOptions: [MPNowPlayingInfoLanguageOption], defaultLanguageOption: MPNowPlayingInfoLanguageOption?, allowEmptySelection: Bool)

  /// The available language options within this group.
  var languageOptions: [MPNowPlayingInfoLanguageOption] { get }

  /// The default language option, if any, within this group.
  var defaultLanguageOption: MPNowPlayingInfoLanguageOption? { get }

  /// Indicates whether a selection in this group is required at all times.
  var isAllowEmptySelection: Bool { get }
  init()
}

/// MPPlayableContentDataSource is a protocol that application objects conform to
/// if they want to support external media players, such as vehicle head units.
/// Data sources are responsible for providing metadata about your media to these
/// systems in a meaningful way, so that features like user interfaces and play
/// queues can be setup automatically.
protocol MPPlayableContentDataSource : NSObjectProtocol {

  /// Tells the data source to begin loading content items that are children of the
  /// item specified by indexPath. This is provided so that applications can begin
  /// asynchronous batched loading of content before MediaPlayer begins asking for
  /// content items to display.
  /// Client applications should always call the completion handler after loading
  /// has finished, if this method is implemented.
  optional func beginLoadingChildItemsAt(indexPath: NSIndexPath, completionHandler: (NSError?) -> Void)

  /// Tells MediaPlayer whether the content provided by the data source supports
  /// playback progress as a property of its metadata.
  /// If this method is not implemented, MediaPlayer will assume that progress is
  /// not supported for any content items.
  optional func childItemsDisplayPlaybackProgressAt(indexPath: NSIndexPath) -> Bool

  /// Returns the number of child nodes at the specified index path. In a virtual
  /// filesystem, this would be the number of files in a specific folder. An empty
  /// index path represents the root node.
  func numberOfChildItemsAt(indexPath: NSIndexPath) -> Int

  /// Returns the content item at the specified index path. If the content item is
  /// mutated after returning, its updated contents will be sent to MediaPlayer.
  @available(iOS 7.1, *)
  func contentItemAt(indexPath: NSIndexPath) -> MPContentItem?
}

/// The MPPlayableContentDelegate is a protocol that allows for external media
/// players to send playback commands to an application. For instance,
/// the user could browse the application's media content (provided by the
/// MPPlayableContentDataSource) and selects a content item to play. If the media
/// player decides that it wants to play the item, it will ask the application's
/// content delegate to initiate playback.
protocol MPPlayableContentDelegate : NSObjectProtocol {

  /// This method is called when a media player interface wants to play a requested
  /// content item. The application should call the completion handler with an
  /// appropriate error if there was an error beginning playback for the item.
  @available(iOS 7.1, *)
  optional func playableContentManager(contentManager: MPPlayableContentManager, initiatePlaybackOfContentItemAt indexPath: NSIndexPath, completionHandler: (NSError?) -> Void)

  /// This method is called when a media player interface wants the now playing
  /// app to setup a playback queue for later playback. The application should
  /// load content into its play queue and prepare it for playback, but not start
  /// playback until a Play command is received or if the playable content manager
  /// requests to play something else.
  /// The app should call the provided completion handler once it is ready to play
  /// something.
  @available(iOS 9.0, *)
  optional func playableContentManager(contentManager: MPPlayableContentManager, initializePlaybackQueueWithCompletionHandler completionHandler: (NSError?) -> Void)

  /// This method is called when the content server notifies the manager that the current context has changed.
  @available(iOS 8.4, *)
  optional func playableContentManager(contentManager: MPPlayableContentManager, didUpdateContext context: MPPlayableContentManagerContext)
}

/// MPPlayableContentManager is a class that manages the interactions between a
/// media application and an external media player interface. The application
/// provides the content manager with a data source, which allows the media player
/// to browse the media content offered by the application, as well as a delegate,
/// which allows the media player to relay non-media remote playback commands to the application.
@available(iOS 7.1, *)
class MPPlayableContentManager : NSObject {
  weak var dataSource: @sil_weak MPPlayableContentDataSource?
  weak var delegate: @sil_weak MPPlayableContentDelegate?
  @available(iOS 8.4, *)
  var context: MPPlayableContentManagerContext { get }

  /// Returns the application's instance of the content manager.
  class func shared() -> Self

  /// Tells the content manager that the data source has changed and that we need to
  /// reload data from the data source.
  func reloadData()

  /// Used to begin a synchronized update to multiple MPContentItems at once.
  func beginUpdates()

  /// Ends a synchronized update.
  func endUpdates()
  init()
}

/// MPPlayableContentManagerContext represents the current state of
/// the playable content endpoint. A context is retrievable from an instance
/// of MPPlayableContentManager.
@available(iOS 8.4, *)
class MPPlayableContentManagerContext : NSObject {

  /// The number of items the content server will display when content limiting is enforced.
  /// Returns NSIntegerMax if the content server will never limit the number of items.
  var enforcedContentItemsCount: Int { get }

  /// The depth of the navigation hierarchy the content server will allow. Exceeding this limit will result in a crash.
  var enforcedContentTreeDepth: Int { get }

  /// Represents whether content limits are being enforced by the content server or not.
  var contentLimitsEnforced: Bool { get }
  @available(iOS, introduced=8.4, deprecated=9.0, message="Use contentLimitsEnforced")
  var contentLimitsEnabled: Bool { get }

  /// Represents whether the content server is available or not.
  var isEndpointAvailable: Bool { get }
  init()
}
@available(iOS 7.1, *)
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
  @available(iOS 9.1, *)
  case NoActionableNowPlayingItem

  /// The command could not be executed for another reason.
  case CommandFailed
}
@available(iOS 7.1, *)
class MPRemoteCommand : NSObject {

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
@available(iOS 7.1, *)
class MPSkipIntervalCommand : MPRemoteCommand {

  /// An array of NSNumbers (NSTimeIntervals) that contain preferred skip intervals.
  var preferredIntervals: [AnyObject]
  init()
}
@available(iOS 7.1, *)
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
  @available(iOS 8.0, *)
  var localizedShortTitle: String
  init()
}
@available(iOS 7.1, *)
class MPRatingCommand : MPRemoteCommand {

  /// Minimum rating for the command.
  var minimumRating: Float

  /// Maximum rating for the command.
  var maximumRating: Float
  init()
}
@available(iOS 7.1, *)
class MPChangePlaybackRateCommand : MPRemoteCommand {

  /// An array of NSNumbers (floats) that contain supported playback rates that
  /// the command can send.
  var supportedPlaybackRates: [NSNumber]
  init()
}
@available(iOS 9.0, *)
class MPChangePlaybackPositionCommand : MPRemoteCommand {
  init()
}
@available(iOS 7.1, *)
class MPRemoteCommandCenter : NSObject {
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
@available(iOS 7.1, *)
class MPRemoteCommandEvent : NSObject {

  /// The command that sent the event.
  var command: MPRemoteCommand { get }

  /// The time when the event occurred.
  var timestamp: NSTimeInterval { get }
  init()
}
@available(iOS 7.1, *)
class MPSkipIntervalCommandEvent : MPRemoteCommandEvent {

  /// The chosen interval for this skip command event.
  var interval: NSTimeInterval { get }
  init()
}
@available(iOS 7.1, *)
enum MPSeekCommandEventType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BeginSeeking
  case EndSeeking
}
@available(iOS 7.1, *)
class MPSeekCommandEvent : MPRemoteCommandEvent {

  /// The type of seek command event, which specifies whether an external player
  /// began or ended seeking.
  var type: MPSeekCommandEventType { get }
  init()
}
@available(iOS 7.1, *)
class MPRatingCommandEvent : MPRemoteCommandEvent {

  /// The chosen rating for this command event. This value will be within the
  /// minimumRating and maximumRating values set for the MPRatingCommand object.
  var rating: Float { get }
  init()
}
@available(iOS 7.1, *)
class MPChangePlaybackRateCommandEvent : MPRemoteCommandEvent {

  /// The chosen playback rate for this command event. This value will be equal
  /// to one of the values specified in the supportedPlaybackRates array for the
  /// MPChangePlaybackRateCommand object.
  var playbackRate: Float { get }
  init()
}
@available(iOS 7.1, *)
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
@available(iOS 9.0, *)
class MPChangeLanguageOptionCommandEvent : MPRemoteCommandEvent {

  /// The requested language option to change.
  /// The supplied language option may be the Automatic Legible Language Option
  /// which would mean that best legible language option based on user preferences
  /// is being requested. See MPNowPlayingInfoLanguageOption isAutomaticLegibleLanguageOption
  var languageOption: MPNowPlayingInfoLanguageOption { get }
  init()
}
@available(iOS 8.0, *)
class MPChangePlaybackPositionCommandEvent : MPRemoteCommandEvent {

  /// The desired playback position to use when setting the current time of the player.
  var positionTime: NSTimeInterval { get }
  init()
}
func MPVolumeSettingsAlertShow()
func MPVolumeSettingsAlertHide()
func MPVolumeSettingsAlertIsVisible() -> Bool
@available(iOS 2.0, *)
class MPVolumeView : UIView, NSCoding {
  @available(iOS 4.2, *)
  var showsVolumeSlider: Bool
  @available(iOS 4.2, *)
  var showsRouteButton: Bool
  @available(iOS 7.0, *)
  var wirelessRoutesAvailable: Bool { get }
  @available(iOS 7.0, *)
  var wirelessRouteActive: Bool { get }
  @available(iOS 6.0, *)
  func setMinimumVolumeSliderImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func setMaximumVolumeSliderImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func setVolumeThumbImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func minimumVolumeSliderImageFor(state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func maximumVolumeSliderImageFor(state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func volumeThumbImageFor(state: UIControlState) -> UIImage?
  @available(iOS 7.0, *)
  var volumeWarningSliderImage: UIImage?
  @available(iOS 6.0, *)
  func volumeSliderRectForBounds(bounds: CGRect) -> CGRect
  @available(iOS 6.0, *)
  func volumeThumbRectForBounds(bounds: CGRect, volumeSliderRect rect: CGRect, value: Float) -> CGRect
  @available(iOS 6.0, *)
  func setRouteButtonImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func routeButtonImageFor(state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func routeButtonRectForBounds(bounds: CGRect) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 7.0, *)
let MPVolumeViewWirelessRoutesAvailableDidChangeNotification: String
@available(iOS 7.0, *)
let MPVolumeViewWirelessRouteActiveDidChangeNotification: String
