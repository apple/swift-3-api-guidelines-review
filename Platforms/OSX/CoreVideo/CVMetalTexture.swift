
typealias CVMetalTexture = CVImageBuffer
@available(OSX 10.11, *)
func CVMetalTextureGetTypeID() -> CFTypeID
@available(OSX 10.11, *)
func CVMetalTextureGetTexture(image: CVMetalTexture) -> MTLTexture?
@available(OSX 10.11, *)
func CVMetalTextureIsFlipped(image: CVMetalTexture) -> Bool
@available(OSX 10.11, *)
func CVMetalTextureGetCleanTexCoords(image: CVMetalTexture, _ lowerLeft: UnsafeMutablePointer<Float>, _ lowerRight: UnsafeMutablePointer<Float>, _ upperRight: UnsafeMutablePointer<Float>, _ upperLeft: UnsafeMutablePointer<Float>)
