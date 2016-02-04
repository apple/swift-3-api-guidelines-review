
class CVOpenGLBufferPool {
}
@available(*, deprecated, renamed="CVOpenGLBufferPool")
typealias CVOpenGLBufferPoolRef = CVOpenGLBufferPool
@available(OSX 10.4, *)
let kCVOpenGLBufferPoolMinimumBufferCountKey: CFString
@available(OSX 10.4, *)
let kCVOpenGLBufferPoolMaximumBufferAgeKey: CFString
@available(OSX 10.4, *)
func CVOpenGLBufferPoolGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func CVOpenGLBufferPoolCreate(allocator: CFAllocator?, _ poolAttributes: CFDictionary?, _ openGLBufferAttributes: CFDictionary?, _ poolOut: UnsafeMutablePointer<CVOpenGLBufferPool?>) -> CVReturn
@available(OSX 10.4, *)
func CVOpenGLBufferPoolGetAttributes(pool: CVOpenGLBufferPool) -> Unmanaged<CFDictionary>?
@available(OSX 10.4, *)
func CVOpenGLBufferPoolGetOpenGLBufferAttributes(pool: CVOpenGLBufferPool) -> Unmanaged<CFDictionary>?
@available(OSX 10.4, *)
func CVOpenGLBufferPoolCreateOpenGLBuffer(allocator: CFAllocator?, _ openGLBufferPool: CVOpenGLBufferPool, _ openGLBufferOut: UnsafeMutablePointer<CVOpenGLBuffer?>) -> CVReturn
