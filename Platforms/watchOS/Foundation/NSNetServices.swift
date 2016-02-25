
let NSNetServicesErrorCode: String
let NSNetServicesErrorDomain: String
enum NSNetServicesError : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case CollisionError
  case NotFoundError
  case ActivityInProgress
  case BadArgumentError
  case CancelledError
  case InvalidError
  case TimeoutError
}
struct NSNetServiceOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var NoAutoRename: NSNetServiceOptions { get }
  @available(watchOS 2.0, *)
  static var ListenForConnections: NSNetServiceOptions { get }
}
