
@available(OSX 10.10, *)
class AVSampleBufferGenerator : Object {
  init(asset: AVAsset, timebase: CMTimebase?)
  func createSampleBufferFor(request: AVSampleBufferRequest) -> CMSampleBuffer
  class func notifyOfDataReadyFor(sbuf: CMSampleBuffer, completionHandler: (Bool, Error) -> Void)
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
class AVSampleBufferRequest : Object {
  init(start startCursor: AVSampleCursor)
  var startCursor: AVSampleCursor { get }
  var direction: AVSampleBufferRequestDirection
  var limitCursor: AVSampleCursor?
  var preferredMinSampleCount: Int
  var maxSampleCount: Int
  var mode: AVSampleBufferRequestMode
  var overrideTime: CMTime
}
