
@available(tvOS 4.0, *)
class AVAsset : Object, Copying, AVAsynchronousKeyValueLoading {
  convenience init(url URL: URL)
  var duration: CMTime { get }
  var preferredRate: Float { get }
  var preferredVolume: Float { get }
  var preferredTransform: CGAffineTransform { get }
  init()
  @available(tvOS 4.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 4.0, *)
  func statusOfValueForKey(key: String, error outError: ErrorPointer) -> AVKeyValueStatus
  @available(tvOS 4.0, *)
  func loadValuesAsynchronouslyForKeys(keys: [String], completionHandler handler: (() -> Void)? = nil)
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
  init(rawValue: UInt)
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
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVAssetTrack?
  func tracksWithMediaType(mediaType: String) -> [AVAssetTrack]
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVAssetTrack]
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
  func metadataForFormat(format: String) -> [AVMetadataItem]
}
extension AVAsset {
  @available(tvOS 4.3, *)
  var availableChapterLocales: [Locale] { get }
  @available(tvOS 4.3, *)
  func chapterMetadataGroupsWithTitleLocale(locale: Locale, containingItemsWithCommonKeys commonKeys: [String]?) -> [AVTimedMetadataGroup]
  @available(tvOS 6.0, *)
  func chapterMetadataGroupsBestMatchingPreferredLanguages(preferredLanguages: [String]) -> [AVTimedMetadataGroup]
}
extension AVAsset {
  @available(tvOS 5.0, *)
  var availableMediaCharacteristicsWithMediaSelectionOptions: [String] { get }
  @available(tvOS 5.0, *)
  func mediaSelectionGroupForMediaCharacteristic(mediaCharacteristic: String) -> AVMediaSelectionGroup?
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
  var isPlayable: Bool { get }
  @available(tvOS 4.3, *)
  var isExportable: Bool { get }
  @available(tvOS 4.3, *)
  var isReadable: Bool { get }
  @available(tvOS 4.3, *)
  var isComposable: Bool { get }
  @available(tvOS 5.0, *)
  var isCompatibleWithSavedPhotosAlbum: Bool { get }
  @available(tvOS 9.0, *)
  var isCompatibleWithAirPlayVideo: Bool { get }
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
  class func isPlayableExtendedMIMEType(extendedMIMEType: String) -> Bool
  init(url URL: URL, options: [String : AnyObject]? = [:])
  @NSCopying var url: URL { get }
  convenience init(url URL: URL)
}
extension AVURLAsset {
  @available(tvOS 6.0, *)
  var resourceLoader: AVAssetResourceLoader { get }
}
extension AVURLAsset {
  func compatibleTrackFor(compositionTrack: AVCompositionTrack) -> AVAssetTrack?
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
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVFragmentedAssetTrack?
  func tracksWithMediaType(mediaType: String) -> [AVFragmentedAssetTrack]
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVFragmentedAssetTrack]
}
