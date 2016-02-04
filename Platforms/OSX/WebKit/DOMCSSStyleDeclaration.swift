
@available(OSX 10.4, *)
class DOMCSSStyleDeclaration : DOMObject {
  var cssText: String!
  var length: UInt32 { get }
  var parentRule: DOMCSSRule! { get }
  func getPropertyValue(propertyName: String!) -> String!
  func getPropertyCSSValue(propertyName: String!) -> DOMCSSValue!
  func removeProperty(propertyName: String!) -> String!
  func getPropertyPriority(propertyName: String!) -> String!
  @available(OSX 10.5, *)
  func setProperty(propertyName: String!, value: String!, priority: String!)
  func item(index: UInt32) -> String!
  @available(OSX 10.5, *)
  func isPropertyImplicit(propertyName: String!) -> Bool
}
extension DOMCSSStyleDeclaration {
}
