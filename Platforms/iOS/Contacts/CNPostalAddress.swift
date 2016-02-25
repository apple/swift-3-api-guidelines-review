
@available(iOS 9.0, *)
class CNPostalAddress : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var street: String { get }
  var city: String { get }
  var state: String { get }
  var postalCode: String { get }
  var country: String { get }
  var ISOCountryCode: String { get }
  class func localizedStringForKey(_ key: String) -> String
  @available(iOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
let CNPostalAddressStreetKey: String
@available(iOS 9.0, *)
let CNPostalAddressCityKey: String
@available(iOS 9.0, *)
let CNPostalAddressStateKey: String
@available(iOS 9.0, *)
let CNPostalAddressPostalCodeKey: String
@available(iOS 9.0, *)
let CNPostalAddressCountryKey: String
@available(iOS 9.0, *)
let CNPostalAddressISOCountryCodeKey: String
