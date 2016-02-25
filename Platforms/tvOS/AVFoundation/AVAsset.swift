
@available(tvOS 4.0, *)
class AVAsset : NSObject, NSCopying, AVAsynchronousKeyValueLoading {
  convenience init(URL URL: NSURL)
  var duration: CMTime { get }
  var preferredRate: Float { get }
  var preferredVolume: Float { get }
  var preferredTransform: CGAffineTransform { get }
  @available(tvOS 4.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 4.0, *)
  func statusOfValueForKey(_ key: String, error outError: NSErrorPointer) -> AVKeyValueStatus
  @available(tvOS 4.0, *)
  func loadValuesAsynchronouslyForKeys(_ keys: [String], completionHandler handler: (() -> Void)?)
}
extension AVAsset {
  var providesPreciseDurationAndTiming: Bool { get }
  func cancelLoading()
}
extension AVAsset {
  @available(tvOS 5.0, *)
  var referenceRestrictions: AVAssetReferenceRestrictions { get }
}
struct AVAssetReferenceRestrictions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var ForbidNone: AVAssetReferenceRestrictions { get }
  static var ForbidRemoteReferenceToLocal: AVAssetReferenceRestrictions { get }
  static var ForbidLocalReferenceToRemote: AVAssetReferenceRestrictions { get }
  static var ForbidCrossSiteReference: AVAssetReferenceRestrictions { get }
  static var ForbidLocalReferenceToLocal: AVAssetReferenceRestrictions { get }
  static var ForbidAll: AVAssetReferenceRestrictions { get }
}
extension AVAsset {
  var tracks: [AVAssetTrack] { get }
  func trackWithTrackID(_ trackID: CMPersistentTrackID) -> AVAssetTrack?
  func tracksWithMediaType(_ mediaType: String) -> [AVAssetTrack]
  func tracksWithMediaCharacteristic(_ mediaCharacteristic: String) -> [AVAssetTrack]
  @available(tvOS 7.0, *)
  var trackGroups: [AVAssetTrackGroup] { get }
}
extension AVAsset {
  @available(tvOS 5.0, *)
  var creationDate: AVMetadataItem? { get }
  var lyrics: String? { get }
  var commonMetadata: [AVMetadataItem] { get }
  @available(tvOS 8.0, *)
  var metadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [String] { get }
  func metadataForFormat(_ format: String) -> [AVMetadataItem]
}
extension AVAsset {
  @available(tvOS 4.3, *)
  var availableChapterLocales: [NSLocale] { get }
  @available(tvOS 4.3, *)
  func chapterMetadataGroupsWithTitleLocale(_ locale: NSLocale, containingItemsWithCommonKeys commonKeys: [String]?) -> [AVTimedMetadataGroup]
  @available(tvOS 6.0, *)
  func chapterMetadataGroupsBestMatchingPreferredLanguages(_ preferredLanguages: [String]) -> [AVTimedMetadataGroup]
}
extension AVAsset {
  @available(tvOS 5.0, *)
  var availableMediaCharacteristicsWithMediaSelectionOptions: [String] { get }
  @available(tvOS 5.0, *)
  func mediaSelectionGroupForMediaCharacteristic(_ mediaCharacteristic: String) -> AVMediaSelectionGroup?
  @available(tvOS 9.0, *)
  var preferredMediaSelection: AVMediaSelection { get }
}
extension AVAsset {
  @available(tvOS 4.2, *)
  var hasProtectedContent: Bool { get }
}
extension AVAsset {
  @available(tvOS 9.0, *)
  var canContainFragments: Bool { get }
  @available(tvOS 9.0, *)
  var containsFragments: Bool { get }
}
extension AVAsset {
  @available(tvOS 4.3, *)
  var playable: Bool { get }
  @available(tvOS 4.3, *)
  var exportable: Bool { get }
  @available(tvOS 4.3, *)
  var readable: Bool { get }
  @available(tvOS 4.3, *)
  var composable: Bool { get }
  @available(tvOS 5.0, *)
  var compatibleWithSavedPhotosAlbum: Bool { get }
  @available(tvOS 9.0, *)
  var compatibleWithAirPlayVideo: Bool { get }
}
@available(tvOS 4.0, *)
let AVURLAssetPreferPreciseDurationAndTimingKey: String
@available(tvOS 5.0, *)
let AVURLAssetReferenceRestrictionsKey: String
@available(tvOS 8.0, *)
let AVURLAssetHTTPCookiesKey: String
@available(tvOS 4.0, *)
class AVURLAsset : AVAsset {
  @available(tvOS 5.0, *)
  class func audiovisualTypes() -> [String]
  @available(tvOS 5.0, *)
  class func audiovisualMIMETypes() -> [String]
  @available(tvOS 5.0, *)
  class func isPlayableExtendedMIMEType(_ extendedMIMEType: String) -> Bool
  init(URL URL: NSURL, options options: [String : AnyObject]?)
  @NSCopying var URL: NSURL { get }
}
extension AVURLAsset {
  @available(tvOS 6.0, *)
  var resourceLoader: AVAssetResourceLoader { get }
}
extension AVURLAsset {
  func compatibleTrackForCompositionTrack(_ compositionTrack: AVCompositionTrack) -> AVAssetTrack?
}
@available(tvOS 9.0, *)
let AVAssetDurationDidChangeNotification: String
@available(tvOS 9.0, *)
let AVAssetChapterMetadataGroupsDidChangeNotification: String
@available(tvOS 9.0, *)
let AVAssetMediaSelectionGroupsDidChangeNotification: String
protocol AVFragmentMinding {
}
extension AVFragmentedAsset {
}
