
@available(watchOS 2.0, *)
class CNLabeledValue : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var label: String { get }
  @NSCopying var value: protocol<NSCopying, NSSecureCoding> { get }
  init(label: String?, value: protocol<NSCopying, NSSecureCoding>)
  func labeledValueBySettingLabel(label: String?) -> Self
  func labeledValueBySettingValue(value: protocol<NSCopying, NSSecureCoding>) -> Self
  func labeledValueBySettingLabel(label: String?, value: protocol<NSCopying, NSSecureCoding>) -> Self
  class func localizedStringForLabel(label: String) -> String
  init()
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
