
@available(tvOS 6.0, *)
class AVTextStyleRule : NSObject, NSCopying {
  class func propertyList(for textStyleRules: [AVTextStyleRule]) -> AnyObject
  class func textStyleRules(fromPropertyList plist: AnyObject) -> [AVTextStyleRule]?
  convenience init?(textMarkupAttributes textMarkupAttributes: [String : AnyObject] = [:])
  init?(textMarkupAttributes textMarkupAttributes: [String : AnyObject] = [:], textSelector textSelector: String?)
  var textMarkupAttributes: [String : AnyObject] { get }
  var textSelector: String? { get }
  @available(tvOS 6.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
