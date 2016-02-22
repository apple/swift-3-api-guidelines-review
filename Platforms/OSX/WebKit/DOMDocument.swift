
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
  func createElement(_ tagName: String!) -> DOMElement!
  func createDocumentFragment() -> DOMDocumentFragment!
  func createTextNode(_ data: String!) -> DOMText!
  func createComment(_ data: String!) -> DOMComment!
  func createCDATASection(_ data: String!) -> DOMCDATASection!
  @available(OSX 10.5, *)
  func createProcessingInstruction(_ target: String!, data data: String!) -> DOMProcessingInstruction!
  func createAttribute(_ name: String!) -> DOMAttr!
  func createEntityReference(_ name: String!) -> DOMEntityReference!
  func getElementsByTagName(_ tagname: String!) -> DOMNodeList!
  @available(OSX 10.5, *)
  func importNode(_ importedNode: DOMNode!, deep deep: Bool) -> DOMNode!
  @available(OSX 10.5, *)
  func createElementNS(_ namespaceURI: String!, qualifiedName qualifiedName: String!) -> DOMElement!
  @available(OSX 10.5, *)
  func createAttributeNS(_ namespaceURI: String!, qualifiedName qualifiedName: String!) -> DOMAttr!
  @available(OSX 10.5, *)
  func getElementsByTagNameNS(_ namespaceURI: String!, localName localName: String!) -> DOMNodeList!
  @available(OSX 10.5, *)
  func adoptNode(_ source: DOMNode!) -> DOMNode!
  func createEvent(_ eventType: String!) -> DOMEvent!
  func createRange() -> DOMRange!
  @available(OSX 10.5, *)
  func createNodeIterator(_ root: DOMNode!, whatToShow whatToShow: UInt32, filter filter: DOMNodeFilter!, expandEntityReferences expandEntityReferences: Bool) -> DOMNodeIterator!
  @available(OSX 10.5, *)
  func createTreeWalker(_ root: DOMNode!, whatToShow whatToShow: UInt32, filter filter: DOMNodeFilter!, expandEntityReferences expandEntityReferences: Bool) -> DOMTreeWalker!
  @available(OSX 10.5, *)
  func getOverrideStyle(_ element: DOMElement!, pseudoElement pseudoElement: String!) -> DOMCSSStyleDeclaration!
  @available(OSX 10.5, *)
  func createExpression(_ expression: String!, resolver resolver: DOMXPathNSResolver!) -> DOMXPathExpression!
  @available(OSX 10.5, *)
  func createNSResolver(_ nodeResolver: DOMNode!) -> DOMXPathNSResolver!
  @available(OSX 10.5, *)
  func evaluate(_ expression: String!, contextNode contextNode: DOMNode!, resolver resolver: DOMXPathNSResolver!, type type: UInt16, in inResult: DOMXPathResult!) -> DOMXPathResult!
  @available(OSX 10.5, *)
  func execCommand(_ command: String!, userInterface userInterface: Bool, value value: String!) -> Bool
  @available(OSX 10.5, *)
  func execCommand(_ command: String!, userInterface userInterface: Bool) -> Bool
  @available(OSX 10.5, *)
  func execCommand(_ command: String!) -> Bool
  @available(OSX 10.5, *)
  func queryCommandEnabled(_ command: String!) -> Bool
  @available(OSX 10.5, *)
  func queryCommandIndeterm(_ command: String!) -> Bool
  @available(OSX 10.5, *)
  func queryCommandState(_ command: String!) -> Bool
  @available(OSX 10.5, *)
  func queryCommandSupported(_ command: String!) -> Bool
  @available(OSX 10.5, *)
  func queryCommandValue(_ command: String!) -> String!
  func getElementsByName(_ elementName: String!) -> DOMNodeList!
  @available(OSX 10.5, *)
  func element(fromPoint x: Int32, y y: Int32) -> DOMElement!
  @available(OSX 10.5, *)
  func createCSSStyleDeclaration() -> DOMCSSStyleDeclaration!
  @available(OSX 10.5, *)
  func getComputedStyle(_ element: DOMElement!, pseudoElement pseudoElement: String!) -> DOMCSSStyleDeclaration!
  @available(OSX 10.5, *)
  func getMatchedCSSRules(_ element: DOMElement!, pseudoElement pseudoElement: String!) -> DOMCSSRuleList!
  @available(OSX 10.5, *)
  func getMatchedCSSRules(_ element: DOMElement!, pseudoElement pseudoElement: String!, authorOnly authorOnly: Bool) -> DOMCSSRuleList!
  @available(OSX 10.6, *)
  func getElementsByClassName(_ classNames: String!) -> DOMNodeList!
  @available(OSX 10.6, *)
  func hasFocus() -> Bool
  @available(OSX 10.6, *)
  func webkitCancelFullScreen()
  func getElementById(_ elementId: String!) -> DOMElement!
  @available(OSX 10.6, *)
  func querySelector(_ selectors: String!) -> DOMElement!
  @available(OSX 10.6, *)
  func querySelectorAll(_ selectors: String!) -> DOMNodeList!
}
extension DOMDocument {
}
