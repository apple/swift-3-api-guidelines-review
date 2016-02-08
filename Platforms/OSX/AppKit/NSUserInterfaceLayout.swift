
enum NSUserInterfaceLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case leftToRight
  case rightToLeft
}
@available(OSX 10.9, *)
enum NSUserInterfaceLayoutOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case horizontal
  case vertical
}
