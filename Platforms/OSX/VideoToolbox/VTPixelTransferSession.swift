
class VTPixelTransferSession {
}
@available(OSX 10.8, *)
func VTPixelTransferSessionCreate(allocator: CFAllocator?, _ pixelTransferSessionOut: UnsafeMutablePointer<VTPixelTransferSession?>) -> OSStatus
@available(OSX 10.8, *)
func VTPixelTransferSessionInvalidate(session: VTPixelTransferSession)
@available(OSX 10.8, *)
func VTPixelTransferSessionGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
func VTPixelTransferSessionTransferImage(session: VTPixelTransferSession, _ sourceBuffer: CVPixelBuffer, _ destinationBuffer: CVPixelBuffer) -> OSStatus
