
@available(tvOS 9.0, *)
enum TVTextElementStyle : Int {
  init?(rawValue rawValue: Int)
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
  func attributedStringWithFont(_ font: UIFont) -> NSAttributedString
  func attributedStringWithFont(_ font: UIFont, foregroundColor foregroundColor: UIColor?, textAlignment alignment: NSTextAlignment) -> NSAttributedString
}
