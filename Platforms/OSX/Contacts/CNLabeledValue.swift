
@available(OSX 10.11, *)
class CNLabeledValue : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var label: String { get }
  @NSCopying var value: protocol<NSCopying, NSSecureCoding> { get }
  init(label label: String?, value value: protocol<NSCopying, NSSecureCoding>)
  func labeledValueBySettingLabel(_ label: String?) -> Self
  func labeledValueBySettingValue(_ value: protocol<NSCopying, NSSecureCoding>) -> Self
  func labeledValueBySettingLabel(_ label: String?, value value: protocol<NSCopying, NSSecureCoding>) -> Self
  class func localizedStringForLabel(_ label: String) -> String
  @available(OSX 10.11, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
