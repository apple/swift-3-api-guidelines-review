
typealias CVMetalTexture = CVImageBuffer
@available(iOS 8.0, *)
func CVMetalTextureGetTypeID() -> CFTypeID
@available(iOS 8.0, *)
func CVMetalTextureGetTexture(_ image: CVMetalTexture) -> MTLTexture?
@available(iOS 8.0, *)
func CVMetalTextureIsFlipped(_ image: CVMetalTexture) -> Bool
@available(iOS 8.0, *)
func CVMetalTextureGetCleanTexCoords(_ image: CVMetalTexture, _ lowerLeft: UnsafeMutablePointer<Float>, _ lowerRight: UnsafeMutablePointer<Float>, _ upperRight: UnsafeMutablePointer<Float>, _ upperLeft: UnsafeMutablePointer<Float>)
