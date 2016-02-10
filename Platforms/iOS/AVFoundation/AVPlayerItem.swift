
@available(iOS 5.0, *)
let AVPlayerItemTimeJumpedNotification: String
@available(iOS 4.0, *)
let AVPlayerItemDidPlayToEndTimeNotification: String
@available(iOS 4.3, *)
let AVPlayerItemFailedToPlayToEndTimeNotification: String
@available(iOS 6.0, *)
let AVPlayerItemPlaybackStalledNotification: String
@available(iOS 6.0, *)
let AVPlayerItemNewAccessLogEntryNotification: String
@available(iOS 6.0, *)
let AVPlayerItemNewErrorLogEntryNotification: String
@available(iOS 4.3, *)
let AVPlayerItemFailedToPlayToEndTimeErrorKey: String
enum AVPlayerItemStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case readyToPlay
  case failed
}
@available(iOS 4.0, *)
class AVPlayerItem : Object, Copying {
  convenience init(url URL: URL)
  convenience init(asset: AVAsset)
  @available(iOS 7.0, *)
  init(asset: AVAsset, automaticallyLoadedAssetKeys: [String]?)
  var status: AVPlayerItemStatus { get }
  var error: Error? { get }
  @available(iOS 4.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
extension AVPlayerItem {
  var asset: AVAsset { get }
  var tracks: [AVPlayerItemTrack] { get }
  @available(iOS 4.3, *)
  var duration: CMTime { get }
  var presentationSize: CGSize { get }
  var timedMetadata: [AVMetadataItem]? { get }
  @available(iOS 7.0, *)
  var automaticallyLoadedAssetKeys: [String] { get }
}
extension AVPlayerItem {
  @available(iOS 5.0, *)
  var canPlayFastForward: Bool { get }
  @available(iOS 6.0, *)
  var canPlaySlowForward: Bool { get }
  @available(iOS 6.0, *)
  var canPlayReverse: Bool { get }
  @available(iOS 6.0, *)
  var canPlaySlowReverse: Bool { get }
  @available(iOS 5.0, *)
  var canPlayFastReverse: Bool { get }
  @available(iOS 6.0, *)
  var canStepForward: Bool { get }
  @available(iOS 6.0, *)
  var canStepBackward: Bool { get }
}
extension AVPlayerItem {
  func currentTime() -> CMTime
  var forwardPlaybackEndTime: CMTime
  var reversePlaybackEndTime: CMTime
  var seekableTimeRanges: [Value] { get }
  func seekTo(time: CMTime)
  @available(iOS 5.0, *)
  func seekTo(time: CMTime, completionHandler: (Bool) -> Void)
  func seekTo(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime)
  @available(iOS 5.0, *)
  func seekTo(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime, completionHandler: (Bool) -> Void)
  @available(iOS 5.0, *)
  func cancelPendingSeeks()
  func currentDate() -> Date?
  func seek(to date: Date) -> Bool
  @available(iOS 6.0, *)
  func seek(to date: Date, completionHandler: (Bool) -> Void) -> Bool
  func stepByCount(stepCount: Int)
  @available(iOS 6.0, *)
  var timebase: CMTimebase? { get }
}
extension AVPlayerItem {
  @NSCopying var videoComposition: AVVideoComposition?
  @available(iOS 7.0, *)
  var customVideoCompositor: AVVideoCompositing? { get }
  @available(iOS 6.0, *)
  var seekingWaitsForVideoCompositionRendering: Bool
  @available(iOS 6.0, *)
  var textStyleRules: [AVTextStyleRule]?
}
extension AVPlayerItem {
  @available(iOS 7.0, *)
  var audioTimePitchAlgorithm: String
  @NSCopying var audioMix: AVAudioMix?
}
extension AVPlayerItem {
  var loadedTimeRanges: [Value] { get }
  var isPlaybackLikelyToKeepUp: Bool { get }
  var isPlaybackBufferFull: Bool { get }
  var isPlaybackBufferEmpty: Bool { get }
  @available(iOS 9.0, *)
  var canUseNetworkResourcesForLiveStreamingWhilePaused: Bool
}
extension AVPlayerItem {
  @available(iOS 8.0, *)
  var preferredPeakBitRate: Double
}
extension AVPlayerItem {
  @available(iOS 5.0, *)
  func selectMediaOption(mediaSelectionOption: AVMediaSelectionOption?, in mediaSelectionGroup: AVMediaSelectionGroup)
  @available(iOS 7.0, *)
  func selectMediaOptionAutomatically(in mediaSelectionGroup: AVMediaSelectionGroup)
  @available(iOS 5.0, *)
  func selectedMediaOption(in mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  @available(iOS 9.0, *)
  var currentMediaSelection: AVMediaSelection { get }
}
extension AVPlayerItem {
  @available(iOS 4.3, *)
  func accessLog() -> AVPlayerItemAccessLog?
  @available(iOS 4.3, *)
  func errorLog() -> AVPlayerItemErrorLog?
}
extension AVPlayerItem {
  @available(iOS 6.0, *)
  func addOutput(output: AVPlayerItemOutput)
  @available(iOS 6.0, *)
  func removeOutput(output: AVPlayerItemOutput)
  @available(iOS 6.0, *)
  var outputs: [AVPlayerItemOutput] { get }
}
@available(iOS 4.3, *)
class AVPlayerItemAccessLog : Object, Copying {
  func extendedLogData() -> Data?
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AVPlayerItemAccessLogEvent] { get }
  init()
  @available(iOS 4.3, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
@available(iOS 4.3, *)
class AVPlayerItemErrorLog : Object, Copying {
  func extendedLogData() -> Data?
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AVPlayerItemErrorLogEvent] { get }
  init()
  @available(iOS 4.3, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
@available(iOS 4.3, *)
class AVPlayerItemAccessLogEvent : Object, Copying {
  @available(iOS 6.0, *)
  var numberOfMediaRequests: Int { get }
  var playbackStartDate: Date? { get }
  var uri: String? { get }
  var serverAddress: String? { get }
  var numberOfServerAddressChanges: Int { get }
  var playbackSessionID: String? { get }
  var playbackStartOffset: TimeInterval { get }
  var segmentsDownloadedDuration: TimeInterval { get }
  var durationWatched: TimeInterval { get }
  var numberOfStalls: Int { get }
  var numberOfBytesTransferred: Int64 { get }
  @available(iOS 7.0, *)
  var transferDuration: TimeInterval { get }
  var observedBitrate: Double { get }
  var indicatedBitrate: Double { get }
  var numberOfDroppedVideoFrames: Int { get }
  @available(iOS 7.0, *)
  var startupTime: TimeInterval { get }
  @available(iOS 7.0, *)
  var downloadOverdue: Int { get }
  @available(iOS 7.0, *)
  var observedMaxBitrate: Double { get }
  @available(iOS 7.0, *)
  var observedMinBitrate: Double { get }
  @available(iOS 7.0, *)
  var observedBitrateStandardDeviation: Double { get }
  @available(iOS 7.0, *)
  var playbackType: String? { get }
  @available(iOS 7.0, *)
  var mediaRequestsWWAN: Int { get }
  @available(iOS 7.0, *)
  var switchBitrate: Double { get }
  init()
  @available(iOS 4.3, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
@available(iOS 4.3, *)
class AVPlayerItemErrorLogEvent : Object, Copying {
  var date: Date? { get }
  var uri: String? { get }
  var serverAddress: String? { get }
  var playbackSessionID: String? { get }
  var errorStatusCode: Int { get }
  var errorDomain: String { get }
  var errorComment: String? { get }
  init()
  @available(iOS 4.3, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
