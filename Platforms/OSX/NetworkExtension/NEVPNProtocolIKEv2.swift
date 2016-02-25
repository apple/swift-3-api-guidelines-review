
@available(OSX 10.10, *)
enum NEVPNIKEv2EncryptionAlgorithm : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case AlgorithmDES
  case Algorithm3DES
  case AlgorithmAES128
  case AlgorithmAES256
  @available(OSX 10.11, *)
  case AlgorithmAES128GCM
  @available(OSX 10.11, *)
  case AlgorithmAES256GCM
}
@available(OSX 10.10, *)
enum NEVPNIKEv2IntegrityAlgorithm : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case SHA96
  case SHA160
  case SHA256
  case SHA384
  case SHA512
}
@available(OSX 10.10, *)
enum NEVPNIKEv2DeadPeerDetectionRate : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case Low
  case Medium
  case High
}
@available(OSX 10.10, *)
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
@available(OSX 10.11, *)
enum NEVPNIKEv2CertificateType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case RSA
  case ECDSA256
  case ECDSA384
  case ECDSA521
}
@available(OSX 10.10, *)
class NEVPNIKEv2SecurityAssociationParameters : NSObject, NSSecureCoding, NSCopying {
  @available(OSX 10.10, *)
  var encryptionAlgorithm: NEVPNIKEv2EncryptionAlgorithm
  @available(OSX 10.10, *)
  var integrityAlgorithm: NEVPNIKEv2IntegrityAlgorithm
  @available(OSX 10.10, *)
  var diffieHellmanGroup: NEVPNIKEv2DiffieHellmanGroup
  @available(OSX 10.10, *)
  var lifetimeMinutes: Int32
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(OSX 10.10, *)
class NEVPNProtocolIKEv2 : NEVPNProtocolIPSec {
  @available(OSX 10.10, *)
  var deadPeerDetectionRate: NEVPNIKEv2DeadPeerDetectionRate
  @available(OSX 10.10, *)
  var serverCertificateIssuerCommonName: String?
  @available(OSX 10.10, *)
  var serverCertificateCommonName: String?
  @available(OSX 10.11, *)
  var certificateType: NEVPNIKEv2CertificateType
  @available(OSX 10.11, *)
  var useConfigurationAttributeInternalIPSubnet: Bool
  @available(OSX 10.10, *)
  var IKESecurityAssociationParameters: NEVPNIKEv2SecurityAssociationParameters { get }
  @available(OSX 10.10, *)
  var childSecurityAssociationParameters: NEVPNIKEv2SecurityAssociationParameters { get }
  @available(OSX 10.11, *)
  var disableMOBIKE: Bool
  @available(OSX 10.11, *)
  var disableRedirect: Bool
  @available(OSX 10.11, *)
  var enablePFS: Bool
  @available(OSX 10.11, *)
  var enableRevocationCheck: Bool
  @available(OSX 10.11, *)
  var strictRevocationCheck: Bool
}
