
@available(tvOS 9.0, *)
enum TVTextElementStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case none
  case title
  case subtitle
  case description
  case decoration
}
@available(tvOS 9.0, *)
class TVTextElement : TVViewElement {
  var attributedText: NSAttributedString? { get }
  var textStyle: TVTextElementStyle { get }
  func attributedString(with font: UIFont) -> NSAttributedString
  func attributedString(with font: UIFont, foregroundColor foregroundColor: UIColor?, textAlignment alignment: NSTextAlignment) -> NSAttributedString
}
