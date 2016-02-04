
@available(watchOS 2.0, *)
enum NSTextAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Left
  case Center
  case Right
  case Justified
  case Natural
}
@available(watchOS 2.0, *)
enum NSWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Natural
  case LeftToRight
  case RightToLeft
}
