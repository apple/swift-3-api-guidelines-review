
@available(tvOS 9.0, *)
enum TVElementAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Undefined
  case Left
  case Center
  case Right
}
@available(tvOS 9.0, *)
enum TVElementContentAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Undefined
  case Top
  case Center
  case Bottom
}
@available(tvOS 9.0, *)
enum TVElementPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Undefined
  case Center
  case Top
  case Bottom
  case Left
  case Right
  case TopLeft
  case TopRight
  case BottomLeft
  case BottomRight
  case Header
  case Footer
}
@available(tvOS 9.0, *)
class TVViewElementStyle : Object, Copying {
  func valueForStyleProperty(name: String) -> AnyObject?
  var backgroundColor: TVColor? { get }
  var color: TVColor? { get }
  var fontSize: CGFloat { get }
  var fontWeight: String? { get }
  var height: CGFloat { get }
  var margin: UIEdgeInsets { get }
  var maxHeight: CGFloat { get }
  var maxWidth: CGFloat { get }
  var minHeight: CGFloat { get }
  var minWidth: CGFloat { get }
  var padding: UIEdgeInsets { get }
  var textAlignment: NSTextAlignment { get }
  var width: CGFloat { get }
  var alignment: TVElementAlignment { get }
  var contentAlignment: TVElementContentAlignment { get }
  var highlightColor: TVColor? { get }
  var imageTreatmentName: String? { get }
  var interitemSpacing: CGFloat { get }
  var textHighlightStyle: String? { get }
  var textMinimumScaleFactor: CGFloat { get }
  var position: TVElementPosition { get }
  var ratingStyle: String? { get }
  var maxTextLines: Int { get }
  var textStyle: String? { get }
  var tintColor: TVColor? { get }
  init()
  @available(tvOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
