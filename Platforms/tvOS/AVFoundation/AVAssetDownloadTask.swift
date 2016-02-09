
@available(tvOS 9.0, *)
let AVAssetDownloadTaskMinimumRequiredMediaBitrateKey: String
@available(tvOS 9.0, *)
let AVAssetDownloadTaskMediaSelectionKey: String
@available(tvOS 9.0, *)
class AVAssetDownloadTask : URLSessionTask {
  var urlAsset: AVURLAsset { get }
  var destinationURL: URL { get }
  var options: [String : AnyObject]? { get }
  var loadedTimeRanges: [Value] { get }
  init()
}
protocol AVAssetDownloadDelegate : URLSessionTaskDelegate {
  @available(tvOS 9.0, *)
  optional func urlSession(session: URLSession, assetDownloadTask: AVAssetDownloadTask, didLoad timeRange: CMTimeRange, totalTimeRangesLoaded loadedTimeRanges: [Value], timeRangeExpectedToLoad: CMTimeRange)
  @available(tvOS 9.0, *)
  optional func urlSession(session: URLSession, assetDownloadTask: AVAssetDownloadTask, didResolve resolvedMediaSelection: AVMediaSelection)
}
@available(tvOS 9.0, *)
class AVAssetDownloadURLSession : URLSession {
  /*not inherited*/ init(configuration: URLSessionConfiguration, assetDownloadDelegate delegate: AVAssetDownloadDelegate?, delegateQueue: OperationQueue?)
  func assetDownloadTask(withURLAsset URLAsset: AVURLAsset, destinationURL: URL, options: [String : AnyObject]? = [:]) -> AVAssetDownloadTask?
  init()
}
