
@available(OSX 10.11, *)
class CNPostalAddress : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var street: String { get }
  var city: String { get }
  var state: String { get }
  var postalCode: String { get }
  var country: String { get }
  var isoCountryCode: String { get }
  class func localizedString(forKey key: String) -> String
  @available(OSX 10.11, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.11, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.11, *)
let CNPostalAddressStreetKey: String
@available(OSX 10.11, *)
let CNPostalAddressCityKey: String
@available(OSX 10.11, *)
let CNPostalAddressStateKey: String
@available(OSX 10.11, *)
let CNPostalAddressPostalCodeKey: String
@available(OSX 10.11, *)
let CNPostalAddressCountryKey: String
@available(OSX 10.11, *)
let CNPostalAddressISOCountryCodeKey: String
