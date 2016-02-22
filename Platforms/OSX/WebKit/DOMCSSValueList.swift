
@available(OSX 10.4, *)
class DOMCSSValueList : DOMCSSValue {
  var length: UInt32 { get }
  func item(_ index: UInt32) -> DOMCSSValue!
}
