
class CGImage {
}
@available(*, deprecated, renamed="CGImage")
typealias CGImageRef = CGImage
enum CGImageAlphaInfo : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case PremultipliedLast
  case PremultipliedFirst
  case Last
  case First
  case NoneSkipLast
  case NoneSkipFirst
  case Only
}
@available(OSX 10.4, *)
struct CGBitmapInfo : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var AlphaInfoMask: CGBitmapInfo { get }
  static var FloatComponents: CGBitmapInfo { get }
  static var ByteOrderMask: CGBitmapInfo { get }
  static var ByteOrderDefault: CGBitmapInfo { get }
  static var ByteOrder16Little: CGBitmapInfo { get }
  static var ByteOrder32Little: CGBitmapInfo { get }
  static var ByteOrder16Big: CGBitmapInfo { get }
  static var ByteOrder32Big: CGBitmapInfo { get }
}
@available(OSX 10.2, *)
func CGImageGetTypeID() -> CFTypeID
@available(OSX 10.0, *)
func CGImageCreate(width: Int, _ height: Int, _ bitsPerComponent: Int, _ bitsPerPixel: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: CGBitmapInfo, _ provider: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
@available(OSX 10.0, *)
func CGImageMaskCreate(width: Int, _ height: Int, _ bitsPerComponent: Int, _ bitsPerPixel: Int, _ bytesPerRow: Int, _ provider: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool) -> CGImage?
@available(OSX 10.4, *)
func CGImageCreateCopy(image: CGImage?) -> CGImage?
@available(OSX 10.1, *)
func CGImageCreateWithJPEGDataProvider(source: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
@available(OSX 10.2, *)
func CGImageCreateWithPNGDataProvider(source: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
@available(OSX 10.4, *)
func CGImageCreateWithImageInRect(image: CGImage?, _ rect: CGRect) -> CGImage?
@available(OSX 10.4, *)
func CGImageCreateWithMask(image: CGImage?, _ mask: CGImage?) -> CGImage?
@available(OSX 10.4, *)
func CGImageCreateWithMaskingColors(image: CGImage?, _ components: UnsafePointer<CGFloat>) -> CGImage?
@available(OSX 10.3, *)
func CGImageCreateCopyWithColorSpace(image: CGImage?, _ space: CGColorSpace?) -> CGImage?
@available(OSX 10.0, *)
func CGImageIsMask(image: CGImage?) -> Bool
@available(OSX 10.0, *)
func CGImageGetWidth(image: CGImage?) -> Int
@available(OSX 10.0, *)
func CGImageGetHeight(image: CGImage?) -> Int
@available(OSX 10.0, *)
func CGImageGetBitsPerComponent(image: CGImage?) -> Int
@available(OSX 10.0, *)
func CGImageGetBitsPerPixel(image: CGImage?) -> Int
@available(OSX 10.0, *)
func CGImageGetBytesPerRow(image: CGImage?) -> Int
@available(OSX 10.0, *)
func CGImageGetColorSpace(image: CGImage?) -> CGColorSpace?
@available(OSX 10.0, *)
func CGImageGetAlphaInfo(image: CGImage?) -> CGImageAlphaInfo
@available(OSX 10.0, *)
func CGImageGetDataProvider(image: CGImage?) -> CGDataProvider?
@available(OSX 10.0, *)
func CGImageGetDecode(image: CGImage?) -> UnsafePointer<CGFloat>
@available(OSX 10.0, *)
func CGImageGetShouldInterpolate(image: CGImage?) -> Bool
@available(OSX 10.0, *)
func CGImageGetRenderingIntent(image: CGImage?) -> CGColorRenderingIntent
@available(OSX 10.4, *)
func CGImageGetBitmapInfo(image: CGImage?) -> CGBitmapInfo
@available(OSX 10.11, *)
func CGImageGetUTType(image: CGImage?) -> CFString?
