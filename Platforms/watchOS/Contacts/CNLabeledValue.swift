
@available(watchOS 2.0, *)
class CNLabeledValue : Object, Copying, SecureCoding {
  var identifier: String { get }
  var label: String { get }
  @NSCopying var value: protocol<Copying, SecureCoding> { get }
  init(label: String?, value: protocol<Copying, SecureCoding>)
  func settingLabel(label: String?) -> Self
  func settingValue(value: protocol<Copying, SecureCoding>) -> Self
  func settingLabel(label: String?, value: protocol<Copying, SecureCoding>) -> Self
  class func localizedString(forLabel label: String) -> String
  init()
  @available(watchOS 2.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
let CNLabelHome: String
@available(watchOS 2.0, *)
let CNLabelWork: String
@available(watchOS 2.0, *)
let CNLabelOther: String
@available(watchOS 2.0, *)
let CNLabelEmailiCloud: String
@available(watchOS 2.0, *)
let CNLabelURLAddressHomePage: String
@available(watchOS 2.0, *)
let CNLabelDateAnniversary: String
