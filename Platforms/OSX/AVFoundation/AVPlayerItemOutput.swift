
@available(OSX 10.8, *)
class AVPlayerItemOutput : NSObject {
  func itemTime(forHostTime hostTimeInSeconds: CFTimeInterval) -> CMTime
  func itemTime(forMachAbsoluteTime machAbsoluteTime: Int64) -> CMTime
  @available(OSX 10.8, *)
  func itemTime(for timestamp: CVTimeStamp) -> CMTime
  @available(OSX 10.8, *)
  var suppressesPlayerRendering: Bool
  init()
}
@available(OSX 10.8, *)
class AVPlayerItemVideoOutput : AVPlayerItemOutput {
  init(pixelBufferAttributes: [String : AnyObject]? = [:])
  func hasNewPixelBuffer(forItemTime itemTime: CMTime) -> Bool
  func copyPixelBuffer(forItemTime itemTime: CMTime, itemTimeForDisplay outItemTimeForDisplay: UnsafeMutablePointer<CMTime>) -> CVPixelBuffer?
  func setDelegate(delegate: AVPlayerItemOutputPullDelegate?, queue delegateQueue: dispatch_queue_t?)
  func requestNotificationOfMediaDataChange(advanceInterval interval: NSTimeInterval)
  unowned(unsafe) var delegate: @sil_unmanaged AVPlayerItemOutputPullDelegate? { get }
  var delegateQueue: dispatch_queue_t? { get }
  convenience init()
}
protocol AVPlayerItemOutputPullDelegate : NSObjectProtocol {
  @available(OSX 10.8, *)
  optional func outputMediaDataWillChange(sender: AVPlayerItemOutput)
  @available(OSX 10.8, *)
  optional func outputSequenceWasFlushed(output: AVPlayerItemOutput)
}
@available(OSX 10.9, *)
class AVPlayerItemLegibleOutput : AVPlayerItemOutput {
  func setDelegate(delegate: AVPlayerItemLegibleOutputPushDelegate?, queue delegateQueue: dispatch_queue_t?)
  weak var delegate: @sil_weak AVPlayerItemLegibleOutputPushDelegate? { get }
  var delegateQueue: dispatch_queue_t? { get }
  var advanceIntervalForDelegateInvocation: NSTimeInterval
  init()
}
extension AVPlayerItemLegibleOutput {
  init(mediaSubtypesForNativeRepresentation subtypes: [NSNumber])
}
extension AVPlayerItemLegibleOutput {
  var textStylingResolution: String
}
@available(OSX 10.9, *)
let AVPlayerItemLegibleOutputTextStylingResolutionDefault: String
@available(OSX 10.9, *)
let AVPlayerItemLegibleOutputTextStylingResolutionSourceAndRulesOnly: String
protocol AVPlayerItemLegibleOutputPushDelegate : AVPlayerItemOutputPushDelegate {
  @available(OSX 10.9, *)
  optional func legibleOutput(output: AVPlayerItemLegibleOutput, didOutputAttributedStrings strings: [NSAttributedString], nativeSampleBuffers nativeSamples: [AnyObject], forItemTime itemTime: CMTime)
}
protocol AVPlayerItemOutputPushDelegate : NSObjectProtocol {
  @available(OSX 10.8, *)
  optional func outputSequenceWasFlushed(output: AVPlayerItemOutput)
}
@available(OSX 10.10, *)
class AVPlayerItemMetadataOutput : AVPlayerItemOutput {
  init(identifiers: [String]?)
  func setDelegate(delegate: AVPlayerItemMetadataOutputPushDelegate?, queue delegateQueue: dispatch_queue_t?)
  weak var delegate: @sil_weak AVPlayerItemMetadataOutputPushDelegate? { get }
  var delegateQueue: dispatch_queue_t? { get }
  var advanceIntervalForDelegateInvocation: NSTimeInterval
  convenience init()
}
protocol AVPlayerItemMetadataOutputPushDelegate : AVPlayerItemOutputPushDelegate {
  @available(OSX 10.10, *)
  optional func metadataOutput(output: AVPlayerItemMetadataOutput, didOutputTimedMetadataGroups groups: [AVTimedMetadataGroup], from track: AVPlayerItemTrack)
}
