
@available(OSX 10.10, *)
let AVMovieReferenceRestrictionsKey: String
@available(OSX 10.10, *)
class AVMovie : AVAsset, NSCopying, NSMutableCopying {
  class func movieTypes() -> [String]
  init(url URL: NSURL, options: [String : AnyObject]? = [:])
  @available(OSX 10.11, *)
  init(data: NSData, options: [String : AnyObject]? = [:])
  var url: NSURL? { get }
  @available(OSX 10.11, *)
  var data: NSData? { get }
  @available(OSX 10.11, *)
  var defaultMediaDataStorage: AVMediaDataStorage? { get }
  var tracks: [AVMovieTrack] { get }
  var canContainMovieFragments: Bool { get }
  @available(OSX 10.11, *)
  var containsMovieFragments: Bool { get }
  convenience init(url URL: NSURL)
  convenience init()
  @available(OSX 10.10, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.11, *)
struct AVMovieWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var addMovieHeaderToDestination: AVMovieWritingOptions { get }
  static var truncateDestinationToMovieHeaderOnly: AVMovieWritingOptions { get }
}
extension AVMovie {
  @available(OSX 10.11, *)
  func movieHeader(withFileType fileType: String) throws -> NSData
  @available(OSX 10.11, *)
  func writeHeader(to URL: NSURL, fileType: String, options: AVMovieWritingOptions = []) throws
  @available(OSX 10.11, *)
  func isCompatibleWithFileType(fileType: String) -> Bool
}
extension AVMovie {
  func track(withTrackID trackID: CMPersistentTrackID) -> AVMovieTrack?
  func tracks(withMediaType mediaType: String) -> [AVMovieTrack]
  func tracks(withMediaCharacteristic mediaCharacteristic: String) -> [AVMovieTrack]
}
@available(OSX 10.11, *)
class AVMutableMovie : AVMovie {
  init(url URL: NSURL, options: [String : AnyObject]? = [:], error: ()) throws
  init(data: NSData, options: [String : AnyObject]? = [:], error: ()) throws
  init(settingsFrom movie: AVMovie?, options: [String : AnyObject]? = [:]) throws
  var preferredRate: Float
  var preferredVolume: Float
  var preferredTransform: CGAffineTransform
  var timescale: CMTimeScale
  var tracks: [AVMutableMovieTrack] { get }
  convenience init(url URL: NSURL, options: [String : AnyObject]? = [:])
  @available(OSX 10.11, *)
  convenience init(data: NSData, options: [String : AnyObject]? = [:])
  convenience init(url URL: NSURL)
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
  func mutableTrack(compatibleWith track: AVAssetTrack) -> AVMutableMovieTrack?
  func addMutableTrack(mediaType mediaType: String, copySettingsFrom track: AVAssetTrack?, options: [String : AnyObject]? = [:]) -> AVMutableMovieTrack
  func addMutableTracksCopyingSettings(from existingTracks: [AVAssetTrack], options: [String : AnyObject]? = [:]) -> [AVMutableMovieTrack]
  func removeTrack(track: AVMovieTrack)
}
extension AVMutableMovie {
  var metadata: [AVMetadataItem]
}
extension AVMutableMovie {
  func track(withTrackID trackID: CMPersistentTrackID) -> AVMutableMovieTrack?
  func tracks(withMediaType mediaType: String) -> [AVMutableMovieTrack]
  func tracks(withMediaCharacteristic mediaCharacteristic: String) -> [AVMutableMovieTrack]
}
@available(OSX 10.11, *)
class AVMediaDataStorage : NSObject {
  init(url URL: NSURL, options: [String : AnyObject]? = [:])
  func url() -> NSURL?
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
  init(url URL: NSURL, options: [String : AnyObject]? = [:])
  @available(OSX 10.11, *)
  init(data: NSData, options: [String : AnyObject]? = [:])
  convenience init(url URL: NSURL)
  convenience init()
  @available(OSX 10.11, *)
  var isAssociatedWithFragmentMinder: Bool { get }
}
extension AVFragmentedMovie {
  func track(withTrackID trackID: CMPersistentTrackID) -> AVFragmentedMovieTrack?
  func tracks(withMediaType mediaType: String) -> [AVFragmentedMovieTrack]
  func tracks(withMediaCharacteristic mediaCharacteristic: String) -> [AVFragmentedMovieTrack]
}
@available(OSX 10.10, *)
class AVFragmentedMovieMinder : AVFragmentedAssetMinder {
  init(movie: AVFragmentedMovie, mindingInterval: NSTimeInterval)
  var mindingInterval: NSTimeInterval
  var movies: [AVFragmentedMovie] { get }
  func add(movie: AVFragmentedMovie)
  func remove(movie: AVFragmentedMovie)
  convenience init(asset: AVAsset, mindingInterval: NSTimeInterval)
  convenience init()
}
