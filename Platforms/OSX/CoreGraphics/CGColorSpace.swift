
class CGColorSpace {
}
enum CGColorRenderingIntent : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case renderingIntentDefault
  case renderingIntentAbsoluteColorimetric
  case renderingIntentRelativeColorimetric
  case renderingIntentPerceptual
  case renderingIntentSaturation
}
enum CGColorSpaceModel : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case unknown
  case monochrome
  case RGB
  case CMYK
  case lab
  case deviceN
  case indexed
  case pattern
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
func CGColorSpaceCreateCalibratedGray(_ whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ gamma: CGFloat) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateCalibratedRGB(_ whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ gamma: UnsafePointer<CGFloat>, _ matrix: UnsafePointer<CGFloat>) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateLab(_ whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ range: UnsafePointer<CGFloat>) -> CGColorSpace?
@available(OSX 10.5, *)
func CGColorSpaceCreateWithICCProfile(_ data: CFData?) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateICCBased(_ nComponents: Int, _ range: UnsafePointer<CGFloat>, _ profile: CGDataProvider?, _ alternate: CGColorSpace?) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateIndexed(_ baseSpace: CGColorSpace?, _ lastIndex: Int, _ colorTable: UnsafePointer<UInt8>) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreatePattern(_ baseSpace: CGColorSpace?) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateWithPlatformColorSpace(_ ref: UnsafePointer<Void>) -> CGColorSpace?
@available(OSX 10.2, *)
func CGColorSpaceCreateWithName(_ name: CFString?) -> CGColorSpace?
@available(OSX 10.6, *)
func CGColorSpaceCopyName(_ space: CGColorSpace?) -> CFString?
@available(OSX 10.2, *)
func CGColorSpaceGetTypeID() -> CFTypeID
@available(OSX 10.0, *)
func CGColorSpaceGetNumberOfComponents(_ space: CGColorSpace?) -> Int
@available(OSX 10.5, *)
func CGColorSpaceGetModel(_ space: CGColorSpace?) -> CGColorSpaceModel
@available(OSX 10.5, *)
func CGColorSpaceGetBaseColorSpace(_ space: CGColorSpace?) -> CGColorSpace?
@available(OSX 10.5, *)
func CGColorSpaceGetColorTableCount(_ space: CGColorSpace?) -> Int
@available(OSX 10.5, *)
func CGColorSpaceGetColorTable(_ space: CGColorSpace?, _ table: UnsafeMutablePointer<UInt8>)
@available(OSX 10.5, *)
func CGColorSpaceCopyICCProfile(_ space: CGColorSpace?) -> CFData?
