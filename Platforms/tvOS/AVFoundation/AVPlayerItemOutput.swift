
@available(tvOS 6.0, *)
class AVPlayerItemOutput : Object {
  func itemTimeForHostTime(hostTimeInSeconds: CFTimeInterval) -> CMTime
  func itemTimeForMachAbsoluteTime(machAbsoluteTime: Int64) -> CMTime
  @available(tvOS 6.0, *)
  var suppressesPlayerRendering: Bool
  init()
}
@available(tvOS 6.0, *)
class AVPlayerItemVideoOutput : AVPlayerItemOutput {
  init(pixelBufferAttributes: [String : AnyObject]? = [:])
  func hasNewPixelBufferForItemTime(itemTime: CMTime) -> Bool
  func copyPixelBufferForItemTime(itemTime: CMTime, itemTimeForDisplay outItemTimeForDisplay: UnsafeMutablePointer<CMTime>) -> CVPixelBuffer?
  func setDelegate(delegate: AVPlayerItemOutputPullDelegate?, queue delegateQueue: dispatch_queue_t?)
  func requestNotificationOfMediaDataChange(advanceInterval interval: TimeInterval)
  unowned(unsafe) var delegate: @sil_unmanaged AVPlayerItemOutputPullDelegate? { get }
  var delegateQueue: dispatch_queue_t? { get }
  convenience init()
}
protocol AVPlayerItemOutputPullDelegate : ObjectProtocol {
  @available(tvOS 6.0, *)
  optional func outputMediaDataWillChange(sender: AVPlayerItemOutput)
  @available(tvOS 6.0, *)
  optional func outputSequenceWasFlushed(output: AVPlayerItemOutput)
}
@available(tvOS 7.0, *)
class AVPlayerItemLegibleOutput : AVPlayerItemOutput {
  func setDelegate(delegate: AVPlayerItemLegibleOutputPushDelegate?, queue delegateQueue: dispatch_queue_t?)
  weak var delegate: @sil_weak AVPlayerItemLegibleOutputPushDelegate? { get }
  var delegateQueue: dispatch_queue_t? { get }
  var advanceIntervalForDelegateInvocation: TimeInterval
  init()
}
extension AVPlayerItemLegibleOutput {
  init(mediaSubtypesForNativeRepresentation subtypes: [Number])
}
extension AVPlayerItemLegibleOutput {
  var textStylingResolution: String
}
@available(tvOS 7.0, *)
let AVPlayerItemLegibleOutputTextStylingResolutionDefault: String
@available(tvOS 7.0, *)
let AVPlayerItemLegibleOutputTextStylingResolutionSourceAndRulesOnly: String
protocol AVPlayerItemLegibleOutputPushDelegate : AVPlayerItemOutputPushDelegate {
  @available(tvOS 7.0, *)
  optional func legibleOutput(output: AVPlayerItemLegibleOutput, didOutputAttributedStrings strings: [AttributedString], nativeSampleBuffers nativeSamples: [AnyObject], forItemTime itemTime: CMTime)
}
protocol AVPlayerItemOutputPushDelegate : ObjectProtocol {
  @available(tvOS 6.0, *)
  optional func outputSequenceWasFlushed(output: AVPlayerItemOutput)
}
@available(tvOS 8.0, *)
class AVPlayerItemMetadataOutput : AVPlayerItemOutput {
  init(identifiers: [String]?)
  func setDelegate(delegate: AVPlayerItemMetadataOutputPushDelegate?, queue delegateQueue: dispatch_queue_t?)
  weak var delegate: @sil_weak AVPlayerItemMetadataOutputPushDelegate? { get }
  var delegateQueue: dispatch_queue_t? { get }
  var advanceIntervalForDelegateInvocation: TimeInterval
  convenience init()
}
protocol AVPlayerItemMetadataOutputPushDelegate : AVPlayerItemOutputPushDelegate {
  @available(tvOS 8.0, *)
  optional func metadataOutput(output: AVPlayerItemMetadataOutput, didOutputTimedMetadataGroups groups: [AVTimedMetadataGroup], from track: AVPlayerItemTrack)
}
