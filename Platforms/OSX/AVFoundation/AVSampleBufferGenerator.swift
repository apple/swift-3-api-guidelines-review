
@available(OSX 10.10, *)
class AVSampleBufferGenerator : Object {
  init(asset: AVAsset, timebase: CMTimebase?)
  func createSampleBuffer(for request: AVSampleBufferRequest) -> CMSampleBuffer
  class func notifyOfDataReady(for sbuf: CMSampleBuffer, completionHandler: (Bool, Error) -> Void)
}
enum AVSampleBufferRequestDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case forward
  case none
  case reverse
}
enum AVSampleBufferRequestMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case immediate
  case scheduled
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
