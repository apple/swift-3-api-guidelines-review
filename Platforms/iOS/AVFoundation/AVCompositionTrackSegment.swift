
@available(iOS 4.0, *)
class AVCompositionTrackSegment : AVAssetTrackSegment {
  init(URL URL: NSURL, trackID trackID: CMPersistentTrackID, sourceTimeRange sourceTimeRange: CMTimeRange, targetTimeRange targetTimeRange: CMTimeRange)
  init(timeRange timeRange: CMTimeRange)
  var sourceURL: NSURL? { get }
  var sourceTrackID: CMPersistentTrackID { get }
}
