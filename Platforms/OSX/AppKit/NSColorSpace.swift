
enum NSColorSpaceModel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NSUnknownColorSpaceModel
  case NSGrayColorSpaceModel
  case NSRGBColorSpaceModel
  case NSCMYKColorSpaceModel
  case NSLABColorSpaceModel
  case NSDeviceNColorSpaceModel
  case NSIndexedColorSpaceModel
  case NSPatternColorSpaceModel
}
class NSColorSpace : NSObject, NSSecureCoding {
  init?(ICCProfileData iccData: NSData)
  var ICCProfileData: NSData? { get }
  init?(colorSyncProfile prof: UnsafeMutablePointer<Void>)
  var colorSyncProfile: UnsafeMutablePointer<Void> { get }
  @available(OSX 10.5, *)
  init?(CGColorSpace cgColorSpace: CGColorSpace)
  @available(OSX 10.5, *)
  var CGColorSpace: CGColorSpace? { get }
  var numberOfColorComponents: Int { get }
  var colorSpaceModel: NSColorSpaceModel { get }
  var localizedName: String? { get }
  class func genericRGBColorSpace() -> NSColorSpace
  class func genericGrayColorSpace() -> NSColorSpace
  class func genericCMYKColorSpace() -> NSColorSpace
  class func deviceRGBColorSpace() -> NSColorSpace
  class func deviceGrayColorSpace() -> NSColorSpace
  class func deviceCMYKColorSpace() -> NSColorSpace
  @available(OSX 10.5, *)
  class func sRGBColorSpace() -> NSColorSpace
  @available(OSX 10.6, *)
  class func genericGamma22GrayColorSpace() -> NSColorSpace
  @available(OSX 10.5, *)
  class func adobeRGB1998ColorSpace() -> NSColorSpace
  @available(OSX 10.6, *)
  class func availableColorSpacesWithModel(model: NSColorSpaceModel) -> [NSColorSpace]
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
