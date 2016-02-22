
@available(OSX 10.7, *)
class AVCompositionTrackSegment : AVAssetTrackSegment {
  init(url URL: NSURL, trackID: CMPersistentTrackID, sourceTimeRange: CMTimeRange, targetTimeRange: CMTimeRange)
  init(timeRange: CMTimeRange)
  var isEmpty: Bool { get }
  var sourceURL: NSURL? { get }
  var sourceTrackID: CMPersistentTrackID { get }
}
