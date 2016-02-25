
@available(iOS 9.0, *)
class CNLabeledValue : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var label: String { get }
  @NSCopying var value: protocol<NSCopying, NSSecureCoding> { get }
  init(label label: String?, value value: protocol<NSCopying, NSSecureCoding>)
  func labeledValueBySettingLabel(_ label: String?) -> Self
  func labeledValueBySettingValue(_ value: protocol<NSCopying, NSSecureCoding>) -> Self
  func labeledValueBySettingLabel(_ label: String?, value value: protocol<NSCopying, NSSecureCoding>) -> Self
  class func localizedStringForLabel(_ label: String) -> String
  @available(iOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
