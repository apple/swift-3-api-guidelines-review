
@available(OSX 10.10, *)
enum AVQueuedSampleBufferRenderingStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Rendering
  case Failed
}
@available(OSX 10.10, *)
let AVSampleBufferDisplayLayerFailedToDecodeNotification: String
@available(OSX 10.10, *)
let AVSampleBufferDisplayLayerFailedToDecodeNotificationErrorKey: String
@available(OSX 10.8, *)
class AVSampleBufferDisplayLayer : CALayer {
  var controlTimebase: CMTimebase?
  var videoGravity: String
  @available(OSX 10.10, *)
  var status: AVQueuedSampleBufferRenderingStatus { get }
  @available(OSX 10.10, *)
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
