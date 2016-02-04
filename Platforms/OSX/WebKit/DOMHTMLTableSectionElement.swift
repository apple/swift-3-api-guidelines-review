
@available(OSX 10.4, *)
class DOMHTMLTableSectionElement : DOMHTMLElement {
  var align: String!
  var ch: String!
  var chOff: String!
  var vAlign: String!
  var rows: DOMHTMLCollection! { get }
  func insertRow(index: Int32) -> DOMHTMLElement!
  func deleteRow(index: Int32)
}
