
@available(tvOS 4.0, *)
class AVCompositionTrackSegment : AVAssetTrackSegment {
  init(URL: NSURL, trackID: CMPersistentTrackID, sourceTimeRange: CMTimeRange, targetTimeRange: CMTimeRange)
  init(timeRange: CMTimeRange)
  var empty: Bool { get }
  var sourceURL: NSURL? { get }
  var sourceTrackID: CMPersistentTrackID { get }
}
