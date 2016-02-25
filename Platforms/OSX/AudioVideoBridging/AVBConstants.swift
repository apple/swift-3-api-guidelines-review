
var AVB_LEGACY_OBJC_RUNTIME: Int32 { get }
var AVB_MODERN_OBJC_RUNTIME: Int32 { get }
var AVBMACAddressSize: Int32 { get }
@available(OSX 10.8, *)
enum AVB17221ADPEntityCapabilities : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(OSX 10.9, *)
  static var EFUMode: AVB17221ADPEntityCapabilities { get }
  case AddressAccessSupported
  case GatewayEntity
  case AEMSupported
  case LegacyAVC
  case AssociationIDSupported
  case AssociationIDValid
  case VendorUniqueSupported
  case ClassASupported
  case ClassBSupported
  @available(OSX 10.9, *)
  static var GPTPSupported: AVB17221ADPEntityCapabilities { get }
  @available(OSX 10.9, *)
  case AEMAuthenticationSupported
  @available(OSX 10.9, *)
  case AEMAuthenticationRequired
  @available(OSX 10.9, *)
  case AEMPersistentAcquireSupported
  @available(OSX 10.9, *)
  case AEMIdenitifyControlIndexValid
  @available(OSX 10.9, *)
  case AEMInterfaceIndexValid
  @available(OSX 10.9, *)
  case GeneralControllerIgnore
  @available(OSX 10.9, *)
  case EntityNotReady
}
@available(OSX 10.8, *)
struct AVB17221ADPTalkerCapabilities : OptionSetType {
  init(rawValue rawValue: UInt16)
  let rawValue: UInt16
  static var Implemented: AVB17221ADPTalkerCapabilities { get }
  static var HasOtherSource: AVB17221ADPTalkerCapabilities { get }
  static var HasControlSource: AVB17221ADPTalkerCapabilities { get }
  static var HasMediaClockSource: AVB17221ADPTalkerCapabilities { get }
  static var HasSMPTESource: AVB17221ADPTalkerCapabilities { get }
  static var HasMIDISource: AVB17221ADPTalkerCapabilities { get }
  static var HasAudioSource: AVB17221ADPTalkerCapabilities { get }
  static var HasVideoSource: AVB17221ADPTalkerCapabilities { get }
}
@available(OSX 10.8, *)
struct AVB17221ADPListenerCapabilities : OptionSetType {
  init(rawValue rawValue: UInt16)
  let rawValue: UInt16
  static var Implemented: AVB17221ADPListenerCapabilities { get }
  static var HasOtherSink: AVB17221ADPListenerCapabilities { get }
  static var HasControlSink: AVB17221ADPListenerCapabilities { get }
  static var HasMediaClockSink: AVB17221ADPListenerCapabilities { get }
  static var HasSMPTESink: AVB17221ADPListenerCapabilities { get }
  static var HasMIDISink: AVB17221ADPListenerCapabilities { get }
  static var HasAudioSink: AVB17221ADPListenerCapabilities { get }
  static var HasVideoSink: AVB17221ADPListenerCapabilities { get }
}
@available(OSX 10.8, *)
struct AVB17221ADPControllerCapabilities : OptionSetType {
  init(rawValue rawValue: UInt32)
  let rawValue: UInt32
  static var Implemented: AVB17221ADPControllerCapabilities { get }
  static var HasLayer3Proxy: AVB17221ADPControllerCapabilities { get }
}
@available(OSX 10.8, *)
enum AVB17221AECPMessageType : UInt8 {
  init?(rawValue rawValue: UInt8)
  var rawValue: UInt8 { get }
  case AEMCommand
  case AEMResponse
  case AddressAccessCommand
  case AddressAccessResponse
  case LegacyAVCCommand
  case LegacyAVCResponse
  case VendorUniqueCommand
  case VendorUniqueResponse
}
@available(OSX 10.8, *)
enum AVB17221AECPStatusCode : UInt8 {
  init?(rawValue rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Success
  case NotImplemented
  case NoSuchDescriptor
  case EntityLocked
  case EntityAcquired
  case NotAuthorized
  case InsufficientPrivileges
  case BadArguments
  case NoResources
  case InProgress
  case EntityMisbehaving
  case NotSupported
  case StreamIsRunning
  static var AddressAccessAddressTooLow: AVB17221AECPStatusCode { get }
  static var AddressAccessAddressTooHigh: AVB17221AECPStatusCode { get }
  static var AddressAccessAddressInvalid: AVB17221AECPStatusCode { get }
  static var AddressAccessTLVInvalid: AVB17221AECPStatusCode { get }
  static var AddressAccessDataInvalid: AVB17221AECPStatusCode { get }
  static var AddressAccessUnsupported: AVB17221AECPStatusCode { get }
  static var AVCFailure: AVB17221AECPStatusCode { get }
}
@available(OSX 10.8, *)
enum AVB17221ACMPMessageType : UInt8 {
  init?(rawValue rawValue: UInt8)
  var rawValue: UInt8 { get }
  case ConnectTXCommand
  case ConnectTXResponse
  case DisconnectTXCommand
  case DisconnectTXResponse
  case GetTXStateCommand
  case GetTXStateResponse
  case ConnectRXCommand
  case ConnectRXResponse
  case DisconnectRXCommand
  case DisconnectRXResponse
  case GetRXStateCommand
  case GetRXStateResponse
  case GetTXConnectionCommand
  case GetTXConnectionResponse
}
@available(OSX 10.8, *)
enum AVB17221ACMPStatusCode : UInt8 {
  init?(rawValue rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Success
  case ListenerUnknownID
  case TalkerUnknownID
  case TalkerDestMACFail
  case TalkerNoStreamIndex
  case TalkerNoBandwidth
  case TalkerExclusive
  case ListenerTalkerTimeout
  case ListenerExclusive
  case StateUnavailable
  case NotConnected
  case NoSuchConnection
  case UnableToSendMessage
  case TalkerMisbehaving
  case ListenerMisbehaving
  case SRPFace
  case ControllerNotAuthorized
  case IncompatibleRequest
  case NotSupported
}
@available(OSX 10.8, *)
struct AVB17221ACMPFlags : OptionSetType {
  init(rawValue rawValue: UInt16)
  let rawValue: UInt16
  static var None: AVB17221ACMPFlags { get }
  static var ClassB: AVB17221ACMPFlags { get }
  static var FastConnect: AVB17221ACMPFlags { get }
  static var SavedState: AVB17221ACMPFlags { get }
  static var StreamingWait: AVB17221ACMPFlags { get }
  static var SupportsEncrypted: AVB17221ACMPFlags { get }
  static var EncryptedPDU: AVB17221ACMPFlags { get }
  static var StreamingTalkerFailed: AVB17221ACMPFlags { get }
}
@available(OSX 10.8, *)
enum AVB17221AEMCommandType : UInt16 {
  init?(rawValue rawValue: UInt16)
  var rawValue: UInt16 { get }
  case AcquireEntity
  case LockEntity
  case EntityAvailable
  case ControllerAvailable
  case ReadDescriptor
  case WriteDescriptor
  case SetConfiguration
  case GetConfiguration
  case SetStreamFormat
  case GetStreamFormat
  case SetVideoFormat
  case GetVideoFormat
  case SetSensorFormat
  case GetSensorFormat
  case SetStreamInfo
  case GetStreamInfo
  case SetName
  case GetName
  case SetAssociationID
  case GetAssociationID
  case SetSamplingRate
  case GetSamplingRate
  case SetClockSource
  case GetClockSource
  case SetControl
  case GetControl
  case IncrementControl
  case DecrementControl
  case SetSignalSelector
  case GetSignalSelector
  case SetMixer
  case GetMixer
  case SetMatrix
  case GetMatrix
  case StartStreaming
  case StopStreaming
  case RegisterUnsolicitedNotification
  case DeregisterUnsolicitedNotification
  case IdentifyNotification
  case GetAVBInfo
  case GetASPath
  case GetCounters
  case Reboot
  case GetAudioMap
  case AddAudioMapping
  case RemoveAudioMapping
  case GetVideoMap
  case AddVideoMapping
  case RemoveVideoMapping
  case GetSensorMap
  case AddSensorMapping
  case RemoveSensorMapping
  case StartOperation
  case AbortOperation
  case OperationStatus
  case AuthenticateAddKey
  case AuthenticateDeleteKey
  case AuthenticateGetKeyList
  case AuthenticateGetKey
  case AuthenticateAddKeyToChain
  case AuthenticateDeleteKeyFromChain
  case AuthenticateGetKeychainList
  case AuthenticateGetIdentity
  case AuthenticateAddToken
  case AuthenticateDeleteToken
  case Authenticate
  case Deauthenticate
  case EnableTransportSecurity
  case DisableTransportSecurity
  case EnableStreamEncryption
  case DisableStreamEncryption
  case SetMemoryObjectLength
  case GetMemoryObjectLength
  case SetStreamBackup
  case GetStreamBackup
}
@available(OSX 10.9, *)
enum AVB17221AECPAddressAccessTLVMode : UInt8 {
  init?(rawValue rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Read
  case Write
  case Execute
}
let AVBErrorDomain: String
