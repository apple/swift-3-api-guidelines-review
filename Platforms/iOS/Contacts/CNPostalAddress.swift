
@available(iOS 9.0, *)
class CNPostalAddress : Object, Copying, MutableCopying, SecureCoding {
  var street: String { get }
  var city: String { get }
  var state: String { get }
  var postalCode: String { get }
  var country: String { get }
  var isoCountryCode: String { get }
  class func localizedString(forKey key: String) -> String
  init()
  @available(iOS 9.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  func mutableCopy(zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
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
