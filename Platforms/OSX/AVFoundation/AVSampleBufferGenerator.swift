
@available(OSX 10.10, *)
class AVSampleBufferGenerator : NSObject {
  init(asset: AVAsset, timebase: CMTimebase?)
  func createSampleBufferForRequest(request: AVSampleBufferRequest) -> CMSampleBuffer
  class func notifyOfDataReadyForSampleBuffer(sbuf: CMSampleBuffer, completionHandler: (Bool, NSError) -> Void)
}
enum AVSampleBufferRequestDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Forward
  case None
  case Reverse
}
enum AVSampleBufferRequestMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Immediate
  case Scheduled
}
@available(OSX 10.10, *)
class AVSampleBufferRequest : NSObject {
  init(startCursor: AVSampleCursor)
  var startCursor: AVSampleCursor { get }
  var direction: AVSampleBufferRequestDirection
  var limitCursor: AVSampleCursor?
  var preferredMinSampleCount: Int
  var maxSampleCount: Int
  var mode: AVSampleBufferRequestMode
  var overrideTime: CMTime
}
