
@available(OSX 10.7, *)
class AVAsset : NSObject, NSCopying, AVAsynchronousKeyValueLoading {
  convenience init(URL URL: NSURL)
  var duration: CMTime { get }
  var preferredRate: Float { get }
  var preferredVolume: Float { get }
  var preferredTransform: CGAffineTransform { get }
  @available(OSX 10.7, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  func statusOfValueForKey(_ key: String, error outError: NSErrorPointer) -> AVKeyValueStatus
  @available(OSX 10.7, *)
  func loadValuesAsynchronouslyForKeys(_ keys: [String], completionHandler handler: (() -> Void)?)
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
  func metadataForFormat(_ format: String) -> [AVMetadataItem]
}
extension AVAsset {
  @available(OSX 10.7, *)
  var availableChapterLocales: [NSLocale] { get }
  @available(OSX 10.7, *)
  func chapterMetadataGroupsWithTitleLocale(_ locale: NSLocale, containingItemsWithCommonKeys commonKeys: [String]?) -> [AVTimedMetadataGroup]
  @available(OSX 10.8, *)
  func chapterMetadataGroupsBestMatchingPreferredLanguages(_ preferredLanguages: [String]) -> [AVTimedMetadataGroup]
}
extension AVAsset {
  @available(OSX 10.8, *)
  var availableMediaCharacteristicsWithMediaSelectionOptions: [String] { get }
  @available(OSX 10.8, *)
  func mediaSelectionGroupForMediaCharacteristic(_ mediaCharacteristic: String) -> AVMediaSelectionGroup?
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
  class func isPlayableExtendedMIMEType(_ extendedMIMEType: String) -> Bool
  init(URL URL: NSURL, options options: [String : AnyObject]?)
  @NSCopying var URL: NSURL { get }
}
extension AVURLAsset {
  @available(OSX 10.9, *)
  var resourceLoader: AVAssetResourceLoader { get }
}
extension AVURLAsset {
  func compatibleTrackForCompositionTrack(_ compositionTrack: AVCompositionTrack) -> AVAssetTrack?
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
  @available(OSX 10.11, *)
  var associatedWithFragmentMinder: Bool { get }
}
extension AVFragmentedAsset {
}
@available(OSX 10.11, *)
class AVFragmentedAssetMinder : NSObject {
  convenience init(asset asset: AVAsset, mindingInterval mindingInterval: NSTimeInterval)
  var mindingInterval: NSTimeInterval
  var assets: [AVAsset] { get }
  func addFragmentedAsset(_ asset: AVAsset)
  func removeFragmentedAsset(_ asset: AVAsset)
}
