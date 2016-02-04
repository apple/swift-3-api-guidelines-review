
typealias CVMetalTexture = CVImageBuffer
@available(*, deprecated, renamed="CVMetalTexture")
typealias CVMetalTextureRef = CVMetalTexture
@available(iOS 8.0, *)
func CVMetalTextureGetTypeID() -> CFTypeID
@available(iOS 8.0, *)
func CVMetalTextureGetTexture(image: CVMetalTexture) -> MTLTexture?
@available(iOS 8.0, *)
func CVMetalTextureIsFlipped(image: CVMetalTexture) -> Bool
@available(iOS 8.0, *)
func CVMetalTextureGetCleanTexCoords(image: CVMetalTexture, _ lowerLeft: UnsafeMutablePointer<Float>, _ lowerRight: UnsafeMutablePointer<Float>, _ upperRight: UnsafeMutablePointer<Float>, _ upperLeft: UnsafeMutablePointer<Float>)
