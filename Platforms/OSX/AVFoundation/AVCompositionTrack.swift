
@available(OSX 10.7, *)
class AVCompositionTrack : AVAssetTrack {
  var segments: [AVCompositionTrackSegment] { get }
}
@available(OSX 10.7, *)
class AVMutableCompositionTrack : AVCompositionTrack {
  var naturalTimeScale: CMTimeScale
  var languageCode: String?
  var extendedLanguageTag: String?
  var preferredTransform: CGAffineTransform
  var preferredVolume: Float
  var segments: [AVCompositionTrackSegment]!
  func insertTimeRange(timeRange: CMTimeRange, ofTrack track: AVAssetTrack, atTime startTime: CMTime) throws
  @available(OSX 10.8, *)
  func insertTimeRanges(timeRanges: [NSValue], ofTracks tracks: [AVAssetTrack], atTime startTime: CMTime) throws
  func insertEmptyTimeRange(timeRange: CMTimeRange)
  func removeTimeRange(timeRange: CMTimeRange)
  func scaleTimeRange(timeRange: CMTimeRange, toDuration duration: CMTime)
  func validateTrackSegments(trackSegments: [AVCompositionTrackSegment]) throws
}
