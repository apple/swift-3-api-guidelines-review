
let CBErrorDomain: String
enum CBError : Int {
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
}
let CBATTErrorDomain: String
enum CBATTError : Int {
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
}
