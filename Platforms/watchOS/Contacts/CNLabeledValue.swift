
@available(watchOS 2.0, *)
class CNLabeledValue : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var label: String { get }
  @NSCopying var value: protocol<NSCopying, NSSecureCoding> { get }
  init(label label: String?, value value: protocol<NSCopying, NSSecureCoding>)
  func settingLabel(_ label: String?) -> Self
  func settingValue(_ value: protocol<NSCopying, NSSecureCoding>) -> Self
  func settingLabel(_ label: String?, value value: protocol<NSCopying, NSSecureCoding>) -> Self
  class func localizedString(forLabel label: String) -> String
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
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
