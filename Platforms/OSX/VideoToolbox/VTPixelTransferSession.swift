
class VTPixelTransferSession {
}
@available(OSX 10.8, *)
func VTPixelTransferSessionCreate(_ allocator: CFAllocator?, _ pixelTransferSessionOut: UnsafeMutablePointer<VTPixelTransferSession?>) -> OSStatus
@available(OSX 10.8, *)
func VTPixelTransferSessionInvalidate(_ session: VTPixelTransferSession)
@available(OSX 10.8, *)
func VTPixelTransferSessionGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
func VTPixelTransferSessionTransferImage(_ session: VTPixelTransferSession, _ sourceBuffer: CVPixelBuffer, _ destinationBuffer: CVPixelBuffer) -> OSStatus
