
class CVPixelBufferPool {
}
@available(*, deprecated, renamed="CVPixelBufferPool")
typealias CVPixelBufferPoolRef = CVPixelBufferPool
@available(OSX 10.4, *)
let kCVPixelBufferPoolMinimumBufferCountKey: CFString
@available(OSX 10.4, *)
let kCVPixelBufferPoolMaximumBufferAgeKey: CFString
@available(OSX 10.4, *)
func CVPixelBufferPoolGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func CVPixelBufferPoolCreate(allocator: CFAllocator?, _ poolAttributes: CFDictionary?, _ pixelBufferAttributes: CFDictionary?, _ poolOut: UnsafeMutablePointer<CVPixelBufferPool?>) -> CVReturn
@available(OSX 10.4, *)
func CVPixelBufferPoolGetAttributes(pool: CVPixelBufferPool) -> Unmanaged<CFDictionary>?
@available(OSX 10.4, *)
func CVPixelBufferPoolGetPixelBufferAttributes(pool: CVPixelBufferPool) -> Unmanaged<CFDictionary>?
@available(OSX 10.4, *)
func CVPixelBufferPoolCreatePixelBuffer(allocator: CFAllocator?, _ pixelBufferPool: CVPixelBufferPool, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
@available(OSX 10.7, *)
func CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(allocator: CFAllocator?, _ pixelBufferPool: CVPixelBufferPool, _ auxAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
@available(OSX 10.7, *)
let kCVPixelBufferPoolAllocationThresholdKey: CFString
@available(OSX 10.7, *)
let kCVPixelBufferPoolFreeBufferNotification: CFString
typealias CVPixelBufferPoolFlushFlags = CVOptionFlags
var kCVPixelBufferPoolFlushExcessBuffers: CVPixelBufferPoolFlushFlags { get }
func CVPixelBufferPoolFlush(pool: CVPixelBufferPool, _ options: CVPixelBufferPoolFlushFlags)
