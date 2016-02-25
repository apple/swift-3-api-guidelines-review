
@available(iOS 9.0, *)
class CNPostalAddress : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var street: String { get }
  var city: String { get }
  var state: String { get }
  var postalCode: String { get }
  var country: String { get }
  var isoCountryCode: String { get }
  class func localizedString(forKey key: String) -> String
  @available(iOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: NSCoder)
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
