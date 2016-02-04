
@available(OSX 10.4, *)
class DOMCSSMediaRule : DOMCSSRule {
  var media: DOMMediaList! { get }
  var cssRules: DOMCSSRuleList! { get }
  @available(OSX 10.5, *)
  func insert(rule: String!, index: UInt32) -> UInt32
  func delete(index: UInt32)
}
extension DOMCSSMediaRule {
}
