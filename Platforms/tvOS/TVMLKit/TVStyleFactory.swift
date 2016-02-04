
@available(tvOS 9.0, *)
enum TVViewElementStyleType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Integer
  case Double
  case Point
  case String
  case Color
  case URL
  case Transform
  case EdgeInsets
}
@available(tvOS 9.0, *)
class TVStyleFactory : NSObject {
  class func registerStyle(styleName: String, withType type: TVViewElementStyleType, inherited: Bool)
  init()
}
