
@available(watchOS 2.0, *)
class CNLabeledValue : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var label: String { get }
  @NSCopying var value: protocol<NSCopying, NSSecureCoding> { get }
  init(label: String?, value: protocol<NSCopying, NSSecureCoding>)
  func settingLabel(label: String?) -> Self
  func settingValue(value: protocol<NSCopying, NSSecureCoding>) -> Self
  func settingLabel(label: String?, value: protocol<NSCopying, NSSecureCoding>) -> Self
  class func localizedString(forLabel label: String) -> String
  init()
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
