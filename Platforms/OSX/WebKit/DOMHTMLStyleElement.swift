
@available(OSX 10.4, *)
class DOMHTMLStyleElement : DOMHTMLElement {
  var disabled: Bool
  var media: String!
  var type: String!
  @available(OSX 10.4, *)
  var sheet: DOMStyleSheet! { get }
}
