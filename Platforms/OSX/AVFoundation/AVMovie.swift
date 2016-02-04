
@available(OSX 10.10, *)
let AVMovieReferenceRestrictionsKey: String
@available(OSX 10.10, *)
class AVMovie : AVAsset, NSCopying, NSMutableCopying {
  class func movieTypes() -> [String]
  init(URL: NSURL, options: [String : AnyObject]?)
  @available(OSX 10.11, *)
  init(data: NSData, options: [String : AnyObject]?)
  var URL: NSURL? { get }
  @available(OSX 10.11, *)
  var data: NSData? { get }
  @available(OSX 10.11, *)
  var defaultMediaDataStorage: AVMediaDataStorage? { get }
  var tracks: [AVMovieTrack] { get }
  var canContainMovieFragments: Bool { get }
  @available(OSX 10.11, *)
  var containsMovieFragments: Bool { get }
  convenience init(URL: NSURL)
  convenience init()
  @available(OSX 10.10, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
struct AVMovieWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AddMovieHeaderToDestination: AVMovieWritingOptions { get }
  static var TruncateDestinationToMovieHeaderOnly: AVMovieWritingOptions { get }
}
extension AVMovie {
  @available(OSX 10.11, *)
  func movieHeaderWithFileType(fileType: String) throws -> NSData
  @available(OSX 10.11, *)
  func writeMovieHeaderToURL(URL: NSURL, fileType: String, options: AVMovieWritingOptions) throws
  @available(OSX 10.11, *)
  func isCompatibleWithFileType(fileType: String) -> Bool
}
extension AVMovie {
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVMovieTrack?
  func tracksWithMediaType(mediaType: String) -> [AVMovieTrack]
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVMovieTrack]
}
@available(OSX 10.11, *)
class AVMutableMovie : AVMovie {
  init(URL: NSURL, options: [String : AnyObject]?, error: ()) throws
  init(data: NSData, options: [String : AnyObject]?, error: ()) throws
  init(settingsFromMovie movie: AVMovie?, options: [String : AnyObject]?) throws
  var preferredRate: Float
  var preferredVolume: Float
  var preferredTransform: CGAffineTransform
  var timescale: CMTimeScale
  var tracks: [AVMutableMovieTrack] { get }
  convenience init(URL: NSURL, options: [String : AnyObject]?)
  @available(OSX 10.11, *)
  convenience init(data: NSData, options: [String : AnyObject]?)
  convenience init(URL: NSURL)
  convenience init()
}
extension AVMutableMovie {
  var modified: Bool
  @NSCopying var defaultMediaDataStorage: AVMediaDataStorage
  var interleavingPeriod: CMTime
  func insertTimeRange(timeRange: CMTimeRange, ofAsset asset: AVAsset, atTime startTime: CMTime, copySampleData: Bool) throws
  func insertEmptyTimeRange(timeRange: CMTimeRange)
  func removeTimeRange(timeRange: CMTimeRange)
  func scaleTimeRange(timeRange: CMTimeRange, toDuration duration: CMTime)
}
extension AVMutableMovie {
  func mutableTrackCompatibleWithTrack(track: AVAssetTrack) -> AVMutableMovieTrack?
  func addMutableTrackWithMediaType(mediaType: String, copySettingsFromTrack track: AVAssetTrack?, options: [String : AnyObject]?) -> AVMutableMovieTrack
  func addMutableTracksCopyingSettingsFromTracks(existingTracks: [AVAssetTrack], options: [String : AnyObject]?) -> [AVMutableMovieTrack]
  func removeTrack(track: AVMovieTrack)
}
extension AVMutableMovie {
  var metadata: [AVMetadataItem]
}
extension AVMutableMovie {
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVMutableMovieTrack?
  func tracksWithMediaType(mediaType: String) -> [AVMutableMovieTrack]
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVMutableMovieTrack]
}
@available(OSX 10.11, *)
class AVMediaDataStorage : NSObject {
  init(URL: NSURL, options: [String : AnyObject]?)
  func URL() -> NSURL?
}
@available(OSX 10.10, *)
let AVFragmentedMovieContainsMovieFragmentsDidChangeNotification: String
@available(OSX 10.10, *)
let AVFragmentedMovieDurationDidChangeNotification: String
@available(OSX 10.10, *)
let AVFragmentedMovieWasDefragmentedNotification: String
@available(OSX 10.10, *)
class AVFragmentedMovie : AVMovie, AVFragmentMinding {
  var tracks: [AVFragmentedMovieTrack] { get }
  init(URL: NSURL, options: [String : AnyObject]?)
  @available(OSX 10.11, *)
  init(data: NSData, options: [String : AnyObject]?)
  convenience init(URL: NSURL)
  convenience init()
  @available(OSX 10.11, *)
  var associatedWithFragmentMinder: Bool { get }
}
extension AVFragmentedMovie {
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVFragmentedMovieTrack?
  func tracksWithMediaType(mediaType: String) -> [AVFragmentedMovieTrack]
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVFragmentedMovieTrack]
}
@available(OSX 10.10, *)
class AVFragmentedMovieMinder : AVFragmentedAssetMinder {
  init(movie: AVFragmentedMovie, mindingInterval: NSTimeInterval)
  var mindingInterval: NSTimeInterval
  var movies: [AVFragmentedMovie] { get }
  func addFragmentedMovie(movie: AVFragmentedMovie)
  func removeFragmentedMovie(movie: AVFragmentedMovie)
  convenience init(asset: AVAsset, mindingInterval: NSTimeInterval)
  convenience init()
}
