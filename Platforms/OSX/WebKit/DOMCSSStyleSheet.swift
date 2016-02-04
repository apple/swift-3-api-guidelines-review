
@available(OSX 10.4, *)
class DOMCSSStyleSheet : DOMStyleSheet {
  var ownerRule: DOMCSSRule! { get }
  var cssRules: DOMCSSRuleList! { get }
  @available(OSX 10.6, *)
  var rules: DOMCSSRuleList! { get }
  @available(OSX 10.5, *)
  func insertRule(rule: String!, index: UInt32) -> UInt32
  func deleteRule(index: UInt32)
  @available(OSX 10.6, *)
  func addRule(selector: String!, style: String!, index: UInt32) -> Int32
  @available(OSX 10.6, *)
  func removeRule(index: UInt32)
}
extension DOMCSSStyleSheet {
}
