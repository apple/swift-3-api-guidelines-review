
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
  case FileOrURLNotFound
  case InvalidNSData
  case InvalidCGImage
  case UnknownPathType
  case UnknownFileType
  case PVRAtlasUnsupported
  case CubeMapInvalidNumFiles
  case CompressedTextureUpload
  case UncompressedTextureUpload
  case UnsupportedCubeMapDimensions
  case UnsupportedBitDepth
  case UnsupportedPVRFormat
  case DataPreprocessingFailure
  case MipmapUnsupported
  case UnsupportedOrientation
  case ReorientationFailure
  case AlphaPremultiplicationFailure
  case InvalidEAGLContext
  case IncompatibleFormatSRGB
}
@available(iOS 5.0, *)
enum GLKTextureInfoAlphaState : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case None
  case NonPremultiplied
  case Premultiplied
}
@available(iOS 5.0, *)
enum GLKTextureInfoOrigin : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case Unknown
  case TopLeft
  case BottomLeft
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
  func copy(zone zone: Zone = nil) -> AnyObject
}
typealias GLKTextureLoaderCallback = (GLKTextureInfo?, Error?) -> Void
@available(iOS 5.0, *)
class GLKTextureLoader : Object {
  class func textureWithContentsOfFile(path: String, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func textureWithContentsOf(url: URL, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func textureWithContentsOf(data: Data, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func textureWith(cgImage: CGImage, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func cubeMapWithContentsOfFiles(paths: [AnyObject], options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func cubeMapWithContentsOfFile(path: String, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func cubeMapWithContentsOf(url: URL, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  init(sharegroup: EAGLSharegroup)
  func textureWithContentsOfFile(path: String, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func textureWithContentsOf(url: URL, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func textureWithContentsOf(data: Data, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func textureWith(cgImage: CGImage, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMapWithContentsOfFiles(paths: [AnyObject], options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMapWithContentsOfFile(path: String, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMapWithContentsOf(url: URL, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  init()
}
