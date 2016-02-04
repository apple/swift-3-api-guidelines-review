
@available(OSX 10.4, *)
class DOMTreeWalker : DOMObject {
  var root: DOMNode! { get }
  var whatToShow: UInt32 { get }
  var filter: DOMNodeFilter! { get }
  var expandEntityReferences: Bool { get }
  var currentNode: DOMNode!
  func parentNode() -> DOMNode!
  func firstChild() -> DOMNode!
  func lastChild() -> DOMNode!
  func previousSibling() -> DOMNode!
  func nextSibling() -> DOMNode!
  func previousNode() -> DOMNode!
  func nextNode() -> DOMNode!
}
