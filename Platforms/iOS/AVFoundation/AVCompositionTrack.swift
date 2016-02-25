
@available(iOS 4.0, *)
class AVCompositionTrack : AVAssetTrack {
}
@available(iOS 4.0, *)
class AVMutableCompositionTrack : AVCompositionTrack {
  func insertTimeRange(_ timeRange: CMTimeRange, ofTrack track: AVAssetTrack, atTime startTime: CMTime) throws
  @available(iOS 5.0, *)
  func insertTimeRanges(_ timeRanges: [NSValue], ofTracks tracks: [AVAssetTrack], atTime startTime: CMTime) throws
  func insertEmptyTimeRange(_ timeRange: CMTimeRange)
  func removeTimeRange(_ timeRange: CMTimeRange)
  func scaleTimeRange(_ timeRange: CMTimeRange, toDuration duration: CMTime)
  func validateTrackSegments(_ trackSegments: [AVCompositionTrackSegment]) throws
}
