
class CGImage {
}
enum CGImageAlphaInfo : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case premultipliedLast
  case premultipliedFirst
  case last
  case first
  case noneSkipLast
  case noneSkipFirst
  case only
}
@available(OSX 10.4, *)
struct CGBitmapInfo : OptionSetType {
  init(rawValue rawValue: UInt32)
  let rawValue: UInt32
  static var alphaInfoMask: CGBitmapInfo { get }
  static var floatComponents: CGBitmapInfo { get }
  static var byteOrderMask: CGBitmapInfo { get }
  static var byteOrderDefault: CGBitmapInfo { get }
  static var byteOrder16Little: CGBitmapInfo { get }
  static var byteOrder32Little: CGBitmapInfo { get }
  static var byteOrder16Big: CGBitmapInfo { get }
  static var byteOrder32Big: CGBitmapInfo { get }
}
@available(OSX 10.2, *)
func CGImageGetTypeID() -> CFTypeID
@available(OSX 10.0, *)
func CGImageCreate(_ width: Int, _ height: Int, _ bitsPerComponent: Int, _ bitsPerPixel: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: CGBitmapInfo, _ provider: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
@available(OSX 10.0, *)
func CGImageMaskCreate(_ width: Int, _ height: Int, _ bitsPerComponent: Int, _ bitsPerPixel: Int, _ bytesPerRow: Int, _ provider: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool) -> CGImage?
@available(OSX 10.4, *)
func CGImageCreateCopy(_ image: CGImage?) -> CGImage?
@available(OSX 10.1, *)
func CGImageCreateWithJPEGDataProvider(_ source: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
@available(OSX 10.2, *)
func CGImageCreateWithPNGDataProvider(_ source: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
@available(OSX 10.4, *)
func CGImageCreateWithImageInRect(_ image: CGImage?, _ rect: CGRect) -> CGImage?
@available(OSX 10.4, *)
func CGImageCreateWithMask(_ image: CGImage?, _ mask: CGImage?) -> CGImage?
@available(OSX 10.4, *)
func CGImageCreateWithMaskingColors(_ image: CGImage?, _ components: UnsafePointer<CGFloat>) -> CGImage?
@available(OSX 10.3, *)
func CGImageCreateCopyWithColorSpace(_ image: CGImage?, _ space: CGColorSpace?) -> CGImage?
@available(OSX 10.0, *)
func CGImageIsMask(_ image: CGImage?) -> Bool
@available(OSX 10.0, *)
func CGImageGetWidth(_ image: CGImage?) -> Int
@available(OSX 10.0, *)
func CGImageGetHeight(_ image: CGImage?) -> Int
@available(OSX 10.0, *)
func CGImageGetBitsPerComponent(_ image: CGImage?) -> Int
@available(OSX 10.0, *)
func CGImageGetBitsPerPixel(_ image: CGImage?) -> Int
@available(OSX 10.0, *)
func CGImageGetBytesPerRow(_ image: CGImage?) -> Int
@available(OSX 10.0, *)
func CGImageGetColorSpace(_ image: CGImage?) -> CGColorSpace?
@available(OSX 10.0, *)
func CGImageGetAlphaInfo(_ image: CGImage?) -> CGImageAlphaInfo
@available(OSX 10.0, *)
func CGImageGetDataProvider(_ image: CGImage?) -> CGDataProvider?
@available(OSX 10.0, *)
func CGImageGetDecode(_ image: CGImage?) -> UnsafePointer<CGFloat>
@available(OSX 10.0, *)
func CGImageGetShouldInterpolate(_ image: CGImage?) -> Bool
@available(OSX 10.0, *)
func CGImageGetRenderingIntent(_ image: CGImage?) -> CGColorRenderingIntent
@available(OSX 10.4, *)
func CGImageGetBitmapInfo(_ image: CGImage?) -> CGBitmapInfo
@available(OSX 10.11, *)
func CGImageGetUTType(_ image: CGImage?) -> CFString?
