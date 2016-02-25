
@available(tvOS 9.0, *)
enum TVImageType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Image
  case Fullscreen
  case Decoration
  case Hero
}
@available(tvOS 9.0, *)
class TVImageElement : TVViewElement {
  var URL: NSURL? { get }
  var srcset: [String : NSURL]? { get }
  var imageType: TVImageType { get }
}
