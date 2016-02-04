
var DOM_START_TO_START: Int { get }
var DOM_START_TO_END: Int { get }
var DOM_END_TO_END: Int { get }
var DOM_END_TO_START: Int { get }
var DOM_NODE_BEFORE: Int { get }
var DOM_NODE_AFTER: Int { get }
var DOM_NODE_BEFORE_AND_AFTER: Int { get }
var DOM_NODE_INSIDE: Int { get }
@available(OSX 10.4, *)
class DOMRange : DOMObject {
  var startContainer: DOMNode! { get }
  var startOffset: Int32 { get }
  var endContainer: DOMNode! { get }
  var endOffset: Int32 { get }
  var collapsed: Bool { get }
  var commonAncestorContainer: DOMNode! { get }
  @available(OSX 10.5, *)
  var text: String! { get }
  @available(OSX 10.5, *)
  func setStart(refNode: DOMNode!, offset: Int32)
  @available(OSX 10.5, *)
  func setEnd(refNode: DOMNode!, offset: Int32)
  func setStartBefore(refNode: DOMNode!)
  func setStartAfter(refNode: DOMNode!)
  func setEndBefore(refNode: DOMNode!)
  func setEndAfter(refNode: DOMNode!)
  func collapse(toStart: Bool)
  func select(refNode: DOMNode!)
  func selectNodeContents(refNode: DOMNode!)
  @available(OSX 10.5, *)
  func compareBoundaryPoints(how: UInt16, sourceRange: DOMRange!) -> Int16
  func deleteContents()
  func extractContents() -> DOMDocumentFragment!
  func cloneContents() -> DOMDocumentFragment!
  func insert(newNode: DOMNode!)
  func surroundContents(newParent: DOMNode!)
  func clone() -> DOMRange!
  func toString() -> String!
  func detach()
  @available(OSX 10.5, *)
  func createContextualFragment(html: String!) -> DOMDocumentFragment!
  @available(OSX 10.5, *)
  func intersectsNode(refNode: DOMNode!) -> Bool
  @available(OSX 10.5, *)
  func compare(refNode: DOMNode!) -> Int16
  @available(OSX 10.5, *)
  func comparePoint(refNode: DOMNode!, offset: Int32) -> Int16
  @available(OSX 10.5, *)
  func isPointInRange(refNode: DOMNode!, offset: Int32) -> Bool
}
extension DOMRange {
}
