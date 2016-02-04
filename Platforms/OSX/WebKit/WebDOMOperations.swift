
extension DOMNode {
  var webArchive: WebArchive! { get }
}
extension DOMDocument {
  var webFrame: WebFrame! { get }
  func urlWithAttributeString(string: String!) -> URL!
}
extension DOMRange {
  var webArchive: WebArchive! { get }
  var markupString: String! { get }
}
extension DOMHTMLFrameElement {
  var contentFrame: WebFrame! { get }
}
extension DOMHTMLIFrameElement {
  var contentFrame: WebFrame! { get }
}
extension DOMHTMLObjectElement {
  var contentFrame: WebFrame! { get }
}
