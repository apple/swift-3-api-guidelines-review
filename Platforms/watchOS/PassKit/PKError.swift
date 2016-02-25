
@available(watchOS 2.0, *)
let PKPassKitErrorDomain: String
@available(watchOS 2.0, *)
enum PKPassKitErrorCode : Int {
  case UnknownError
  case InvalidDataError
  case UnsupportedVersionError
  case InvalidSignature
  case NotEntitledError
}

@available(iOS 6.0, *)
extension PKPassKitErrorCode : _BridgedNSError {
}
