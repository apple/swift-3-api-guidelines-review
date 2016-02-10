
@available(tvOS 9.0, *)
enum TVViewElementStyleType : Int {
  init?(rawValue: Int)
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
class TVStyleFactory : Object {
  class func registerStyle(styleName: String, with type: TVViewElementStyleType, inherited: Bool)
  init()
}
