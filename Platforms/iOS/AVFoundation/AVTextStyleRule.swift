
@available(iOS 6.0, *)
class AVTextStyleRule : NSObject, NSCopying {
  class func propertyListForTextStyleRules(textStyleRules: [AVTextStyleRule]) -> AnyObject
  class func textStyleRulesFromPropertyList(plist: AnyObject) -> [AVTextStyleRule]?
  convenience init?(textMarkupAttributes: [String : AnyObject])
  init?(textMarkupAttributes: [String : AnyObject], textSelector: String?)
  var textMarkupAttributes: [String : AnyObject] { get }
  var textSelector: String? { get }
  @available(iOS 6.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
