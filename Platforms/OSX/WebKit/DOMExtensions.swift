
extension DOMNode {
  @available(OSX 10.5, *)
  func boundingBox() -> Rect
  @available(OSX 10.5, *)
  func lineBoxRects() -> [AnyObject]!
}
extension DOMElement {
  @available(OSX 10.5, *)
  func image() -> NSImage!
}
extension DOMHTMLDocument {
  @available(OSX 10.5, *)
  func createDocumentFragment(markupString markupString: String!, baseURL: URL!) -> DOMDocumentFragment!
  @available(OSX 10.5, *)
  func createDocumentFragment(text text: String!) -> DOMDocumentFragment!
}
