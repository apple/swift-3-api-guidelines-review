
@available(OSX 10.4, *)
class DOMText : DOMCharacterData {
  @available(OSX 10.6, *)
  var wholeText: String! { get }
  func splitText(_ offset: UInt32) -> DOMText!
  @available(OSX 10.6, *)
  func replaceWholeText(_ content: String!) -> DOMText!
}
