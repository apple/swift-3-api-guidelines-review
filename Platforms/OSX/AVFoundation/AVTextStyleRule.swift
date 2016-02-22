
@available(OSX 10.9, *)
class AVTextStyleRule : NSObject, NSCopying {
  class func propertyList(for textStyleRules: [AVTextStyleRule]) -> AnyObject
  class func textStyleRules(fromPropertyList plist: AnyObject) -> [AVTextStyleRule]?
  convenience init?(textMarkupAttributes: [String : AnyObject] = [:])
  init?(textMarkupAttributes: [String : AnyObject] = [:], textSelector: String?)
  var textMarkupAttributes: [String : AnyObject] { get }
  var textSelector: String? { get }
  @available(OSX 10.9, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
