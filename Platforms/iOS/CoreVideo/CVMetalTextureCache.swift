
@available(iOS 8.0, *)
let kCVMetalTextureCacheMaximumTextureAgeKey: CFString
class CVMetalTextureCache {
}
@available(*, deprecated, renamed="CVMetalTextureCache")
typealias CVMetalTextureCacheRef = CVMetalTextureCache
@available(iOS 8.0, *)
func CVMetalTextureCacheGetTypeID() -> CFTypeID
@available(iOS 8.0, *)
func CVMetalTextureCacheCreate(allocator: CFAllocator?, _ cacheAttributes: CFDictionary?, _ metalDevice: MTLDevice, _ textureAttributes: CFDictionary?, _ cacheOut: UnsafeMutablePointer<Unmanaged<CVMetalTextureCache>?>) -> CVReturn
@available(iOS 8.0, *)
func CVMetalTextureCacheCreateTextureFromImage(allocator: CFAllocator?, _ textureCache: CVMetalTextureCache, _ sourceImage: CVImageBuffer, _ textureAttributes: CFDictionary?, _ pixelFormat: MTLPixelFormat, _ width: Int, _ height: Int, _ planeIndex: Int, _ textureOut: UnsafeMutablePointer<Unmanaged<CVMetalTexture>?>) -> CVReturn
@available(iOS 8.0, *)
func CVMetalTextureCacheFlush(textureCache: CVMetalTextureCache, _ options: CVOptionFlags)
