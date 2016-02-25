
@available(OSX 10.11, *)
class CNPostalAddress : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var street: String { get }
  var city: String { get }
  var state: String { get }
  var postalCode: String { get }
  var country: String { get }
  var ISOCountryCode: String { get }
  class func localizedStringForKey(_ key: String) -> String
  @available(OSX 10.11, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.11, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWithCoder(_ aCoder: NSCoder)
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
