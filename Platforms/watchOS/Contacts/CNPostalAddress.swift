
@available(watchOS 2.0, *)
class CNPostalAddress : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var street: String { get }
  var city: String { get }
  var state: String { get }
  var postalCode: String { get }
  var country: String { get }
  var isoCountryCode: String { get }
  class func localizedString(forKey key: String) -> String
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
