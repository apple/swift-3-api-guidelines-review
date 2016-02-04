
@available(OSX 10.7, *)
class AVAsset : NSObject, NSCopying, AVAsynchronousKeyValueLoading {
  convenience init(URL: NSURL)
  var duration: CMTime { get }
  var preferredRate: Float { get }
  var preferredVolume: Float { get }
  var preferredTransform: CGAffineTransform { get }
  init()
  @available(OSX 10.7, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  func statusOfValueForKey(key: String, error outError: NSErrorPointer) -> AVKeyValueStatus
  @available(OSX 10.7, *)
  func loadValuesAsynchronouslyForKeys(keys: [String], completionHandler handler: (() -> Void)?)
}
extension AVAsset {
  var providesPreciseDurationAndTiming: Bool { get }
  func cancelLoading()
}
extension AVAsset {
  @available(OSX 10.7, *)
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
  @available(OSX 10.9, *)
  var trackGroups: [AVAssetTrackGroup] { get }
}
extension AVAsset {
  @available(OSX 10.8, *)
  var creationDate: AVMetadataItem? { get }
  var lyrics: String? { get }
  var commonMetadata: [AVMetadataItem] { get }
  @available(OSX 10.10, *)
  var metadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [String] { get }
  func metadataForFormat(format: String) -> [AVMetadataItem]
}
extension AVAsset {
  @available(OSX 10.7, *)
  var availableChapterLocales: [NSLocale] { get }
  @available(OSX 10.7, *)
  func chapterMetadataGroupsWithTitleLocale(locale: NSLocale, containingItemsWithCommonKeys commonKeys: [String]?) -> [AVTimedMetadataGroup]
  @available(OSX 10.8, *)
  func chapterMetadataGroupsBestMatchingPreferredLanguages(preferredLanguages: [String]) -> [AVTimedMetadataGroup]
}
extension AVAsset {
  @available(OSX 10.8, *)
  var availableMediaCharacteristicsWithMediaSelectionOptions: [String] { get }
  @available(OSX 10.8, *)
  func mediaSelectionGroupForMediaCharacteristic(mediaCharacteristic: String) -> AVMediaSelectionGroup?
  @available(OSX 10.11, *)
  var preferredMediaSelection: AVMediaSelection { get }
}
extension AVAsset {
  @available(OSX 10.7, *)
  var hasProtectedContent: Bool { get }
}
extension AVAsset {
  @available(OSX 10.11, *)
  var canContainFragments: Bool { get }
  @available(OSX 10.11, *)
  var containsFragments: Bool { get }
}
extension AVAsset {
  @available(OSX 10.7, *)
  var playable: Bool { get }
  @available(OSX 10.7, *)
  var exportable: Bool { get }
  @available(OSX 10.7, *)
  var readable: Bool { get }
  @available(OSX 10.7, *)
  var composable: Bool { get }
  @available(OSX 10.11, *)
  var compatibleWithAirPlayVideo: Bool { get }
}
@available(OSX 10.7, *)
let AVURLAssetPreferPreciseDurationAndTimingKey: String
@available(OSX 10.7, *)
let AVURLAssetReferenceRestrictionsKey: String
@available(OSX 10.7, *)
class AVURLAsset : AVAsset {
  @available(OSX 10.7, *)
  class func audiovisualTypes() -> [String]
  @available(OSX 10.7, *)
  class func audiovisualMIMETypes() -> [String]
  @available(OSX 10.7, *)
  class func isPlayableExtendedMIMEType(extendedMIMEType: String) -> Bool
  init(URL: NSURL, options: [String : AnyObject]?)
  @NSCopying var URL: NSURL { get }
  convenience init(URL: NSURL)
}
extension AVURLAsset {
  @available(OSX 10.9, *)
  var resourceLoader: AVAssetResourceLoader { get }
}
extension AVURLAsset {
  func compatibleTrackForCompositionTrack(compositionTrack: AVCompositionTrack) -> AVAssetTrack?
}
@available(OSX 10.11, *)
let AVAssetDurationDidChangeNotification: String
@available(OSX 10.11, *)
let AVAssetContainsFragmentsDidChangeNotification: String
@available(OSX 10.11, *)
let AVAssetWasDefragmentedNotification: String
@available(OSX 10.11, *)
let AVAssetChapterMetadataGroupsDidChangeNotification: String
@available(OSX 10.11, *)
let AVAssetMediaSelectionGroupsDidChangeNotification: String
protocol AVFragmentMinding {
  @available(OSX 10.11, *)
  var associatedWithFragmentMinder: Bool { get }
}
@available(OSX 10.11, *)
class AVFragmentedAsset : AVURLAsset, AVFragmentMinding {
  var tracks: [AVFragmentedAssetTrack] { get }
  init(URL: NSURL, options: [String : AnyObject]?)
  convenience init(URL: NSURL)
  @available(OSX 10.11, *)
  var associatedWithFragmentMinder: Bool { get }
}
extension AVFragmentedAsset {
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVFragmentedAssetTrack?
  func tracksWithMediaType(mediaType: String) -> [AVFragmentedAssetTrack]
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVFragmentedAssetTrack]
}
@available(OSX 10.11, *)
class AVFragmentedAssetMinder : NSObject {
  convenience init(asset: AVAsset, mindingInterval: NSTimeInterval)
  var mindingInterval: NSTimeInterval
  var assets: [AVAsset] { get }
  func addFragmentedAsset(asset: AVAsset)
  func removeFragmentedAsset(asset: AVAsset)
  init()
}
