
extension DOMNode {
  @available(OSX 10.5, *)
  func boundingBox() -> NSRect
  @available(OSX 10.5, *)
  func lineBoxRects() -> [AnyObject]!
}
extension DOMElement {
  @available(OSX 10.5, *)
  func image() -> NSImage!
}
extension DOMHTMLDocument {
  @available(OSX 10.5, *)
  func createDocumentFragment(withMarkupString markupString: String!, baseURL baseURL: NSURL!) -> DOMDocumentFragment!
  @available(OSX 10.5, *)
  func createDocumentFragment(withText text: String!) -> DOMDocumentFragment!
}
