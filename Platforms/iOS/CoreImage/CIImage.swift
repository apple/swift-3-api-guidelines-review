
@available(iOS 5.0, *)
class CIImage : NSObject, NSSecureCoding, NSCopying {
  class func emptyImage() -> CIImage
  init(CGImage image: CGImage)
  init(CGImage image: CGImage, options: [String : AnyObject]?)
  init?(data: NSData)
  init?(data: NSData, options: [String : AnyObject]?)
  init(bitmapData data: NSData, bytesPerRow: Int, size: CGSize, format: CIFormat, colorSpace: CGColorSpace?)
  @available(iOS 6.0, *)
  init(texture name: UInt32, size: CGSize, flipped: Bool, colorSpace: CGColorSpace?)
  @available(iOS 9.0, *)
  init(MTLTexture texture: MTLTexture, options: [String : AnyObject]?)
  init?(contentsOfURL url: NSURL)
  init?(contentsOfURL url: NSURL, options: [String : AnyObject]?)
  @available(iOS 9.0, *)
  init(CVImageBuffer imageBuffer: CVImageBuffer)
  @available(iOS 9.0, *)
  init(CVImageBuffer imageBuffer: CVImageBuffer, options: [String : AnyObject]?)
  @available(iOS 5.0, *)
  init(CVPixelBuffer pixelBuffer: CVPixelBuffer)
  @available(iOS 5.0, *)
  init(CVPixelBuffer pixelBuffer: CVPixelBuffer, options: [String : AnyObject]?)
  init(color: CIColor)
  func imageByApplyingTransform(matrix: CGAffineTransform) -> CIImage
  @available(iOS 8.0, *)
  func imageByApplyingOrientation(orientation: Int32) -> CIImage
  @available(iOS 8.0, *)
  func imageTransformForOrientation(orientation: Int32) -> CGAffineTransform
  @available(iOS 8.0, *)
  func imageByCompositingOverImage(dest: CIImage) -> CIImage
  func imageByCroppingToRect(rect: CGRect) -> CIImage
  @available(iOS 8.0, *)
  func imageByClampingToExtent() -> CIImage
  @available(iOS 8.0, *)
  func imageByApplyingFilter(filterName: String, withInputParameters params: [String : AnyObject]?) -> CIImage
  var extent: CGRect { get }
  @available(iOS 5.0, *)
  var properties: [String : AnyObject] { get }
  @available(iOS 9.0, *)
  var url: NSURL? { get }
  @available(iOS 9.0, *)
  var colorSpace: CGColorSpace? { get }
  @available(iOS 6.0, *)
  func regionOfInterestForImage(image: CIImage, inRect rect: CGRect) -> CGRect
  init()
  @available(iOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 5.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 5.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
typealias CIFormat = Int32
@available(iOS 6.0, *)
var kCIFormatARGB8: CIFormat
var kCIFormatBGRA8: CIFormat
var kCIFormatRGBA8: CIFormat
@available(iOS 9.0, *)
var kCIFormatABGR8: CIFormat
@available(iOS 7.0, *)
var kCIFormatRGBAf: CIFormat
@available(iOS 6.0, *)
var kCIFormatRGBAh: CIFormat
@available(iOS 9.0, *)
var kCIFormatA8: CIFormat
@available(iOS 9.0, *)
var kCIFormatA16: CIFormat
@available(iOS 9.0, *)
var kCIFormatAh: CIFormat
@available(iOS 9.0, *)
var kCIFormatAf: CIFormat
@available(iOS 9.0, *)
var kCIFormatR8: CIFormat
@available(iOS 9.0, *)
var kCIFormatR16: CIFormat
@available(iOS 9.0, *)
var kCIFormatRh: CIFormat
@available(iOS 9.0, *)
var kCIFormatRf: CIFormat
@available(iOS 9.0, *)
var kCIFormatRG8: CIFormat
@available(iOS 9.0, *)
var kCIFormatRG16: CIFormat
@available(iOS 9.0, *)
var kCIFormatRGh: CIFormat
@available(iOS 9.0, *)
var kCIFormatRGf: CIFormat
let kCIImageColorSpace: String
@available(iOS 5.0, *)
let kCIImageProperties: String
extension CIImage {
  @available(iOS 5.0, *)
  func autoAdjustmentFiltersWithOptions(options: [String : AnyObject]?) -> [CIFilter]
}
@available(iOS 5.0, *)
let kCIImageAutoAdjustEnhance: String
@available(iOS 5.0, *)
let kCIImageAutoAdjustRedEye: String
@available(iOS 5.0, *)
let kCIImageAutoAdjustFeatures: String
@available(iOS 8.0, *)
let kCIImageAutoAdjustCrop: String
@available(iOS 8.0, *)
let kCIImageAutoAdjustLevel: String
