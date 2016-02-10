
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
class NSColorSpace : Object, SecureCoding {
  init?(iccProfileData iccData: Data)
  var iccProfileData: Data? { get }
  init?(colorSyncProfile prof: UnsafeMutablePointer<Void>)
  var colorSyncProfile: UnsafeMutablePointer<Void> { get }
  @available(OSX 10.5, *)
  init?(cgColorSpace: CGColorSpace)
  @available(OSX 10.5, *)
  var cgColorSpace: CGColorSpace? { get }
  var numberOfColorComponents: Int { get }
  var colorSpaceModel: NSColorSpaceModel { get }
  var localizedName: String? { get }
  class func genericRGB() -> NSColorSpace
  class func genericGray() -> NSColorSpace
  class func genericCMYK() -> NSColorSpace
  class func deviceRGB() -> NSColorSpace
  class func deviceGray() -> NSColorSpace
  class func deviceCMYK() -> NSColorSpace
  @available(OSX 10.5, *)
  class func sRGB() -> NSColorSpace
  @available(OSX 10.6, *)
  class func genericGamma22Gray() -> NSColorSpace
  @available(OSX 10.5, *)
  class func adobeRGB1998() -> NSColorSpace
  @available(OSX 10.6, *)
  class func availableColorSpaces(withModel model: NSColorSpaceModel) -> [NSColorSpace]
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
