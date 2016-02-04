
@available(OSX 10.6, *)
enum CWErr : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CWNoErr
  case CWEAPOLErr
  case CWInvalidParameterErr
  case CWNoMemoryErr
  case CWUnknownErr
  case CWNotSupportedErr
  case CWInvalidFormatErr
  case CWTimeoutErr
  case CWUnspecifiedFailureErr
  case CWUnsupportedCapabilitiesErr
  case CWReassociationDeniedErr
  case CWAssociationDeniedErr
  case CWAuthenticationAlgorithmUnsupportedErr
  case CWInvalidAuthenticationSequenceNumberErr
  case CWChallengeFailureErr
  case CWAPFullErr
  case CWUnsupportedRateSetErr
  case CWShortSlotUnsupportedErr
  case CWDSSSOFDMUnsupportedErr
  case CWInvalidInformationElementErr
  case CWInvalidGroupCipherErr
  case CWInvalidPairwiseCipherErr
  case CWInvalidAKMPErr
  case CWUnsupportedRSNVersionErr
  case CWInvalidRSNCapabilitiesErr
  case CWCipherSuiteRejectedErr
  case CWInvalidPMKErr
  case CWSupplicantTimeoutErr
  case CWHTFeaturesNotSupportedErr
  case CWPCOTransitionTimeNotSupportedErr
  case CWReferenceNotBoundErr
  case CWIPCFailureErr
  case CWOperationNotPermittedErr
  case CWErr
}
@available(OSX 10.7, *)
enum CWPHYMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ModeNone
  case Mode11a
  case Mode11b
  case Mode11g
  case Mode11n
  case Mode11ac
}
@available(OSX 10.7, *)
enum CWInterfaceMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Station
  case IBSS
  case HostAP
}
@available(OSX 10.7, *)
enum CWSecurity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case WEP
  case WPAPersonal
  case WPAPersonalMixed
  case WPA2Personal
  case Personal
  case DynamicWEP
  case WPAEnterprise
  case WPAEnterpriseMixed
  case WPA2Enterprise
  case Enterprise
  case Unknown
}
@available(OSX 10.7, *)
enum CWIBSSModeSecurity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case WEP40
  case WEP104
}
@available(OSX 10.7, *)
enum CWChannelWidth : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case WidthUnknown
  case Width20MHz
  case Width40MHz
  case Width80MHz
  case Width160MHz
}
@available(OSX 10.7, *)
enum CWChannelBand : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case BandUnknown
  case Band2GHz
  case Band5GHz
}
@available(OSX 10.7, *)
struct CWCipherKeyFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: CWCipherKeyFlags { get }
  static var Unicast: CWCipherKeyFlags { get }
  static var Multicast: CWCipherKeyFlags { get }
  static var Tx: CWCipherKeyFlags { get }
  static var Rx: CWCipherKeyFlags { get }
}
@available(OSX 10.10, *)
enum CWKeychainDomain : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case User
  case System
}
@available(OSX 10.10, *)
enum CWEventType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case PowerDidChange
  case SSIDDidChange
  case BSSIDDidChange
  case CountryCodeDidChange
  case LinkDidChange
  case LinkQualityDidChange
  case ModeDidChange
  case ScanCacheUpdated
  case Unknown
}
