
@available(OSX 10.7, *)
class AVAsset : Object, Copying, AVAsynchronousKeyValueLoading {
  convenience init(url URL: URL)
  var duration: CMTime { get }
  var preferredRate: Float { get }
  var preferredVolume: Float { get }
  var preferredTransform: CGAffineTransform { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func statusOfValue(forKey key: String, error outError: ErrorPointer) -> AVKeyValueStatus
  @available(OSX 10.7, *)
  func loadValuesAsynchronously(forKeys keys: [String], completionHandler handler: (() -> Void)? = nil)
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
  static var forbidNone: AVAssetReferenceRestrictions { get }
  static var forbidRemoteReferenceToLocal: AVAssetReferenceRestrictions { get }
  static var forbidLocalReferenceToRemote: AVAssetReferenceRestrictions { get }
  static var forbidCrossSiteReference: AVAssetReferenceRestrictions { get }
  static var forbidLocalReferenceToLocal: AVAssetReferenceRestrictions { get }
  static var forbidAll: AVAssetReferenceRestrictions { get }
}
extension AVAsset {
  var tracks: [AVAssetTrack] { get }
  func track(trackID trackID: CMPersistentTrackID) -> AVAssetTrack?
  func tracks(mediaType mediaType: String) -> [AVAssetTrack]
  func tracks(mediaCharacteristic mediaCharacteristic: String) -> [AVAssetTrack]
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
  func metadata(forFormat format: String) -> [AVMetadataItem]
}
extension AVAsset {
  @available(OSX 10.7, *)
  var availableChapterLocales: [Locale] { get }
  @available(OSX 10.7, *)
  func chapterMetadataGroups(titleLocale locale: Locale, containingItemsWithCommonKeys commonKeys: [String]?) -> [AVTimedMetadataGroup]
  @available(OSX 10.8, *)
  func chapterMetadataGroups(bestMatchingPreferredLanguages preferredLanguages: [String]) -> [AVTimedMetadataGroup]
}
extension AVAsset {
  @available(OSX 10.8, *)
  var availableMediaCharacteristicsWithMediaSelectionOptions: [String] { get }
  @available(OSX 10.8, *)
  func mediaSelectionGroup(forMediaCharacteristic mediaCharacteristic: String) -> AVMediaSelectionGroup?
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
  var isPlayable: Bool { get }
  @available(OSX 10.7, *)
  var isExportable: Bool { get }
  @available(OSX 10.7, *)
  var isReadable: Bool { get }
  @available(OSX 10.7, *)
  var isComposable: Bool { get }
  @available(OSX 10.11, *)
  var isCompatibleWithAirPlayVideo: Bool { get }
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
  init(url URL: URL, options: [String : AnyObject]? = [:])
  @NSCopying var url: URL { get }
  convenience init(url URL: URL)
}
extension AVURLAsset {
  @available(OSX 10.9, *)
  var resourceLoader: AVAssetResourceLoader { get }
}
extension AVURLAsset {
  func compatibleTrack(for compositionTrack: AVCompositionTrack) -> AVAssetTrack?
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
  var isAssociatedWithFragmentMinder: Bool { get }
}
@available(OSX 10.11, *)
class AVFragmentedAsset : AVURLAsset, AVFragmentMinding {
  var tracks: [AVFragmentedAssetTrack] { get }
  init(url URL: URL, options: [String : AnyObject]? = [:])
  convenience init(url URL: URL)
  @available(OSX 10.11, *)
  var isAssociatedWithFragmentMinder: Bool { get }
}
extension AVFragmentedAsset {
  func track(trackID trackID: CMPersistentTrackID) -> AVFragmentedAssetTrack?
  func tracks(mediaType mediaType: String) -> [AVFragmentedAssetTrack]
  func tracks(mediaCharacteristic mediaCharacteristic: String) -> [AVFragmentedAssetTrack]
}
@available(OSX 10.11, *)
class AVFragmentedAssetMinder : Object {
  convenience init(asset: AVAsset, mindingInterval: TimeInterval)
  var mindingInterval: TimeInterval
  var assets: [AVAsset] { get }
  func addFragmentedAsset(asset: AVAsset)
  func removeFragmentedAsset(asset: AVAsset)
  init()
}
