
@available(OSX 10.7, *)
class AVCompositionTrack : AVAssetTrack {
}
@available(OSX 10.7, *)
class AVMutableCompositionTrack : AVCompositionTrack {
  func insertTimeRange(_ timeRange: CMTimeRange, ofTrack track: AVAssetTrack, atTime startTime: CMTime) throws
  @available(OSX 10.8, *)
  func insertTimeRanges(_ timeRanges: [NSValue], ofTracks tracks: [AVAssetTrack], atTime startTime: CMTime) throws
  func insertEmptyTimeRange(_ timeRange: CMTimeRange)
  func removeTimeRange(_ timeRange: CMTimeRange)
  func scaleTimeRange(_ timeRange: CMTimeRange, toDuration duration: CMTime)
  func validateTrackSegments(_ trackSegments: [AVCompositionTrackSegment]) throws
}
