
@available(tvOS 9.0, *)
enum TVTextElementStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Title
  case Subtitle
  case Description
  case Decoration
}
@available(tvOS 9.0, *)
class TVTextElement : TVViewElement {
  var attributedText: AttributedString? { get }
  var textStyle: TVTextElementStyle { get }
  func attributedStringWith(font: UIFont) -> AttributedString
  func attributedStringWith(font: UIFont, foregroundColor: UIColor?, textAlignment alignment: NSTextAlignment) -> AttributedString
  init()
}
