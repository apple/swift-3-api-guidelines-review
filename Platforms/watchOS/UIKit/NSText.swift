
@available(watchOS 2.0, *)
enum NSTextAlignment : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case left
  case center
  case right
  case justified
  case natural
}
@available(watchOS 2.0, *)
enum NSWritingDirection : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case natural
  case leftToRight
  case rightToLeft
}
