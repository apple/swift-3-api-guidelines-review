
@available(OSX 10.4, *)
class DOMCSSMediaRule : DOMCSSRule {
  var media: DOMMediaList! { get }
  var cssRules: DOMCSSRuleList! { get }
  @available(OSX 10.5, *)
  func insertRule(rule: String!, index: UInt32) -> UInt32
  func deleteRule(index: UInt32)
}
extension DOMCSSMediaRule {
}
