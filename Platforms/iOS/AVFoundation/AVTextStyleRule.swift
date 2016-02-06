
@available(iOS 6.0, *)
class AVTextStyleRule : Object, Copying {
  class func propertyListFor(textStyleRules: [AVTextStyleRule]) -> AnyObject
  class func textStyleRulesFrom(propertyList plist: AnyObject) -> [AVTextStyleRule]?
  convenience init?(textMarkupAttributes: [String : AnyObject] = [:])
  init?(textMarkupAttributes: [String : AnyObject] = [:], textSelector: String?)
  var textMarkupAttributes: [String : AnyObject] { get }
  var textSelector: String? { get }
  @available(iOS 6.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
