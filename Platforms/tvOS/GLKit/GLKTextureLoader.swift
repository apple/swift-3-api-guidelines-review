
@available(tvOS 5.0, *)
let GLKTextureLoaderApplyPremultiplication: String
@available(tvOS 5.0, *)
let GLKTextureLoaderGenerateMipmaps: String
@available(tvOS 5.0, *)
let GLKTextureLoaderOriginBottomLeft: String
@available(tvOS 5.0, *)
let GLKTextureLoaderGrayscaleAsAlpha: String
@available(tvOS 7.0, *)
let GLKTextureLoaderSRGB: String
@available(tvOS 5.0, *)
let GLKTextureLoaderErrorDomain: String
@available(tvOS 5.0, *)
let GLKTextureLoaderErrorKey: String
@available(tvOS 5.0, *)
let GLKTextureLoaderGLErrorKey: String
@available(tvOS 5.0, *)
enum GLKTextureLoaderError : GLuint {
  init?(rawValue: GLuint)
  var rawValue: GLuint { get }
  case fileOrURLNotFound
  case invalidNSData
  case invalidCGImage
  case unknownPathType
  case unknownFileType
  case pvrAtlasUnsupported
  case cubeMapInvalidNumFiles
  case compressedTextureUpload
  case uncompressedTextureUpload
  case unsupportedCubeMapDimensions
  case unsupportedBitDepth
  case unsupportedPVRFormat
  case dataPreprocessingFailure
  case mipmapUnsupported
  case unsupportedOrientation
  case reorientationFailure
  case alphaPremultiplicationFailure
  case invalidEAGLContext
  case incompatibleFormatSRGB
}
@available(tvOS 5.0, *)
enum GLKTextureInfoAlphaState : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case none
  case nonPremultiplied
  case premultiplied
}
@available(tvOS 5.0, *)
enum GLKTextureInfoOrigin : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case unknown
  case topLeft
  case bottomLeft
}
@available(tvOS 5.0, *)
class GLKTextureInfo : Object, Copying {
  var name: GLuint { get }
  var target: GLenum { get }
  var width: GLuint { get }
  var height: GLuint { get }
  var alphaState: GLKTextureInfoAlphaState { get }
  var textureOrigin: GLKTextureInfoOrigin { get }
  var containsMipmaps: Bool { get }
  init()
  @available(tvOS 5.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
typealias GLKTextureLoaderCallback = (GLKTextureInfo?, Error?) -> Void
@available(tvOS 5.0, *)
class GLKTextureLoader : Object {
  class func texture(withContentsOfFile path: String, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func texture(withContentsOf url: URL, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func texture(withContentsOf data: Data, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func texture(with cgImage: CGImage, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func cubeMap(withContentsOfFiles paths: [AnyObject], options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func cubeMap(withContentsOfFile path: String, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func cubeMap(withContentsOf url: URL, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  init(sharegroup: EAGLSharegroup)
  func texture(withContentsOfFile path: String, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func texture(withContentsOf url: URL, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func texture(withContentsOf data: Data, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func texture(with cgImage: CGImage, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMap(withContentsOfFiles paths: [AnyObject], options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMap(withContentsOfFile path: String, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMap(withContentsOf url: URL, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  init()
}
