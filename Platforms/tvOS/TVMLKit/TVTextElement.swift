
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
  var attributedText: NSAttributedString? { get }
  var textStyle: TVTextElementStyle { get }
  func attributedStringWithFont(font: UIFont) -> NSAttributedString
  func attributedStringWithFont(font: UIFont, foregroundColor: UIColor?, textAlignment alignment: NSTextAlignment) -> NSAttributedString
  init()
}
