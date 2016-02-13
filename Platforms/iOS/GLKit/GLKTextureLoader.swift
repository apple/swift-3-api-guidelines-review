
@available(iOS 5.0, *)
let GLKTextureLoaderApplyPremultiplication: String
@available(iOS 5.0, *)
let GLKTextureLoaderGenerateMipmaps: String
@available(iOS 5.0, *)
let GLKTextureLoaderOriginBottomLeft: String
@available(iOS 5.0, *)
let GLKTextureLoaderGrayscaleAsAlpha: String
@available(iOS 7.0, *)
let GLKTextureLoaderSRGB: String
@available(iOS 5.0, *)
let GLKTextureLoaderErrorDomain: String
@available(iOS 5.0, *)
let GLKTextureLoaderErrorKey: String
@available(iOS 5.0, *)
let GLKTextureLoaderGLErrorKey: String
@available(iOS 5.0, *)
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
@available(iOS 5.0, *)
enum GLKTextureInfoAlphaState : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case none
  case nonPremultiplied
  case premultiplied
}
@available(iOS 5.0, *)
enum GLKTextureInfoOrigin : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case unknown
  case topLeft
  case bottomLeft
}
@available(iOS 5.0, *)
class GLKTextureInfo : Object, Copying {
  var name: GLuint { get }
  var target: GLenum { get }
  var width: GLuint { get }
  var height: GLuint { get }
  var alphaState: GLKTextureInfoAlphaState { get }
  var textureOrigin: GLKTextureInfoOrigin { get }
  var containsMipmaps: Bool { get }
  init()
  @available(iOS 5.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
typealias GLKTextureLoaderCallback = (GLKTextureInfo?, Error?) -> Void
@available(iOS 5.0, *)
class GLKTextureLoader : Object {
  class func texture(contentsOfFile path: String, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func texture(contentsOf url: URL, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func texture(contentsOf data: Data, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func texture(cgImage: CGImage, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func cubeMap(contentsOfFiles paths: [AnyObject], options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func cubeMap(contentsOfFile path: String, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func cubeMap(contentsOf url: URL, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  init(sharegroup: EAGLSharegroup)
  func texture(contentsOfFile path: String, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func texture(contentsOf url: URL, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func texture(contentsOf data: Data, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func texture(cgImage: CGImage, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMap(contentsOfFiles paths: [AnyObject], options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMap(contentsOfFile path: String, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMap(contentsOf url: URL, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  init()
}
