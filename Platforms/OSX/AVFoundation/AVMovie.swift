
@available(OSX 10.10, *)
let AVMovieReferenceRestrictionsKey: String
@available(OSX 10.10, *)
class AVMovie : AVAsset, Copying, MutableCopying {
  class func movieTypes() -> [String]
  init(url URL: URL, options: [String : AnyObject]? = [:])
  @available(OSX 10.11, *)
  init(data: Data, options: [String : AnyObject]? = [:])
  var url: URL? { get }
  @available(OSX 10.11, *)
  var data: Data? { get }
  @available(OSX 10.11, *)
  var defaultMediaDataStorage: AVMediaDataStorage? { get }
  var tracks: [AVMovieTrack] { get }
  var canContainMovieFragments: Bool { get }
  @available(OSX 10.11, *)
  var containsMovieFragments: Bool { get }
  convenience init(url URL: URL)
  convenience init()
  @available(OSX 10.10, *)
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
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
  func movieHeaderWithFileType(fileType: String) throws -> Data
  @available(OSX 10.11, *)
  func writeHeaderTo(URL: URL, fileType: String, options: AVMovieWritingOptions = []) throws
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
  init(url URL: URL, options: [String : AnyObject]? = [:], error: ()) throws
  init(data: Data, options: [String : AnyObject]? = [:], error: ()) throws
  init(settingsFrom movie: AVMovie?, options: [String : AnyObject]? = [:]) throws
  var preferredRate: Float
  var preferredVolume: Float
  var preferredTransform: CGAffineTransform
  var timescale: CMTimeScale
  var tracks: [AVMutableMovieTrack] { get }
  convenience init(url URL: URL, options: [String : AnyObject]? = [:])
  @available(OSX 10.11, *)
  convenience init(data: Data, options: [String : AnyObject]? = [:])
  convenience init(url URL: URL)
  convenience init()
}
extension AVMutableMovie {
  var isModified: Bool
  @NSCopying var defaultMediaDataStorage: AVMediaDataStorage
  var interleavingPeriod: CMTime
  func insert(timeRange: CMTimeRange, of asset: AVAsset, at startTime: CMTime, copySampleData: Bool) throws
  func insertEmpty(timeRange: CMTimeRange)
  func remove(timeRange: CMTimeRange)
  func scaleTimeRange(timeRange: CMTimeRange, toDuration duration: CMTime)
}
extension AVMutableMovie {
  func mutableTrackCompatibleWith(track: AVAssetTrack) -> AVMutableMovieTrack?
  func addMutableTrackWithMediaType(mediaType: String, copySettingsFrom track: AVAssetTrack?, options: [String : AnyObject]? = [:]) -> AVMutableMovieTrack
  func addMutableTracksCopyingSettingsFrom(existingTracks: [AVAssetTrack], options: [String : AnyObject]? = [:]) -> [AVMutableMovieTrack]
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
class AVMediaDataStorage : Object {
  init(url URL: URL, options: [String : AnyObject]? = [:])
  func url() -> URL?
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
  init(url URL: URL, options: [String : AnyObject]? = [:])
  @available(OSX 10.11, *)
  init(data: Data, options: [String : AnyObject]? = [:])
  convenience init(url URL: URL)
  convenience init()
  @available(OSX 10.11, *)
  var isAssociatedWithFragmentMinder: Bool { get }
}
extension AVFragmentedMovie {
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVFragmentedMovieTrack?
  func tracksWithMediaType(mediaType: String) -> [AVFragmentedMovieTrack]
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVFragmentedMovieTrack]
}
@available(OSX 10.10, *)
class AVFragmentedMovieMinder : AVFragmentedAssetMinder {
  init(movie: AVFragmentedMovie, mindingInterval: TimeInterval)
  var mindingInterval: TimeInterval
  var movies: [AVFragmentedMovie] { get }
  func add(movie: AVFragmentedMovie)
  func remove(movie: AVFragmentedMovie)
  convenience init(asset: AVAsset, mindingInterval: TimeInterval)
  convenience init()
}
