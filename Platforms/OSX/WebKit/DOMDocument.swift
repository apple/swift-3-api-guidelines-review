
@available(OSX 10.4, *)
class DOMDocument : DOMNode {
  var doctype: DOMDocumentType! { get }
  var implementation: DOMImplementation! { get }
  var documentElement: DOMElement! { get }
  @available(OSX 10.5, *)
  var inputEncoding: String! { get }
  @available(OSX 10.5, *)
  var xmlEncoding: String! { get }
  @available(OSX 10.5, *)
  var xmlVersion: String!
  @available(OSX 10.5, *)
  var xmlStandalone: Bool
  @available(OSX 10.5, *)
  var documentURI: String!
  var defaultView: DOMAbstractView! { get }
  var styleSheets: DOMStyleSheetList! { get }
  var title: String!
  var referrer: String! { get }
  var domain: String! { get }
  var url: String! { get }
  var cookie: String!
  var body: DOMHTMLElement!
  var images: DOMHTMLCollection! { get }
  var applets: DOMHTMLCollection! { get }
  var links: DOMHTMLCollection! { get }
  var forms: DOMHTMLCollection! { get }
  var anchors: DOMHTMLCollection! { get }
  @available(OSX 10.6, *)
  var lastModified: String! { get }
  @available(OSX 10.5, *)
  var charset: String!
  @available(OSX 10.5, *)
  var defaultCharset: String! { get }
  @available(OSX 10.5, *)
  var readyState: String! { get }
  @available(OSX 10.5, *)
  var characterSet: String! { get }
  @available(OSX 10.5, *)
  var preferredStylesheetSet: String! { get }
  @available(OSX 10.5, *)
  var selectedStylesheetSet: String!
  @available(OSX 10.6, *)
  var activeElement: DOMElement! { get }
  func createElement(tagName: String!) -> DOMElement!
  func createDocumentFragment() -> DOMDocumentFragment!
  func createTextNode(data: String!) -> DOMText!
  func createComment(data: String!) -> DOMComment!
  func createCDATASection(data: String!) -> DOMCDATASection!
  @available(OSX 10.5, *)
  func createProcessingInstruction(target: String!, data: String!) -> DOMProcessingInstruction!
  func createAttribute(name: String!) -> DOMAttr!
  func createEntityReference(name: String!) -> DOMEntityReference!
  func getElementsBy(tagName tagname: String!) -> DOMNodeList!
  @available(OSX 10.5, *)
  func importNode(importedNode: DOMNode!, deep: Bool) -> DOMNode!
  @available(OSX 10.5, *)
  func createElementNS(namespaceURI: String!, qualifiedName: String!) -> DOMElement!
  @available(OSX 10.5, *)
  func createAttributeNS(namespaceURI: String!, qualifiedName: String!) -> DOMAttr!
  @available(OSX 10.5, *)
  func getElementsBy(tagNameNS namespaceURI: String!, localName: String!) -> DOMNodeList!
  @available(OSX 10.5, *)
  func adoptNode(source: DOMNode!) -> DOMNode!
  func createEvent(eventType: String!) -> DOMEvent!
  func createRange() -> DOMRange!
  @available(OSX 10.5, *)
  func createNodeIterator(root: DOMNode!, whatToShow: UInt32, filter: DOMNodeFilter!, expandEntityReferences: Bool) -> DOMNodeIterator!
  @available(OSX 10.5, *)
  func createTreeWalker(root: DOMNode!, whatToShow: UInt32, filter: DOMNodeFilter!, expandEntityReferences: Bool) -> DOMTreeWalker!
  @available(OSX 10.5, *)
  func getOverrideStyle(element: DOMElement!, pseudoElement: String!) -> DOMCSSStyleDeclaration!
  @available(OSX 10.5, *)
  func createExpression(expression: String!, resolver: DOMXPathNSResolver!) -> DOMXPathExpression!
  @available(OSX 10.5, *)
  func createNSResolver(nodeResolver: DOMNode!) -> DOMXPathNSResolver!
  @available(OSX 10.5, *)
  func evaluate(expression: String!, contextNode: DOMNode!, resolver: DOMXPathNSResolver!, type: UInt16, in inResult: DOMXPathResult!) -> DOMXPathResult!
  @available(OSX 10.5, *)
  func execCommand(command: String!, userInterface: Bool, value: String!) -> Bool
  @available(OSX 10.5, *)
  func execCommand(command: String!, userInterface: Bool) -> Bool
  @available(OSX 10.5, *)
  func execCommand(command: String!) -> Bool
  @available(OSX 10.5, *)
  func queryCommandEnabled(command: String!) -> Bool
  @available(OSX 10.5, *)
  func queryCommandIndeterm(command: String!) -> Bool
  @available(OSX 10.5, *)
  func queryCommandState(command: String!) -> Bool
  @available(OSX 10.5, *)
  func queryCommandSupported(command: String!) -> Bool
  @available(OSX 10.5, *)
  func queryCommandValue(command: String!) -> String!
  func getElementsBy(name elementName: String!) -> DOMNodeList!
  @available(OSX 10.5, *)
  func elementFrom(point x: Int32, y: Int32) -> DOMElement!
  @available(OSX 10.5, *)
  func createCSSStyleDeclaration() -> DOMCSSStyleDeclaration!
  @available(OSX 10.5, *)
  func getComputedStyle(element: DOMElement!, pseudoElement: String!) -> DOMCSSStyleDeclaration!
  @available(OSX 10.5, *)
  func getMatchedCSSRules(element: DOMElement!, pseudoElement: String!) -> DOMCSSRuleList!
  @available(OSX 10.5, *)
  func getMatchedCSSRules(element: DOMElement!, pseudoElement: String!, authorOnly: Bool) -> DOMCSSRuleList!
  @available(OSX 10.6, *)
  func getElementsBy(className classNames: String!) -> DOMNodeList!
  @available(OSX 10.6, *)
  func hasFocus() -> Bool
  @available(OSX 10.6, *)
  func webkitCancelFullScreen()
  func getElementBy(id elementId: String!) -> DOMElement!
  @available(OSX 10.6, *)
  func querySelector(selectors: String!) -> DOMElement!
  @available(OSX 10.6, *)
  func querySelectorAll(selectors: String!) -> DOMNodeList!
}
extension DOMDocument {
}
