
@available(*, deprecated, renamed="VTCompressionSession")
typealias VTCompressionSessionRef = VTCompressionSession
class VTCompressionSession {
}
typealias VTCompressionOutputCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, OSStatus, VTEncodeInfoFlags, CMSampleBuffer?) -> Void
@available(iOS 8.0, *)
let kVTVideoEncoderSpecification_EncoderID: CFString
@available(iOS 8.0, *)
func VTCompressionSessionCreate(allocator: CFAllocator?, _ width: Int32, _ height: Int32, _ codecType: CMVideoCodecType, _ encoderSpecification: CFDictionary?, _ sourceImageBufferAttributes: CFDictionary?, _ compressedDataAllocator: CFAllocator?, _ outputCallback: VTCompressionOutputCallback?, _ outputCallbackRefCon: UnsafeMutablePointer<Void>, _ compressionSessionOut: UnsafeMutablePointer<VTCompressionSession?>) -> OSStatus
@available(iOS 8.0, *)
func VTCompressionSessionInvalidate(session: VTCompressionSession)
@available(iOS 8.0, *)
func VTCompressionSessionGetTypeID() -> CFTypeID
@available(iOS 8.0, *)
func VTCompressionSessionGetPixelBufferPool(session: VTCompressionSession) -> CVPixelBufferPool?
@available(iOS 8.0, *)
func VTCompressionSessionPrepareToEncodeFrames(session: VTCompressionSession) -> OSStatus
@available(iOS 8.0, *)
func VTCompressionSessionEncodeFrame(session: VTCompressionSession, _ imageBuffer: CVImageBuffer, _ presentationTimeStamp: CMTime, _ duration: CMTime, _ frameProperties: CFDictionary?, _ sourceFrameRefCon: UnsafeMutablePointer<Void>, _ infoFlagsOut: UnsafeMutablePointer<VTEncodeInfoFlags>) -> OSStatus
typealias VTCompressionOutputHandler = (OSStatus, VTEncodeInfoFlags, CMSampleBuffer?) -> Void
@available(iOS 9.0, *)
func VTCompressionSessionEncodeFrameWithOutputHandler(session: VTCompressionSession, _ imageBuffer: CVImageBuffer, _ presentationTimeStamp: CMTime, _ duration: CMTime, _ frameProperties: CFDictionary?, _ infoFlagsOut: UnsafeMutablePointer<VTEncodeInfoFlags>, _ outputHandler: VTCompressionOutputHandler) -> OSStatus
@available(iOS 8.0, *)
func VTCompressionSessionCompleteFrames(session: VTCompressionSession, _ completeUntilPresentationTimeStamp: CMTime) -> OSStatus
struct VTCompressionSessionOptionFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var BeginFinalPass: VTCompressionSessionOptionFlags { get }
}
@available(iOS 8.0, *)
func VTCompressionSessionBeginPass(session: VTCompressionSession, _ beginPassFlags: VTCompressionSessionOptionFlags, _ reserved: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(iOS 8.0, *)
func VTCompressionSessionEndPass(session: VTCompressionSession, _ furtherPassesRequestedOut: UnsafeMutablePointer<DarwinBoolean>, _ reserved: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(iOS 8.0, *)
func VTCompressionSessionGetTimeRangesForNextPass(session: VTCompressionSession, _ timeRangeCountOut: UnsafeMutablePointer<CMItemCount>, _ timeRangeArrayOut: UnsafeMutablePointer<UnsafePointer<CMTimeRange>>) -> OSStatus
