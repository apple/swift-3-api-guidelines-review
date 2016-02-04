
enum NSUserInterfaceLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LeftToRight
  case RightToLeft
}
@available(OSX 10.9, *)
enum NSUserInterfaceLayoutOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
