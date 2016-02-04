
@available(iOS 8.0, *)
enum AVQueuedSampleBufferRenderingStatus : Int {
  init?(rawValue: Int)
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
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
extension AVSampleBufferDisplayLayer {
  func enqueueSampleBuffer(sampleBuffer: CMSampleBuffer)
  func flush()
  func flushAndRemoveImage()
  var readyForMoreMediaData: Bool { get }
  func requestMediaDataWhenReadyOnQueue(queue: dispatch_queue_t, usingBlock block: () -> Void)
  func stopRequestingMediaData()
}
