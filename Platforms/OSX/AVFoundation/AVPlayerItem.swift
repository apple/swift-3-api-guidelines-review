
@available(OSX 10.7, *)
let AVPlayerItemTimeJumpedNotification: String
@available(OSX 10.7, *)
let AVPlayerItemDidPlayToEndTimeNotification: String
@available(OSX 10.7, *)
let AVPlayerItemFailedToPlayToEndTimeNotification: String
@available(OSX 10.9, *)
let AVPlayerItemPlaybackStalledNotification: String
@available(OSX 10.9, *)
let AVPlayerItemNewAccessLogEntryNotification: String
@available(OSX 10.9, *)
let AVPlayerItemNewErrorLogEntryNotification: String
@available(OSX 10.7, *)
let AVPlayerItemFailedToPlayToEndTimeErrorKey: String
enum AVPlayerItemStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case ReadyToPlay
  case Failed
}
@available(OSX 10.7, *)
class AVPlayerItem : Object, Copying {
  convenience init(url URL: URL)
  convenience init(asset: AVAsset)
  @available(OSX 10.9, *)
  init(asset: AVAsset, automaticallyLoadedAssetKeys: [String]?)
  var status: AVPlayerItemStatus { get }
  var error: Error? { get }
  @available(OSX 10.7, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension AVPlayerItem {
  var asset: AVAsset { get }
  var tracks: [AVPlayerItemTrack] { get }
  @available(OSX 10.7, *)
  var duration: CMTime { get }
  var presentationSize: CGSize { get }
  var timedMetadata: [AVMetadataItem]? { get }
  @available(OSX 10.9, *)
  var automaticallyLoadedAssetKeys: [String] { get }
}
extension AVPlayerItem {
  @available(OSX 10.8, *)
  var canPlayFastForward: Bool { get }
  @available(OSX 10.8, *)
  var canPlaySlowForward: Bool { get }
  @available(OSX 10.8, *)
  var canPlayReverse: Bool { get }
  @available(OSX 10.8, *)
  var canPlaySlowReverse: Bool { get }
  @available(OSX 10.8, *)
  var canPlayFastReverse: Bool { get }
  @available(OSX 10.8, *)
  var canStepForward: Bool { get }
  @available(OSX 10.8, *)
  var canStepBackward: Bool { get }
}
extension AVPlayerItem {
  func currentTime() -> CMTime
  var forwardPlaybackEndTime: CMTime
  var reversePlaybackEndTime: CMTime
  var seekableTimeRanges: [Value] { get }
  func seekTo(time: CMTime)
  @available(OSX 10.7, *)
  func seekTo(time: CMTime, completionHandler: (Bool) -> Void)
  func seekTo(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime)
  @available(OSX 10.7, *)
  func seekTo(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime, completionHandler: (Bool) -> Void)
  @available(OSX 10.7, *)
  func cancelPendingSeeks()
  func currentDate() -> Date?
  func seekTo(date: Date) -> Bool
  @available(OSX 10.9, *)
  func seekTo(date: Date, completionHandler: (Bool) -> Void) -> Bool
  func stepByCount(stepCount: Int)
  @available(OSX 10.8, *)
  var timebase: CMTimebase? { get }
}
extension AVPlayerItem {
  @NSCopying var videoComposition: AVVideoComposition?
  @available(OSX 10.9, *)
  var customVideoCompositor: AVVideoCompositing? { get }
  @available(OSX 10.9, *)
  var seekingWaitsForVideoCompositionRendering: Bool
  @available(OSX 10.9, *)
  var textStyleRules: [AVTextStyleRule]?
}
extension AVPlayerItem {
  @available(OSX 10.9, *)
  var audioTimePitchAlgorithm: String
  @NSCopying var audioMix: AVAudioMix?
}
extension AVPlayerItem {
  var loadedTimeRanges: [Value] { get }
  var isPlaybackLikelyToKeepUp: Bool { get }
  var isPlaybackBufferFull: Bool { get }
  var isPlaybackBufferEmpty: Bool { get }
  @available(OSX 10.11, *)
  var canUseNetworkResourcesForLiveStreamingWhilePaused: Bool
}
extension AVPlayerItem {
  @available(OSX 10.10, *)
  var preferredPeakBitRate: Double
}
extension AVPlayerItem {
  @available(OSX 10.8, *)
  func selectMediaOption(mediaSelectionOption: AVMediaSelectionOption?, in mediaSelectionGroup: AVMediaSelectionGroup)
  @available(OSX 10.9, *)
  func selectMediaOptionAutomaticallyIn(mediaSelectionGroup: AVMediaSelectionGroup)
  @available(OSX 10.8, *)
  func selectedMediaOptionIn(mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  @available(OSX 10.11, *)
  var currentMediaSelection: AVMediaSelection { get }
}
extension AVPlayerItem {
  @available(OSX 10.7, *)
  func accessLog() -> AVPlayerItemAccessLog?
  @available(OSX 10.7, *)
  func errorLog() -> AVPlayerItemErrorLog?
}
extension AVPlayerItem {
  @available(OSX 10.8, *)
  func addOutput(output: AVPlayerItemOutput)
  @available(OSX 10.8, *)
  func removeOutput(output: AVPlayerItemOutput)
  @available(OSX 10.8, *)
  var outputs: [AVPlayerItemOutput] { get }
}
@available(OSX 10.7, *)
class AVPlayerItemAccessLog : Object, Copying {
  func extendedLogData() -> Data?
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AVPlayerItemAccessLogEvent] { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.7, *)
class AVPlayerItemErrorLog : Object, Copying {
  func extendedLogData() -> Data?
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AVPlayerItemErrorLogEvent] { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.7, *)
class AVPlayerItemAccessLogEvent : Object, Copying {
  @available(OSX 10.9, *)
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
  @available(OSX 10.9, *)
  var transferDuration: TimeInterval { get }
  var observedBitrate: Double { get }
  var indicatedBitrate: Double { get }
  var numberOfDroppedVideoFrames: Int { get }
  @available(OSX 10.9, *)
  var startupTime: TimeInterval { get }
  @available(OSX 10.9, *)
  var downloadOverdue: Int { get }
  @available(OSX 10.9, *)
  var observedMaxBitrate: Double { get }
  @available(OSX 10.9, *)
  var observedMinBitrate: Double { get }
  @available(OSX 10.9, *)
  var observedBitrateStandardDeviation: Double { get }
  @available(OSX 10.9, *)
  var playbackType: String? { get }
  @available(OSX 10.9, *)
  var mediaRequestsWWAN: Int { get }
  @available(OSX 10.9, *)
  var switchBitrate: Double { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.7, *)
class AVPlayerItemErrorLogEvent : Object, Copying {
  var date: Date? { get }
  var uri: String? { get }
  var serverAddress: String? { get }
  var playbackSessionID: String? { get }
  var errorStatusCode: Int { get }
  var errorDomain: String { get }
  var errorComment: String? { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
