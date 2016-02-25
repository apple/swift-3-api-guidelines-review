
@available(OSX 10.8, *)
let GLKTextureLoaderApplyPremultiplication: String
@available(OSX 10.8, *)
let GLKTextureLoaderGenerateMipmaps: String
@available(OSX 10.8, *)
let GLKTextureLoaderOriginBottomLeft: String
@available(OSX 10.9, *)
let GLKTextureLoaderSRGB: String
@available(OSX 10.8, *)
let GLKTextureLoaderErrorDomain: String
@available(OSX 10.8, *)
let GLKTextureLoaderErrorKey: String
@available(OSX 10.8, *)
let GLKTextureLoaderGLErrorKey: String
@available(OSX 10.8, *)
enum GLKTextureLoaderError : GLuint {
  init?(rawValue rawValue: GLuint)
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
@available(OSX 10.8, *)
enum GLKTextureInfoAlphaState : GLint {
  init?(rawValue rawValue: GLint)
  var rawValue: GLint { get }
  case None
  case NonPremultiplied
  case Premultiplied
}
@available(OSX 10.8, *)
enum GLKTextureInfoOrigin : GLint {
  init?(rawValue rawValue: GLint)
  var rawValue: GLint { get }
  case Unknown
  case TopLeft
  case BottomLeft
}
@available(OSX 10.8, *)
class GLKTextureInfo : NSObject, NSCopying {
  var name: GLuint { get }
  var target: GLenum { get }
  var width: GLuint { get }
  var height: GLuint { get }
  var alphaState: GLKTextureInfoAlphaState { get }
  var textureOrigin: GLKTextureInfoOrigin { get }
  var containsMipmaps: Bool { get }
  @available(OSX 10.8, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
typealias GLKTextureLoaderCallback = (GLKTextureInfo?, NSError?) -> Void
@available(OSX 10.8, *)
class GLKTextureLoader : NSObject {
  class func textureWithContentsOfFile(_ path: String, options options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func textureWithContentsOfURL(_ url: NSURL, options options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func textureWithContentsOfData(_ data: NSData, options options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func textureWithCGImage(_ cgImage: CGImage, options options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func cubeMapWithContentsOfFiles(_ paths: [AnyObject], options options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func cubeMapWithContentsOfFile(_ path: String, options options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func cubeMapWithContentsOfURL(_ url: NSURL, options options: [String : NSNumber]?) throws -> GLKTextureInfo
  init(shareContext context: NSOpenGLContext)
  func textureWithContentsOfFile(_ path: String, options options: [String : NSNumber]?, queue queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func textureWithContentsOfURL(_ url: NSURL, options options: [String : NSNumber]?, queue queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func textureWithContentsOfData(_ data: NSData, options options: [String : NSNumber]?, queue queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func textureWithCGImage(_ cgImage: CGImage, options options: [String : NSNumber]?, queue queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMapWithContentsOfFiles(_ paths: [AnyObject], options options: [String : NSNumber]?, queue queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMapWithContentsOfFile(_ path: String, options options: [String : NSNumber]?, queue queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMapWithContentsOfURL(_ url: NSURL, options options: [String : NSNumber]?, queue queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
}
