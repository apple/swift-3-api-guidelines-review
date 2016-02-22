
@available(OSX 10.4, *)
class DOMHTMLTableElement : DOMHTMLElement {
  var caption: DOMHTMLTableCaptionElement!
  var tHead: DOMHTMLTableSectionElement!
  var tFoot: DOMHTMLTableSectionElement!
  var rows: DOMHTMLCollection! { get }
  var tBodies: DOMHTMLCollection! { get }
  var align: String!
  var bgColor: String!
  var border: String!
  var cellPadding: String!
  var cellSpacing: String!
  var frameBorders: String!
  var rules: String!
  var summary: String!
  var width: String!
  func createTHead() -> DOMHTMLElement!
  func deleteTHead()
  func createTFoot() -> DOMHTMLElement!
  func deleteTFoot()
  func createCaption() -> DOMHTMLElement!
  func deleteCaption()
  func insertRow(_ index: Int32) -> DOMHTMLElement!
  func deleteRow(_ index: Int32)
}
