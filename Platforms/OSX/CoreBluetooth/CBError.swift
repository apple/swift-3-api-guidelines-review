
let CBErrorDomain: String
enum CBError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  @available(OSX 10.9, *)
  case InvalidParameters
  @available(OSX 10.9, *)
  case InvalidHandle
  @available(OSX 10.9, *)
  case NotConnected
  @available(OSX 10.9, *)
  case OutOfSpace
  @available(OSX 10.9, *)
  case OperationCancelled
  @available(OSX 10.9, *)
  case ConnectionTimeout
  @available(OSX 10.9, *)
  case PeripheralDisconnected
  @available(OSX 10.9, *)
  case UUIDNotAllowed
  @available(OSX 10.9, *)
  case AlreadyAdvertising
  @available(OSX 10.11, *)
  case MaxConnection
}

extension CBError : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
let CBATTErrorDomain: String
enum CBATTError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.9, *)
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
