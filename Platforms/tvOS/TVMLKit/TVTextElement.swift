
@available(tvOS 9.0, *)
enum TVTextElementStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case title
  case subtitle
  case description
  case decoration
}
@available(tvOS 9.0, *)
class TVTextElement : TVViewElement {
  var attributedText: AttributedString? { get }
  var textStyle: TVTextElementStyle { get }
  func attributedString(with font: UIFont) -> AttributedString
  func attributedString(with font: UIFont, foregroundColor: UIColor?, textAlignment alignment: NSTextAlignment) -> AttributedString
  init()
}
