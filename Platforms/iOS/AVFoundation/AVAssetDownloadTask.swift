
@available(iOS 9.0, *)
let AVAssetDownloadTaskMinimumRequiredMediaBitrateKey: String
@available(iOS 9.0, *)
let AVAssetDownloadTaskMediaSelectionKey: String
@available(iOS 9.0, *)
class AVAssetDownloadTask : NSURLSessionTask {
  var URLAsset: AVURLAsset { get }
  var destinationURL: NSURL { get }
  var options: [String : AnyObject]? { get }
  var loadedTimeRanges: [NSValue] { get }
  init()
}
protocol AVAssetDownloadDelegate : NSURLSessionTaskDelegate {
  @available(iOS 9.0, *)
  optional func URLSession(session: NSURLSession, assetDownloadTask: AVAssetDownloadTask, didLoadTimeRange timeRange: CMTimeRange, totalTimeRangesLoaded loadedTimeRanges: [NSValue], timeRangeExpectedToLoad: CMTimeRange)
  @available(iOS 9.0, *)
  optional func URLSession(session: NSURLSession, assetDownloadTask: AVAssetDownloadTask, didResolveMediaSelection resolvedMediaSelection: AVMediaSelection)
}
@available(iOS 9.0, *)
class AVAssetDownloadURLSession : NSURLSession {
  /*not inherited*/ init(configuration: NSURLSessionConfiguration, assetDownloadDelegate delegate: AVAssetDownloadDelegate?, delegateQueue: NSOperationQueue?)
  func assetDownloadTaskWithURLAsset(URLAsset: AVURLAsset, destinationURL: NSURL, options: [String : AnyObject]?) -> AVAssetDownloadTask?
  init()
}
