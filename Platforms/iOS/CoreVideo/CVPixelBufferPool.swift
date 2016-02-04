
class CVPixelBufferPool {
}
@available(iOS 4.0, *)
let kCVPixelBufferPoolMinimumBufferCountKey: CFString
@available(iOS 4.0, *)
let kCVPixelBufferPoolMaximumBufferAgeKey: CFString
@available(iOS 4.0, *)
func CVPixelBufferPoolGetTypeID() -> CFTypeID
@available(iOS 4.0, *)
func CVPixelBufferPoolCreate(allocator: CFAllocator?, _ poolAttributes: CFDictionary?, _ pixelBufferAttributes: CFDictionary?, _ poolOut: UnsafeMutablePointer<CVPixelBufferPool?>) -> CVReturn
@available(iOS 4.0, *)
func CVPixelBufferPoolGetAttributes(pool: CVPixelBufferPool) -> Unmanaged<CFDictionary>?
@available(iOS 4.0, *)
func CVPixelBufferPoolGetPixelBufferAttributes(pool: CVPixelBufferPool) -> Unmanaged<CFDictionary>?
@available(iOS 4.0, *)
func CVPixelBufferPoolCreatePixelBuffer(allocator: CFAllocator?, _ pixelBufferPool: CVPixelBufferPool, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
@available(iOS 4.0, *)
func CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(allocator: CFAllocator?, _ pixelBufferPool: CVPixelBufferPool, _ auxAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
@available(iOS 4.0, *)
let kCVPixelBufferPoolAllocationThresholdKey: CFString
@available(iOS 4.0, *)
let kCVPixelBufferPoolFreeBufferNotification: CFString
typealias CVPixelBufferPoolFlushFlags = CVOptionFlags
var kCVPixelBufferPoolFlushExcessBuffers: CVPixelBufferPoolFlushFlags { get }
func CVPixelBufferPoolFlush(pool: CVPixelBufferPool, _ options: CVPixelBufferPoolFlushFlags)
