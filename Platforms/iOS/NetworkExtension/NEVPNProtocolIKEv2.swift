
@available(iOS 8.0, *)
enum NEVPNIKEv2EncryptionAlgorithm : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case AlgorithmDES
  case Algorithm3DES
  case AlgorithmAES128
  case AlgorithmAES256
  @available(iOS 8.3, *)
  case AlgorithmAES128GCM
  @available(iOS 8.3, *)
  case AlgorithmAES256GCM
}
@available(iOS 8.0, *)
enum NEVPNIKEv2IntegrityAlgorithm : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case SHA96
  case SHA160
  case SHA256
  case SHA384
  case SHA512
}
@available(iOS 8.0, *)
enum NEVPNIKEv2DeadPeerDetectionRate : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case Low
  case Medium
  case High
}
@available(iOS 8.0, *)
enum NEVPNIKEv2DiffieHellmanGroup : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Group0
  case Group1
  case Group2
  case Group5
  case Group14
  case Group15
  case Group16
  case Group17
  case Group18
  case Group19
  case Group20
  case Group21
}
@available(iOS 8.3, *)
enum NEVPNIKEv2CertificateType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case RSA
  case ECDSA256
  case ECDSA384
  case ECDSA521
}
@available(iOS 8.0, *)
class NEVPNIKEv2SecurityAssociationParameters : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 8.0, *)
  var encryptionAlgorithm: NEVPNIKEv2EncryptionAlgorithm
  @available(iOS 8.0, *)
  var integrityAlgorithm: NEVPNIKEv2IntegrityAlgorithm
  @available(iOS 8.0, *)
  var diffieHellmanGroup: NEVPNIKEv2DiffieHellmanGroup
  @available(iOS 8.0, *)
  var lifetimeMinutes: Int32
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(iOS 8.0, *)
class NEVPNProtocolIKEv2 : NEVPNProtocolIPSec {
  @available(iOS 8.0, *)
  var deadPeerDetectionRate: NEVPNIKEv2DeadPeerDetectionRate
  @available(iOS 8.0, *)
  var serverCertificateIssuerCommonName: String?
  @available(iOS 8.0, *)
  var serverCertificateCommonName: String?
  @available(iOS 8.3, *)
  var certificateType: NEVPNIKEv2CertificateType
  @available(iOS 9.0, *)
  var useConfigurationAttributeInternalIPSubnet: Bool
  @available(iOS 8.0, *)
  var IKESecurityAssociationParameters: NEVPNIKEv2SecurityAssociationParameters { get }
  @available(iOS 8.0, *)
  var childSecurityAssociationParameters: NEVPNIKEv2SecurityAssociationParameters { get }
  @available(iOS 9.0, *)
  var disableMOBIKE: Bool
  @available(iOS 9.0, *)
  var disableRedirect: Bool
  @available(iOS 9.0, *)
  var enablePFS: Bool
  @available(iOS 9.0, *)
  var enableRevocationCheck: Bool
  @available(iOS 9.0, *)
  var strictRevocationCheck: Bool
}
