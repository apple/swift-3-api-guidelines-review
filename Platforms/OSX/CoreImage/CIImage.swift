
@available(OSX 10.4, *)
class CIImage : Object, SecureCoding, Copying {
  class func empty() -> CIImage
  init(cgImage image: CGImage)
  init(cgImage image: CGImage, options: [String : AnyObject]? = [:])
  @available(OSX, introduced=10.4, deprecated=10.11, message="Use initWithCGImage: instead.")
  init(cgLayer layer: CGLayer)
  @available(OSX, introduced=10.4, deprecated=10.11, message="Use initWithCGImage:options instead.")
  init(cgLayer layer: CGLayer, options: [String : AnyObject]? = [:])
  init?(data: Data)
  init?(data: Data, options: [String : AnyObject]? = [:])
  init(bitmapData data: Data, bytesPerRow: Int, size: CGSize, format: CIFormat, colorSpace: CGColorSpace?)
  @available(OSX 10.4, *)
  init(texture name: UInt32, size: CGSize, flipped: Bool, colorSpace: CGColorSpace?)
  @available(OSX 10.9, *)
  init(texture name: UInt32, size: CGSize, flipped: Bool, options: [String : AnyObject]? = [:])
  @available(OSX 10.11, *)
  init(mtlTexture texture: MTLTexture, options: [String : AnyObject]? = [:])
  init?(contentsOf url: URL)
  init?(contentsOf url: URL, options: [String : AnyObject]? = [:])
  @available(OSX 10.6, *)
  init(ioSurface surface: IOSurface)
  @available(OSX 10.6, *)
  init(ioSurface surface: IOSurface, options: [String : AnyObject]? = [:])
  @available(OSX, introduced=10.9, deprecated=10.11)
  init(ioSurface surface: IOSurface, plane: Int, format: CIFormat, options: [String : AnyObject]? = [:])
  @available(OSX 10.4, *)
  init(cvImageBuffer imageBuffer: CVImageBuffer)
  @available(OSX 10.4, *)
  init(cvImageBuffer imageBuffer: CVImageBuffer, options: [String : AnyObject]? = [:])
  @available(OSX 10.11, *)
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer)
  @available(OSX 10.11, *)
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer, options: [String : AnyObject]? = [:])
  init(color: CIColor)
  func applying(matrix: CGAffineTransform) -> CIImage
  @available(OSX 10.10, *)
  func applyingOrientation(orientation: Int32) -> CIImage
  @available(OSX 10.10, *)
  func imageTransformFor(orientation orientation: Int32) -> CGAffineTransform
  @available(OSX 10.4, *)
  func by(compositingOverImage dest: CIImage) -> CIImage
  func byCroppingTo(rect: CGRect) -> CIImage
  @available(OSX 10.10, *)
  func byClampingToExtent() -> CIImage
  @available(OSX 10.10, *)
  func applyingFilter(filterName: String, withInputParameters params: [String : AnyObject]?) -> CIImage
  var extent: CGRect { get }
  @available(OSX 10.8, *)
  var properties: [String : AnyObject] { get }
  @available(OSX 10.4, *)
  var definition: CIFilterShape { get }
  @available(OSX 10.4, *)
  var url: URL? { get }
  @available(OSX 10.4, *)
  var colorSpace: CGColorSpace? { get }
  @available(OSX 10.11, *)
  func regionOfInterestFor(image: CIImage, in rect: CGRect) -> CGRect
  init()
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.4, *)
  func copyWith(zone: Zone = nil) -> AnyObject
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
  func autoAdjustmentFilters(options options: [String : AnyObject]? = [:]) -> [CIFilter]
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
