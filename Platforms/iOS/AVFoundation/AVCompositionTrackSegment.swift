
@available(iOS 4.0, *)
class AVCompositionTrackSegment : AVAssetTrackSegment {
  init(url URL: URL, trackID: CMPersistentTrackID, sourceTimeRange: CMTimeRange, targetTimeRange: CMTimeRange)
  init(timeRange: CMTimeRange)
  var isEmpty: Bool { get }
  var sourceURL: URL? { get }
  var sourceTrackID: CMPersistentTrackID { get }
}
