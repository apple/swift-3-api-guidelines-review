
typealias CVMetalTexture = CVImageBuffer
@available(*, deprecated, renamed="CVMetalTexture")
typealias CVMetalTextureRef = CVMetalTexture
@available(tvOS 8.0, *)
func CVMetalTextureGetTypeID() -> CFTypeID
@available(tvOS 8.0, *)
func CVMetalTextureGetTexture(image: CVMetalTexture) -> MTLTexture?
@available(tvOS 8.0, *)
func CVMetalTextureIsFlipped(image: CVMetalTexture) -> Bool
@available(tvOS 8.0, *)
func CVMetalTextureGetCleanTexCoords(image: CVMetalTexture, _ lowerLeft: UnsafeMutablePointer<Float>, _ lowerRight: UnsafeMutablePointer<Float>, _ upperRight: UnsafeMutablePointer<Float>, _ upperLeft: UnsafeMutablePointer<Float>)
