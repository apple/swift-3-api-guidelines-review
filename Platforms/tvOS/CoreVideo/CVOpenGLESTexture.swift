
typealias CVOpenGLESTexture = CVImageBuffer
@available(*, deprecated, renamed="CVOpenGLESTexture")
typealias CVOpenGLESTextureRef = CVOpenGLESTexture
@available(tvOS 5.0, *)
func CVOpenGLESTextureGetTypeID() -> CFTypeID
@available(tvOS 5.0, *)
func CVOpenGLESTextureGetTarget(image: CVOpenGLESTexture) -> GLenum
@available(tvOS 5.0, *)
func CVOpenGLESTextureGetName(image: CVOpenGLESTexture) -> GLuint
@available(tvOS 5.0, *)
func CVOpenGLESTextureIsFlipped(image: CVOpenGLESTexture) -> Bool
@available(tvOS 5.0, *)
func CVOpenGLESTextureGetCleanTexCoords(image: CVOpenGLESTexture, _ lowerLeft: UnsafeMutablePointer<GLfloat>, _ lowerRight: UnsafeMutablePointer<GLfloat>, _ upperRight: UnsafeMutablePointer<GLfloat>, _ upperLeft: UnsafeMutablePointer<GLfloat>)
