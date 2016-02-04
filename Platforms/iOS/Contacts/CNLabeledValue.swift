
@available(iOS 9.0, *)
class CNLabeledValue : Object, Copying, SecureCoding {
  var identifier: String { get }
  var label: String { get }
  @NSCopying var value: protocol<Copying, SecureCoding> { get }
  init(label: String?, value: protocol<Copying, SecureCoding>)
  func bySettingLabel(label: String?) -> Self
  func bySettingValue(value: protocol<Copying, SecureCoding>) -> Self
  func bySettingLabel(label: String?, value: protocol<Copying, SecureCoding>) -> Self
  class func localizedStringForLabel(label: String) -> String
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 9.0, *)
let CNLabelHome: String
@available(iOS 9.0, *)
let CNLabelWork: String
@available(iOS 9.0, *)
let CNLabelOther: String
@available(iOS 9.0, *)
let CNLabelEmailiCloud: String
@available(iOS 9.0, *)
let CNLabelURLAddressHomePage: String
@available(iOS 9.0, *)
let CNLabelDateAnniversary: String
