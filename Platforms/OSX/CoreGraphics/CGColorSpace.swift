
class CGColorSpace {
}
enum CGColorRenderingIntent : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case RenderingIntentDefault
  case RenderingIntentAbsoluteColorimetric
  case RenderingIntentRelativeColorimetric
  case RenderingIntentPerceptual
  case RenderingIntentSaturation
}
enum CGColorSpaceModel : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Unknown
  case Monochrome
  case RGB
  case CMYK
  case Lab
  case DeviceN
  case Indexed
  case Pattern
}
@available(OSX 10.4, *)
let kCGColorSpaceGenericGray: CFString
@available(OSX 10.4, *)
let kCGColorSpaceGenericRGB: CFString
@available(OSX 10.4, *)
let kCGColorSpaceGenericCMYK: CFString
@available(OSX 10.10, *)
let kCGColorSpaceDisplayP3: CFString
@available(OSX 10.5, *)
let kCGColorSpaceGenericRGBLinear: CFString
@available(OSX 10.5, *)
let kCGColorSpaceAdobeRGB1998: CFString
@available(OSX 10.5, *)
let kCGColorSpaceSRGB: CFString
@available(OSX 10.6, *)
let kCGColorSpaceGenericGrayGamma2_2: CFString
@available(OSX 10.11, *)
let kCGColorSpaceGenericXYZ: CFString
@available(OSX 10.11, *)
let kCGColorSpaceACESCGLinear: CFString
@available(OSX 10.11, *)
let kCGColorSpaceITUR_709: CFString
@available(OSX 10.11, *)
let kCGColorSpaceITUR_2020: CFString
@available(OSX 10.11, *)
let kCGColorSpaceROMMRGB: CFString
@available(OSX 10.11, *)
let kCGColorSpaceDCIP3: CFString
@available(OSX 10.0, *)
func CGColorSpaceCreateDeviceGray() -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateDeviceRGB() -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateDeviceCMYK() -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateCalibratedGray(whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ gamma: CGFloat) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateCalibratedRGB(whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ gamma: UnsafePointer<CGFloat>, _ matrix: UnsafePointer<CGFloat>) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateLab(whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ range: UnsafePointer<CGFloat>) -> CGColorSpace?
@available(OSX 10.5, *)
func CGColorSpaceCreateWithICCProfile(data: CFData?) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateICCBased(nComponents: Int, _ range: UnsafePointer<CGFloat>, _ profile: CGDataProvider?, _ alternate: CGColorSpace?) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateIndexed(baseSpace: CGColorSpace?, _ lastIndex: Int, _ colorTable: UnsafePointer<UInt8>) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreatePattern(baseSpace: CGColorSpace?) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateWithPlatformColorSpace(ref: UnsafePointer<Void>) -> CGColorSpace?
@available(OSX 10.2, *)
func CGColorSpaceCreateWithName(name: CFString?) -> CGColorSpace?
@available(OSX 10.6, *)
func CGColorSpaceCopyName(space: CGColorSpace?) -> CFString?
@available(OSX 10.2, *)
func CGColorSpaceGetTypeID() -> CFTypeID
@available(OSX 10.0, *)
func CGColorSpaceGetNumberOfComponents(space: CGColorSpace?) -> Int
@available(OSX 10.5, *)
func CGColorSpaceGetModel(space: CGColorSpace?) -> CGColorSpaceModel
@available(OSX 10.5, *)
func CGColorSpaceGetBaseColorSpace(space: CGColorSpace?) -> CGColorSpace?
@available(OSX 10.5, *)
func CGColorSpaceGetColorTableCount(space: CGColorSpace?) -> Int
@available(OSX 10.5, *)
func CGColorSpaceGetColorTable(space: CGColorSpace?, _ table: UnsafeMutablePointer<UInt8>)
@available(OSX 10.5, *)
func CGColorSpaceCopyICCProfile(space: CGColorSpace?) -> CFData?
