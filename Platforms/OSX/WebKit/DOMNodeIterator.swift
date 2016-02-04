
@available(OSX 10.4, *)
class DOMNodeIterator : DOMObject {
  var root: DOMNode! { get }
  var whatToShow: UInt32 { get }
  var filter: DOMNodeFilter! { get }
  var expandEntityReferences: Bool { get }
  @available(OSX 10.5, *)
  var referenceNode: DOMNode! { get }
  @available(OSX 10.5, *)
  var pointerBeforeReferenceNode: Bool { get }
  func nextNode() -> DOMNode!
  func previousNode() -> DOMNode!
  func detach()
}
