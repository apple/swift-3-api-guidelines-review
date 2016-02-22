
@available(iOS 4.0, *)
class AVCompositionTrackSegment : AVAssetTrackSegment {
  init(url URL: NSURL, trackID: CMPersistentTrackID, sourceTimeRange: CMTimeRange, targetTimeRange: CMTimeRange)
  init(timeRange: CMTimeRange)
  var isEmpty: Bool { get }
  var sourceURL: NSURL? { get }
  var sourceTrackID: CMPersistentTrackID { get }
}
