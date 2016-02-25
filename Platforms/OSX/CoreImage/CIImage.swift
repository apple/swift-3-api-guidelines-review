
@available(OSX 10.4, *)
class CIImage : NSObject, NSSecureCoding, NSCopying {
  class func emptyImage() -> CIImage
  init(CGImage image: CGImage)
  init(CGImage image: CGImage, options options: [String : AnyObject]?)
  @available(OSX, introduced=10.4, deprecated=10.11, message="Use initWithCGImage: instead.")
  init(CGLayer layer: CGLayer)
  @available(OSX, introduced=10.4, deprecated=10.11, message="Use initWithCGImage:options instead.")
  init(CGLayer layer: CGLayer, options options: [String : AnyObject]?)
  init?(data data: NSData)
  init?(data data: NSData, options options: [String : AnyObject]?)
  init(bitmapData data: NSData, bytesPerRow bytesPerRow: Int, size size: CGSize, format format: CIFormat, colorSpace colorSpace: CGColorSpace?)
  @available(OSX 10.4, *)
  init(texture name: UInt32, size size: CGSize, flipped flipped: Bool, colorSpace colorSpace: CGColorSpace?)
  @available(OSX 10.9, *)
  init(texture name: UInt32, size size: CGSize, flipped flipped: Bool, options options: [String : AnyObject]?)
  @available(OSX 10.11, *)
  init(MTLTexture texture: MTLTexture, options options: [String : AnyObject]?)
  init?(contentsOfURL url: NSURL)
  init?(contentsOfURL url: NSURL, options options: [String : AnyObject]?)
  @available(OSX 10.6, *)
  init(IOSurface surface: IOSurface)
  @available(OSX 10.6, *)
  init(IOSurface surface: IOSurface, options options: [String : AnyObject]?)
  @available(OSX, introduced=10.9, deprecated=10.11)
  init(IOSurface surface: IOSurface, plane plane: Int, format format: CIFormat, options options: [String : AnyObject]?)
  @available(OSX 10.4, *)
  init(CVImageBuffer imageBuffer: CVImageBuffer)
  @available(OSX 10.4, *)
  init(CVImageBuffer imageBuffer: CVImageBuffer, options options: [String : AnyObject]?)
  @available(OSX 10.11, *)
  init(CVPixelBuffer pixelBuffer: CVPixelBuffer)
  @available(OSX 10.11, *)
  init(CVPixelBuffer pixelBuffer: CVPixelBuffer, options options: [String : AnyObject]?)
  init(color color: CIColor)
  func imageByApplyingTransform(_ matrix: CGAffineTransform) -> CIImage
  @available(OSX 10.10, *)
  func imageByApplyingOrientation(_ orientation: Int32) -> CIImage
  @available(OSX 10.10, *)
  func imageTransformForOrientation(_ orientation: Int32) -> CGAffineTransform
  @available(OSX 10.4, *)
  func imageByCompositingOverImage(_ dest: CIImage) -> CIImage
  func imageByCroppingToRect(_ rect: CGRect) -> CIImage
  @available(OSX 10.10, *)
  func imageByClampingToExtent() -> CIImage
  @available(OSX 10.10, *)
  func imageByApplyingFilter(_ filterName: String, withInputParameters params: [String : AnyObject]?) -> CIImage
  var extent: CGRect { get }
  @available(OSX 10.8, *)
  var properties: [String : AnyObject] { get }
  @available(OSX 10.4, *)
  var definition: CIFilterShape { get }
  @available(OSX 10.4, *)
  var url: NSURL? { get }
  @available(OSX 10.4, *)
  var colorSpace: CGColorSpace? { get }
  @available(OSX 10.11, *)
  func regionOfInterestForImage(_ image: CIImage, inRect rect: CGRect) -> CGRect
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.4, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
typealias CIFormat = Int32
@available(OSX 10.4, *)
var kCIFormatARGB8: CIFormat
var kCIFormatBGRA8: CIFormat
var kCIFormatRGBA8: CIFormat
@available(OSX 10.11, *)
var kCIFormatABGR8: CIFormat
@available(OSX 10.4, *)
var kCIFormatRGBA16: CIFormat
@available(OSX 10.4, *)
var kCIFormatRGBAf: CIFormat
@available(OSX 10.4, *)
var kCIFormatRGBAh: CIFormat
@available(OSX 10.11, *)
var kCIFormatA8: CIFormat
@available(OSX 10.11, *)
var kCIFormatA16: CIFormat
@available(OSX 10.11, *)
var kCIFormatAh: CIFormat
@available(OSX 10.11, *)
var kCIFormatAf: CIFormat
@available(OSX 10.11, *)
var kCIFormatR8: CIFormat
@available(OSX 10.11, *)
var kCIFormatR16: CIFormat
@available(OSX 10.11, *)
var kCIFormatRh: CIFormat
@available(OSX 10.11, *)
var kCIFormatRf: CIFormat
@available(OSX 10.11, *)
var kCIFormatRG8: CIFormat
@available(OSX 10.11, *)
var kCIFormatRG16: CIFormat
@available(OSX 10.11, *)
var kCIFormatRGh: CIFormat
@available(OSX 10.11, *)
var kCIFormatRGf: CIFormat
let kCIImageColorSpace: String
@available(OSX 10.8, *)
let kCIImageProperties: String
@available(OSX 10.9, *)
let kCIImageTextureTarget: String
@available(OSX 10.9, *)
let kCIImageTextureFormat: String
extension CIImage {
  @available(OSX 10.8, *)
  func autoAdjustmentFiltersWithOptions(_ options: [String : AnyObject]?) -> [CIFilter]
}
@available(OSX 10.8, *)
let kCIImageAutoAdjustEnhance: String
@available(OSX 10.8, *)
let kCIImageAutoAdjustRedEye: String
@available(OSX 10.8, *)
let kCIImageAutoAdjustFeatures: String
@available(OSX 10.10, *)
let kCIImageAutoAdjustCrop: String
@available(OSX 10.10, *)
let kCIImageAutoAdjustLevel: String
