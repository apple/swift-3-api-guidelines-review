
@available(*, deprecated, renamed="VTCompressionSession")
typealias VTCompressionSessionRef = VTCompressionSession
class VTCompressionSession {
}
typealias VTCompressionOutputCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, OSStatus, VTEncodeInfoFlags, CMSampleBuffer?) -> Void
@available(OSX 10.8, *)
let kVTVideoEncoderSpecification_EncoderID: CFString
@available(OSX 10.8, *)
func VTCompressionSessionCreate(allocator: CFAllocator?, _ width: Int32, _ height: Int32, _ codecType: CMVideoCodecType, _ encoderSpecification: CFDictionary?, _ sourceImageBufferAttributes: CFDictionary?, _ compressedDataAllocator: CFAllocator?, _ outputCallback: VTCompressionOutputCallback?, _ outputCallbackRefCon: UnsafeMutablePointer<Void>, _ compressionSessionOut: UnsafeMutablePointer<VTCompressionSession?>) -> OSStatus
@available(OSX 10.8, *)
func VTCompressionSessionInvalidate(session: VTCompressionSession)
@available(OSX 10.8, *)
func VTCompressionSessionGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
func VTCompressionSessionGetPixelBufferPool(session: VTCompressionSession) -> CVPixelBufferPool?
@available(OSX 10.9, *)
func VTCompressionSessionPrepareToEncodeFrames(session: VTCompressionSession) -> OSStatus
@available(OSX 10.8, *)
func VTCompressionSessionEncodeFrame(session: VTCompressionSession, _ imageBuffer: CVImageBuffer, _ presentationTimeStamp: CMTime, _ duration: CMTime, _ frameProperties: CFDictionary?, _ sourceFrameRefCon: UnsafeMutablePointer<Void>, _ infoFlagsOut: UnsafeMutablePointer<VTEncodeInfoFlags>) -> OSStatus
typealias VTCompressionOutputHandler = (OSStatus, VTEncodeInfoFlags, CMSampleBuffer?) -> Void
@available(OSX 10.11, *)
func VTCompressionSessionEncodeFrameWithOutputHandler(session: VTCompressionSession, _ imageBuffer: CVImageBuffer, _ presentationTimeStamp: CMTime, _ duration: CMTime, _ frameProperties: CFDictionary?, _ infoFlagsOut: UnsafeMutablePointer<VTEncodeInfoFlags>, _ outputHandler: VTCompressionOutputHandler) -> OSStatus
@available(OSX 10.8, *)
func VTCompressionSessionCompleteFrames(session: VTCompressionSession, _ completeUntilPresentationTimeStamp: CMTime) -> OSStatus
struct VTCompressionSessionOptionFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var BeginFinalPass: VTCompressionSessionOptionFlags { get }
}
@available(OSX 10.10, *)
func VTCompressionSessionBeginPass(session: VTCompressionSession, _ beginPassFlags: VTCompressionSessionOptionFlags, _ reserved: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.10, *)
func VTCompressionSessionEndPass(session: VTCompressionSession, _ furtherPassesRequestedOut: UnsafeMutablePointer<DarwinBoolean>, _ reserved: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.10, *)
func VTCompressionSessionGetTimeRangesForNextPass(session: VTCompressionSession, _ timeRangeCountOut: UnsafeMutablePointer<CMItemCount>, _ timeRangeArrayOut: UnsafeMutablePointer<UnsafePointer<CMTimeRange>>) -> OSStatus
