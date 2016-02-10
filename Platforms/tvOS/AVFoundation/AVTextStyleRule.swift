
@available(tvOS 6.0, *)
class AVTextStyleRule : Object, Copying {
  class func propertyList(for textStyleRules: [AVTextStyleRule]) -> AnyObject
  class func textStyleRules(fromPropertyList plist: AnyObject) -> [AVTextStyleRule]?
  convenience init?(textMarkupAttributes: [String : AnyObject] = [:])
  init?(textMarkupAttributes: [String : AnyObject] = [:], textSelector: String?)
  var textMarkupAttributes: [String : AnyObject] { get }
  var textSelector: String? { get }
  @available(tvOS 6.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
