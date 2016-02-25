
@available(tvOS 9.0, *)
enum TVViewElementStyleType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case integer
  case double
  case point
  case string
  case color
  case URL
  case transform
  case edgeInsets
}
@available(tvOS 9.0, *)
class TVStyleFactory : NSObject {
  class func registerStyle(_ styleName: String, with type: TVViewElementStyleType, inherited inherited: Bool)
}
