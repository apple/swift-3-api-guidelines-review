
@available(tvOS 9.0, *)
enum TVImageType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Image
  case Fullscreen
  case Decoration
  case Hero
}
@available(tvOS 9.0, *)
class TVImageElement : TVViewElement {
  var url: URL? { get }
  var srcset: [String : URL]? { get }
  var imageType: TVImageType { get }
  init()
}
