
enum URLHandleStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case notLoaded
  case loadSucceeded
  case loadInProgress
  case loadFailed
}
protocol URLHandleClient {
}
class URLHandle : Object {
  init()
}
