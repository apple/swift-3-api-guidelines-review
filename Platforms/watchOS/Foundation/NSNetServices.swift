
let netServicesErrorCode: String
let netServicesErrorDomain: String
enum NetServicesError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknownError
  case collisionError
  case notFoundError
  case activityInProgress
  case badArgumentError
  case cancelledError
  case invalidError
  case timeoutError
}
struct NetServiceOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var noAutoRename: NetServiceOptions { get }
  @available(watchOS 2.0, *)
  static var listenForConnections: NetServiceOptions { get }
}
