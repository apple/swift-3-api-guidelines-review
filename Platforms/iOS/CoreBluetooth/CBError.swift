
let CBErrorDomain: String
enum CBError : Int {
  case Unknown
  @available(iOS 6.0, *)
  case InvalidParameters
  @available(iOS 6.0, *)
  case InvalidHandle
  @available(iOS 6.0, *)
  case NotConnected
  @available(iOS 6.0, *)
  case OutOfSpace
  @available(iOS 6.0, *)
  case OperationCancelled
  @available(iOS 6.0, *)
  case ConnectionTimeout
  @available(iOS 6.0, *)
  case PeripheralDisconnected
  @available(iOS 6.0, *)
  case UUIDNotAllowed
  @available(iOS 6.0, *)
  case AlreadyAdvertising
  @available(iOS 7.1, *)
  case ConnectionFailed
  @available(iOS 9.0, *)
  case ConnectionLimitReached
}

extension CBError : _BridgedNSError {
}
let CBATTErrorDomain: String
enum CBATTError : Int {
  @available(iOS 6.0, *)
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
