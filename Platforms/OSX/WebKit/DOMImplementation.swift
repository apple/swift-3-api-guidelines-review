
@available(OSX 10.4, *)
class DOMImplementation : DOMObject {
  @available(OSX 10.5, *)
  func hasFeature(feature: String!, version: String!) -> Bool
  @available(OSX 10.5, *)
  func createDocumentType(qualifiedName: String!, publicId: String!, systemId: String!) -> DOMDocumentType!
  @available(OSX 10.5, *)
  func createDocument(namespaceURI: String!, qualifiedName: String!, doctype: DOMDocumentType!) -> DOMDocument!
  @available(OSX 10.5, *)
  func createCSSStyleSheet(title: String!, media: String!) -> DOMCSSStyleSheet!
  @available(OSX 10.5, *)
  func createHTMLDocument(title: String!) -> DOMHTMLDocument!
}
extension DOMImplementation {
}
