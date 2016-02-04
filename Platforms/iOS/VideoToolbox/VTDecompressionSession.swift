
class VTDecompressionSession {
}
typealias VTDecompressionOutputCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, OSStatus, VTDecodeInfoFlags, CVImageBuffer?, CMTime, CMTime) -> Void
struct VTDecompressionOutputCallbackRecord {
  var decompressionOutputCallback: VTDecompressionOutputCallback?
  var decompressionOutputRefCon: UnsafeMutablePointer<Void>
  init()
  init(decompressionOutputCallback: VTDecompressionOutputCallback?, decompressionOutputRefCon: UnsafeMutablePointer<Void>)
}
@available(iOS 8.0, *)
func VTDecompressionSessionCreate(allocator: CFAllocator?, _ videoFormatDescription: CMVideoFormatDescription, _ videoDecoderSpecification: CFDictionary?, _ destinationImageBufferAttributes: CFDictionary?, _ outputCallback: UnsafePointer<VTDecompressionOutputCallbackRecord>, _ decompressionSessionOut: UnsafeMutablePointer<VTDecompressionSession?>) -> OSStatus
@available(iOS 8.0, *)
func VTDecompressionSessionInvalidate(session: VTDecompressionSession)
@available(iOS 8.0, *)
func VTDecompressionSessionGetTypeID() -> CFTypeID
@available(iOS 8.0, *)
func VTDecompressionSessionDecodeFrame(session: VTDecompressionSession, _ sampleBuffer: CMSampleBuffer, _ decodeFlags: VTDecodeFrameFlags, _ sourceFrameRefCon: UnsafeMutablePointer<Void>, _ infoFlagsOut: UnsafeMutablePointer<VTDecodeInfoFlags>) -> OSStatus
typealias VTDecompressionOutputHandler = (OSStatus, VTDecodeInfoFlags, CVImageBuffer?, CMTime, CMTime) -> Void
@available(iOS 9.0, *)
func VTDecompressionSessionDecodeFrameWithOutputHandler(session: VTDecompressionSession, _ sampleBuffer: CMSampleBuffer, _ decodeFlags: VTDecodeFrameFlags, _ infoFlagsOut: UnsafeMutablePointer<VTDecodeInfoFlags>, _ outputHandler: VTDecompressionOutputHandler) -> OSStatus
@available(iOS 8.0, *)
func VTDecompressionSessionFinishDelayedFrames(session: VTDecompressionSession) -> OSStatus
@available(iOS 8.0, *)
func VTDecompressionSessionCanAcceptFormatDescription(session: VTDecompressionSession, _ newFormatDesc: CMFormatDescription) -> Bool
@available(iOS 8.0, *)
func VTDecompressionSessionWaitForAsynchronousFrames(session: VTDecompressionSession) -> OSStatus
@available(iOS 8.0, *)
func VTDecompressionSessionCopyBlackPixelBuffer(session: VTDecompressionSession, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> OSStatus
