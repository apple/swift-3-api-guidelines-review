
@available(tvOS 5.0, *)
class CIImage : Object, SecureCoding, Copying {
  class func empty() -> CIImage
  init(cgImage image: CGImage)
  init(cgImage image: CGImage, options: [String : AnyObject]? = [:])
  init?(data: Data)
  init?(data: Data, options: [String : AnyObject]? = [:])
  init(bitmapData data: Data, bytesPerRow: Int, size: CGSize, format: CIFormat, colorSpace: CGColorSpace?)
  @available(tvOS 6.0, *)
  init(texture name: UInt32, size: CGSize, flipped: Bool, colorSpace: CGColorSpace?)
  @available(tvOS 9.0, *)
  init(mtlTexture texture: MTLTexture, options: [String : AnyObject]? = [:])
  init?(contentsOf url: URL)
  init?(contentsOf url: URL, options: [String : AnyObject]? = [:])
  @available(tvOS 9.0, *)
  init(cvImageBuffer imageBuffer: CVImageBuffer)
  @available(tvOS 9.0, *)
  init(cvImageBuffer imageBuffer: CVImageBuffer, options: [String : AnyObject]? = [:])
  @available(tvOS 5.0, *)
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer)
  @available(tvOS 5.0, *)
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer, options: [String : AnyObject]? = [:])
  init(color: CIColor)
  func applying(matrix: CGAffineTransform) -> CIImage
  @available(tvOS 8.0, *)
  func applyingOrientation(orientation: Int32) -> CIImage
  @available(tvOS 8.0, *)
  func imageTransform(forOrientation orientation: Int32) -> CGAffineTransform
  @available(tvOS 8.0, *)
  func compositingOverImage(dest: CIImage) -> CIImage
  func cropping(to rect: CGRect) -> CIImage
  @available(tvOS 8.0, *)
  func clampingToExtent() -> CIImage
  @available(tvOS 8.0, *)
  func applyingFilter(filterName: String, withInputParameters params: [String : AnyObject]?) -> CIImage
  var extent: CGRect { get }
  @available(tvOS 5.0, *)
  var properties: [String : AnyObject] { get }
  @available(tvOS 9.0, *)
  var url: URL? { get }
  @available(tvOS 9.0, *)
  var colorSpace: CGColorSpace? { get }
  @available(tvOS 6.0, *)
  func regionOfInterest(for image: CIImage, in rect: CGRect) -> CGRect
  init()
  @available(tvOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 5.0, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 5.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
typealias CIFormat = Int32
@available(tvOS 6.0, *)
var kCIFormatARGB8: CIFormat
var kCIFormatBGRA8: CIFormat
var kCIFormatRGBA8: CIFormat
@available(tvOS 9.0, *)
var kCIFormatABGR8: CIFormat
@available(tvOS 7.0, *)
var kCIFormatRGBAf: CIFormat
@available(tvOS 6.0, *)
var kCIFormatRGBAh: CIFormat
@available(tvOS 9.0, *)
var kCIFormatA8: CIFormat
@available(tvOS 9.0, *)
var kCIFormatA16: CIFormat
@available(tvOS 9.0, *)
var kCIFormatAh: CIFormat
@available(tvOS 9.0, *)
var kCIFormatAf: CIFormat
@available(tvOS 9.0, *)
var kCIFormatR8: CIFormat
@available(tvOS 9.0, *)
var kCIFormatR16: CIFormat
@available(tvOS 9.0, *)
var kCIFormatRh: CIFormat
@available(tvOS 9.0, *)
var kCIFormatRf: CIFormat
@available(tvOS 9.0, *)
var kCIFormatRG8: CIFormat
@available(tvOS 9.0, *)
var kCIFormatRG16: CIFormat
@available(tvOS 9.0, *)
var kCIFormatRGh: CIFormat
@available(tvOS 9.0, *)
var kCIFormatRGf: CIFormat
let kCIImageColorSpace: String
@available(tvOS 5.0, *)
let kCIImageProperties: String
extension CIImage {
  @available(tvOS 5.0, *)
  func autoAdjustmentFilters(options options: [String : AnyObject]? = [:]) -> [CIFilter]
}
@available(tvOS 5.0, *)
let kCIImageAutoAdjustEnhance: String
@available(tvOS 5.0, *)
let kCIImageAutoAdjustRedEye: String
@available(tvOS 5.0, *)
let kCIImageAutoAdjustFeatures: String
@available(tvOS 8.0, *)
let kCIImageAutoAdjustCrop: String
@available(tvOS 8.0, *)
let kCIImageAutoAdjustLevel: String
