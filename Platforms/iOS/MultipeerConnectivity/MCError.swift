
let MCErrorDomain: String
@available(iOS 7.0, *)
enum MCErrorCode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case notConnected
  case invalidParameter
  case unsupported
  case timedOut
  case cancelled
  case unavailable
}

@available(OSX 10.10, iOS 7.0, *)
extension MCErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
