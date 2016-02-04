
@available(watchOS 2.0, *)
class CNPostalAddress : Object, Copying, MutableCopying, SecureCoding {
  var street: String { get }
  var city: String { get }
  var state: String { get }
  var postalCode: String { get }
  var country: String { get }
  var isoCountryCode: String { get }
  class func localizedStringForKey(key: String) -> String
  init()
  @available(watchOS 2.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
let CNPostalAddressStreetKey: String
@available(watchOS 2.0, *)
let CNPostalAddressCityKey: String
@available(watchOS 2.0, *)
let CNPostalAddressStateKey: String
@available(watchOS 2.0, *)
let CNPostalAddressPostalCodeKey: String
@available(watchOS 2.0, *)
let CNPostalAddressCountryKey: String
@available(watchOS 2.0, *)
let CNPostalAddressISOCountryCodeKey: String
