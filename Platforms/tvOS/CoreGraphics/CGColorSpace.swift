
class CGColorSpace {
}
enum CGColorRenderingIntent : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case renderingIntentDefault
  case renderingIntentAbsoluteColorimetric
  case renderingIntentRelativeColorimetric
  case renderingIntentPerceptual
  case renderingIntentSaturation
}
enum CGColorSpaceModel : Int32 {
  init?(rawValue: Int32)
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
@available(tvOS 9.0, *)
let kCGColorSpaceGenericGray: CFString
@available(tvOS 9.0, *)
let kCGColorSpaceGenericRGB: CFString
@available(tvOS 8.0, *)
let kCGColorSpaceGenericCMYK: CFString
@available(tvOS 9.0, *)
let kCGColorSpaceGenericRGBLinear: CFString
@available(tvOS 8.0, *)
let kCGColorSpaceAdobeRGB1998: CFString
@available(tvOS 8.0, *)
let kCGColorSpaceSRGB: CFString
@available(tvOS 8.0, *)
let kCGColorSpaceGenericGrayGamma2_2: CFString
@available(tvOS 9.0, *)
let kCGColorSpaceGenericXYZ: CFString
@available(tvOS 9.0, *)
let kCGColorSpaceACESCGLinear: CFString
@available(tvOS 9.0, *)
let kCGColorSpaceITUR_709: CFString
@available(tvOS 9.0, *)
let kCGColorSpaceITUR_2020: CFString
@available(tvOS 9.0, *)
let kCGColorSpaceROMMRGB: CFString
@available(tvOS 2.0, *)
func CGColorSpaceCreateDeviceGray() -> CGColorSpace?
@available(tvOS 2.0, *)
func CGColorSpaceCreateDeviceRGB() -> CGColorSpace?
@available(tvOS 2.0, *)
func CGColorSpaceCreateDeviceCMYK() -> CGColorSpace?
@available(tvOS 2.0, *)
func CGColorSpaceCreateCalibratedGray(whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ gamma: CGFloat) -> CGColorSpace?
@available(tvOS 2.0, *)
func CGColorSpaceCreateCalibratedRGB(whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ gamma: UnsafePointer<CGFloat>, _ matrix: UnsafePointer<CGFloat>) -> CGColorSpace?
@available(tvOS 2.0, *)
func CGColorSpaceCreateLab(whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ range: UnsafePointer<CGFloat>) -> CGColorSpace?
@available(tvOS 2.0, *)
func CGColorSpaceCreateWithICCProfile(data: CFData?) -> CGColorSpace?
@available(tvOS 2.0, *)
func CGColorSpaceCreateICCBased(nComponents: Int, _ range: UnsafePointer<CGFloat>, _ profile: CGDataProvider?, _ alternate: CGColorSpace?) -> CGColorSpace?
@available(tvOS 2.0, *)
func CGColorSpaceCreateIndexed(baseSpace: CGColorSpace?, _ lastIndex: Int, _ colorTable: UnsafePointer<UInt8>) -> CGColorSpace?
@available(tvOS 2.0, *)
func CGColorSpaceCreatePattern(baseSpace: CGColorSpace?) -> CGColorSpace?
@available(tvOS 9.0, *)
func CGColorSpaceCreateWithPlatformColorSpace(ref: UnsafePointer<Void>) -> CGColorSpace?
@available(tvOS 2.0, *)
func CGColorSpaceCreateWithName(name: CFString?) -> CGColorSpace?
@available(tvOS 2.0, *)
func CGColorSpaceGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func CGColorSpaceGetNumberOfComponents(space: CGColorSpace?) -> Int
@available(tvOS 2.0, *)
func CGColorSpaceGetModel(space: CGColorSpace?) -> CGColorSpaceModel
@available(tvOS 2.0, *)
func CGColorSpaceGetBaseColorSpace(space: CGColorSpace?) -> CGColorSpace?
@available(tvOS 2.0, *)
func CGColorSpaceGetColorTableCount(space: CGColorSpace?) -> Int
@available(tvOS 2.0, *)
func CGColorSpaceGetColorTable(space: CGColorSpace?, _ table: UnsafeMutablePointer<UInt8>)
@available(tvOS 6.0, *)
func CGColorSpaceCopyICCProfile(space: CGColorSpace?) -> CFData?
