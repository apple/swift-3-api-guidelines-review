
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
@available(tvOS 5.0, *)
enum GLKTextureInfoAlphaState : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case None
  case NonPremultiplied
  case Premultiplied
}
@available(tvOS 5.0, *)
enum GLKTextureInfoOrigin : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case Unknown
  case TopLeft
  case BottomLeft
}
@available(tvOS 5.0, *)
class GLKTextureInfo : NSObject, NSCopying {
  var name: GLuint { get }
  var target: GLenum { get }
  var width: GLuint { get }
  var height: GLuint { get }
  var alphaState: GLKTextureInfoAlphaState { get }
  var textureOrigin: GLKTextureInfoOrigin { get }
  var containsMipmaps: Bool { get }
  init()
  @available(tvOS 5.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
typealias GLKTextureLoaderCallback = (GLKTextureInfo?, NSError?) -> Void
@available(tvOS 5.0, *)
class GLKTextureLoader : NSObject {
  class func textureWithContentsOfFile(path: String, options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func textureWithContentsOfURL(url: NSURL, options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func textureWithContentsOfData(data: NSData, options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func textureWithCGImage(cgImage: CGImage, options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func cubeMapWithContentsOfFiles(paths: [AnyObject], options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func cubeMapWithContentsOfFile(path: String, options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func cubeMapWithContentsOfURL(url: NSURL, options: [String : NSNumber]?) throws -> GLKTextureInfo
  init(sharegroup: EAGLSharegroup)
  func textureWithContentsOfFile(path: String, options: [String : NSNumber]?, queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func textureWithContentsOfURL(url: NSURL, options: [String : NSNumber]?, queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func textureWithContentsOfData(data: NSData, options: [String : NSNumber]?, queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func textureWithCGImage(cgImage: CGImage, options: [String : NSNumber]?, queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMapWithContentsOfFiles(paths: [AnyObject], options: [String : NSNumber]?, queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMapWithContentsOfFile(path: String, options: [String : NSNumber]?, queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMapWithContentsOfURL(url: NSURL, options: [String : NSNumber]?, queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  init()
}
