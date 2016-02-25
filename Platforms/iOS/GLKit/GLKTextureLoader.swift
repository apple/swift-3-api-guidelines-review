
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
@available(iOS 5.0, *)
enum GLKTextureInfoAlphaState : GLint {
  init?(rawValue rawValue: GLint)
  var rawValue: GLint { get }
  case None
  case NonPremultiplied
  case Premultiplied
}
@available(iOS 5.0, *)
enum GLKTextureInfoOrigin : GLint {
  init?(rawValue rawValue: GLint)
  var rawValue: GLint { get }
  case Unknown
  case TopLeft
  case BottomLeft
}
@available(iOS 5.0, *)
class GLKTextureInfo : NSObject, NSCopying {
  var name: GLuint { get }
  var target: GLenum { get }
  var width: GLuint { get }
  var height: GLuint { get }
  var alphaState: GLKTextureInfoAlphaState { get }
  var textureOrigin: GLKTextureInfoOrigin { get }
  var containsMipmaps: Bool { get }
  @available(iOS 5.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
typealias GLKTextureLoaderCallback = (GLKTextureInfo?, NSError?) -> Void
@available(iOS 5.0, *)
class GLKTextureLoader : NSObject {
  class func textureWithContentsOfFile(_ path: String, options options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func textureWithContentsOfURL(_ url: NSURL, options options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func textureWithContentsOfData(_ data: NSData, options options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func textureWithCGImage(_ cgImage: CGImage, options options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func cubeMapWithContentsOfFiles(_ paths: [AnyObject], options options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func cubeMapWithContentsOfFile(_ path: String, options options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func cubeMapWithContentsOfURL(_ url: NSURL, options options: [String : NSNumber]?) throws -> GLKTextureInfo
  init(sharegroup sharegroup: EAGLSharegroup)
  func textureWithContentsOfFile(_ path: String, options options: [String : NSNumber]?, queue queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func textureWithContentsOfURL(_ url: NSURL, options options: [String : NSNumber]?, queue queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func textureWithContentsOfData(_ data: NSData, options options: [String : NSNumber]?, queue queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func textureWithCGImage(_ cgImage: CGImage, options options: [String : NSNumber]?, queue queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMapWithContentsOfFiles(_ paths: [AnyObject], options options: [String : NSNumber]?, queue queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMapWithContentsOfFile(_ path: String, options options: [String : NSNumber]?, queue queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMapWithContentsOfURL(_ url: NSURL, options options: [String : NSNumber]?, queue queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
}
