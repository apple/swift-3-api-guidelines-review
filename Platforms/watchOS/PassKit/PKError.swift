
@available(watchOS 2.0, *)
let PKPassKitErrorDomain: String
@available(watchOS 2.0, *)
enum PKPassKitErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknownError
  case invalidDataError
  case unsupportedVersionError
  case invalidSignature
  case notEntitledError
}

@available(iOS 6.0, *)
extension PKPassKitErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
