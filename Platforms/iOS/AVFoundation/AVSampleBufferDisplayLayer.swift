
@available(iOS 8.0, *)
enum AVQueuedSampleBufferRenderingStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Rendering
  case Failed
}
@available(iOS 8.0, *)
let AVSampleBufferDisplayLayerFailedToDecodeNotification: String
@available(iOS 8.0, *)
let AVSampleBufferDisplayLayerFailedToDecodeNotificationErrorKey: String
@available(iOS 8.0, *)
class AVSampleBufferDisplayLayer : CALayer {
  var controlTimebase: CMTimebase?
  var videoGravity: String
  @available(iOS 8.0, *)
  var status: AVQueuedSampleBufferRenderingStatus { get }
  @available(iOS 8.0, *)
  var error: NSError? { get }
}
extension AVSampleBufferDisplayLayer {
  func enqueueSampleBuffer(_ sampleBuffer: CMSampleBuffer)
  func flush()
  func flushAndRemoveImage()
  var readyForMoreMediaData: Bool { get }
  func requestMediaDataWhenReadyOnQueue(_ queue: dispatch_queue_t, usingBlock block: () -> Void)
  func stopRequestingMediaData()
}
