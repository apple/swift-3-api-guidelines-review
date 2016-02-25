
@available(OSX 10.10, *)
let AVMovieReferenceRestrictionsKey: String
@available(OSX 10.10, *)
class AVMovie : AVAsset, NSCopying, NSMutableCopying {
  class func movieTypes() -> [String]
  init(URL URL: NSURL, options options: [String : AnyObject]?)
  @available(OSX 10.11, *)
  init(data data: NSData, options options: [String : AnyObject]?)
  var URL: NSURL? { get }
  @available(OSX 10.11, *)
  var data: NSData? { get }
  @available(OSX 10.11, *)
  var defaultMediaDataStorage: AVMediaDataStorage? { get }
  var canContainMovieFragments: Bool { get }
  @available(OSX 10.11, *)
  var containsMovieFragments: Bool { get }
  @available(OSX 10.10, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
struct AVMovieWritingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var AddMovieHeaderToDestination: AVMovieWritingOptions { get }
  static var TruncateDestinationToMovieHeaderOnly: AVMovieWritingOptions { get }
}
extension AVMovie {
  @available(OSX 10.11, *)
  func movieHeaderWithFileType(_ fileType: String) throws -> NSData
  @available(OSX 10.11, *)
  func writeMovieHeaderToURL(_ URL: NSURL, fileType fileType: String, options options: AVMovieWritingOptions) throws
  @available(OSX 10.11, *)
  func isCompatibleWithFileType(_ fileType: String) -> Bool
}
extension AVMovie {
}
@available(OSX 10.11, *)
class AVMutableMovie : AVMovie {
  init(URL URL: NSURL, options options: [String : AnyObject]?, error error: ()) throws
  init(data data: NSData, options options: [String : AnyObject]?, error error: ()) throws
  init(settingsFromMovie movie: AVMovie?, options options: [String : AnyObject]?) throws
  var timescale: CMTimeScale
}
extension AVMutableMovie {
  var modified: Bool
  var interleavingPeriod: CMTime
  func insertTimeRange(_ timeRange: CMTimeRange, ofAsset asset: AVAsset, atTime startTime: CMTime, copySampleData copySampleData: Bool) throws
  func insertEmptyTimeRange(_ timeRange: CMTimeRange)
  func removeTimeRange(_ timeRange: CMTimeRange)
  func scaleTimeRange(_ timeRange: CMTimeRange, toDuration duration: CMTime)
}
extension AVMutableMovie {
  func mutableTrackCompatibleWithTrack(_ track: AVAssetTrack) -> AVMutableMovieTrack?
  func addMutableTrackWithMediaType(_ mediaType: String, copySettingsFromTrack track: AVAssetTrack?, options options: [String : AnyObject]?) -> AVMutableMovieTrack
  func addMutableTracksCopyingSettingsFromTracks(_ existingTracks: [AVAssetTrack], options options: [String : AnyObject]?) -> [AVMutableMovieTrack]
  func removeTrack(_ track: AVMovieTrack)
}
extension AVMutableMovie {
}
extension AVMutableMovie {
}
@available(OSX 10.11, *)
class AVMediaDataStorage : NSObject {
  init(URL URL: NSURL, options options: [String : AnyObject]?)
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
  @available(OSX 10.11, *)
  var associatedWithFragmentMinder: Bool { get }
}
extension AVFragmentedMovie {
}
@available(OSX 10.10, *)
class AVFragmentedMovieMinder : AVFragmentedAssetMinder {
  init(movie movie: AVFragmentedMovie, mindingInterval mindingInterval: NSTimeInterval)
  var movies: [AVFragmentedMovie] { get }
  func addFragmentedMovie(_ movie: AVFragmentedMovie)
  func removeFragmentedMovie(_ movie: AVFragmentedMovie)
}
