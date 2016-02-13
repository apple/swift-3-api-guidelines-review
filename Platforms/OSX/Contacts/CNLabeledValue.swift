
@available(OSX 10.11, *)
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
  @available(OSX 10.11, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.11, *)
let CNLabelHome: String
@available(OSX 10.11, *)
let CNLabelWork: String
@available(OSX 10.11, *)
let CNLabelOther: String
@available(OSX 10.11, *)
let CNLabelEmailiCloud: String
@available(OSX 10.11, *)
let CNLabelURLAddressHomePage: String
@available(OSX 10.11, *)
let CNLabelDateAnniversary: String
