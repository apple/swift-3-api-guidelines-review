
let CBErrorDomain: String
enum CBError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  @available(tvOS 6.0, *)
  case InvalidParameters
  @available(tvOS 6.0, *)
  case InvalidHandle
  @available(tvOS 6.0, *)
  case NotConnected
  @available(tvOS 6.0, *)
  case OutOfSpace
  @available(tvOS 6.0, *)
  case OperationCancelled
  @available(tvOS 6.0, *)
  case ConnectionTimeout
  @available(tvOS 6.0, *)
  case PeripheralDisconnected
  @available(tvOS 6.0, *)
  case UUIDNotAllowed
  @available(tvOS 6.0, *)
  case AlreadyAdvertising
  @available(tvOS 7.1, *)
  case ConnectionFailed
  @available(tvOS 9.0, *)
  case ConnectionLimitReached
}

extension CBError : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
let CBATTErrorDomain: String
enum CBATTError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 6.0, *)
  case Success
  case InvalidHandle
  case ReadNotPermitted
  case WriteNotPermitted
  case InvalidPdu
  case InsufficientAuthentication
  case RequestNotSupported
  case InvalidOffset
  case InsufficientAuthorization
  case PrepareQueueFull
  case AttributeNotFound
  case AttributeNotLong
  case InsufficientEncryptionKeySize
  case InvalidAttributeValueLength
  case UnlikelyError
  case InsufficientEncryption
  case UnsupportedGroupType
  case InsufficientResources
}

extension CBATTError : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
