
class VTDecompressionSession {
}
typealias VTDecompressionOutputCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, OSStatus, VTDecodeInfoFlags, CVImageBuffer?, CMTime, CMTime) -> Void
struct VTDecompressionOutputCallbackRecord {
  var decompressionOutputCallback: VTDecompressionOutputCallback?
  var decompressionOutputRefCon: UnsafeMutablePointer<Void>
  init()
  init(decompressionOutputCallback: VTDecompressionOutputCallback?, decompressionOutputRefCon: UnsafeMutablePointer<Void>)
}
@available(OSX 10.8, *)
func VTDecompressionSessionCreate(allocator: CFAllocator?, _ videoFormatDescription: CMVideoFormatDescription, _ videoDecoderSpecification: CFDictionary?, _ destinationImageBufferAttributes: CFDictionary?, _ outputCallback: UnsafePointer<VTDecompressionOutputCallbackRecord>, _ decompressionSessionOut: UnsafeMutablePointer<VTDecompressionSession?>) -> OSStatus
@available(OSX 10.8, *)
func VTDecompressionSessionInvalidate(session: VTDecompressionSession)
@available(OSX 10.8, *)
func VTDecompressionSessionGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
func VTDecompressionSessionDecodeFrame(session: VTDecompressionSession, _ sampleBuffer: CMSampleBuffer, _ decodeFlags: VTDecodeFrameFlags, _ sourceFrameRefCon: UnsafeMutablePointer<Void>, _ infoFlagsOut: UnsafeMutablePointer<VTDecodeInfoFlags>) -> OSStatus
typealias VTDecompressionOutputHandler = (OSStatus, VTDecodeInfoFlags, CVImageBuffer?, CMTime, CMTime) -> Void
@available(OSX 10.11, *)
func VTDecompressionSessionDecodeFrameWithOutputHandler(session: VTDecompressionSession, _ sampleBuffer: CMSampleBuffer, _ decodeFlags: VTDecodeFrameFlags, _ infoFlagsOut: UnsafeMutablePointer<VTDecodeInfoFlags>, _ outputHandler: VTDecompressionOutputHandler) -> OSStatus
@available(OSX 10.8, *)
func VTDecompressionSessionFinishDelayedFrames(session: VTDecompressionSession) -> OSStatus
@available(OSX 10.8, *)
func VTDecompressionSessionCanAcceptFormatDescription(session: VTDecompressionSession, _ newFormatDesc: CMFormatDescription) -> Bool
@available(OSX 10.8, *)
func VTDecompressionSessionWaitForAsynchronousFrames(session: VTDecompressionSession) -> OSStatus
@available(OSX 10.8, *)
func VTDecompressionSessionCopyBlackPixelBuffer(session: VTDecompressionSession, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> OSStatus
