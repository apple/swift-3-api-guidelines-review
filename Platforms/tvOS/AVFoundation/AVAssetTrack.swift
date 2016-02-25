
@available(tvOS 4.0, *)
class AVAssetTrack : NSObject, NSCopying, AVAsynchronousKeyValueLoading {
  weak var asset: @sil_weak AVAsset? { get }
  var trackID: CMPersistentTrackID { get }
  @available(tvOS 4.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 4.0, *)
  func statusOfValueForKey(_ key: String, error outError: NSErrorPointer) -> AVKeyValueStatus
  @available(tvOS 4.0, *)
  func loadValuesAsynchronouslyForKeys(_ keys: [String], completionHandler handler: (() -> Void)?)
}
extension AVAssetTrack {
  var mediaType: String { get }
  var formatDescriptions: [AnyObject] { get }
  @available(tvOS 5.0, *)
  var playable: Bool { get }
  var enabled: Bool { get }
  var selfContained: Bool { get }
  var totalSampleDataLength: Int64 { get }
  func hasMediaCharacteristic(_ mediaCharacteristic: String) -> Bool
}
extension AVAssetTrack {
  var timeRange: CMTimeRange { get }
  var naturalTimeScale: CMTimeScale { get }
  var estimatedDataRate: Float { get }
}
extension AVAssetTrack {
  var languageCode: String { get }
  var extendedLanguageTag: String { get }
}
extension AVAssetTrack {
  var naturalSize: CGSize { get }
  var preferredTransform: CGAffineTransform { get }
}
extension AVAssetTrack {
  var preferredVolume: Float { get }
}
extension AVAssetTrack {
  var nominalFrameRate: Float { get }
  @available(tvOS 7.0, *)
  var minFrameDuration: CMTime { get }
  @available(tvOS 8.0, *)
  var requiresFrameReordering: Bool { get }
}
extension AVAssetTrack {
  var segments: [AVAssetTrackSegment] { get }
  func segmentForTrackTime(_ trackTime: CMTime) -> AVAssetTrackSegment?
  func samplePresentationTimeForTrackTime(_ trackTime: CMTime) -> CMTime
}
extension AVAssetTrack {
  var commonMetadata: [AVMetadataItem] { get }
  @available(tvOS 8.0, *)
  var metadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [String] { get }
  func metadataForFormat(_ format: String) -> [AVMetadataItem]
}
extension AVAssetTrack {
  @available(tvOS 7.0, *)
  var availableTrackAssociationTypes: [String] { get }
  @available(tvOS 7.0, *)
  func associatedTracksOfType(_ trackAssociationType: String) -> [AVAssetTrack]
}
@available(tvOS 7.0, *)
let AVTrackAssociationTypeAudioFallback: String
@available(tvOS 7.0, *)
let AVTrackAssociationTypeChapterList: String
@available(tvOS 7.0, *)
let AVTrackAssociationTypeForcedSubtitlesOnly: String
@available(tvOS 7.0, *)
let AVTrackAssociationTypeSelectionFollower: String
@available(tvOS 7.0, *)
let AVTrackAssociationTypeTimecode: String
@available(tvOS 8.0, *)
let AVTrackAssociationTypeMetadataReferent: String
@available(tvOS 9.0, *)
let AVAssetTrackTimeRangeDidChangeNotification: String
@available(tvOS 9.0, *)
let AVAssetTrackSegmentsDidChangeNotification: String
@available(tvOS 9.0, *)
let AVAssetTrackTrackAssociationsDidChangeNotification: String
