
enum URLHandleStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotLoaded
  case LoadSucceeded
  case LoadInProgress
  case LoadFailed
}
protocol URLHandleClient {
}
class URLHandle : Object {
  init()
}
