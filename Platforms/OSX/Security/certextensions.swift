
struct __CE_GeneralNameType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var GNT_OtherName: __CE_GeneralNameType { get }
var GNT_RFC822Name: __CE_GeneralNameType { get }
var GNT_DNSName: __CE_GeneralNameType { get }
var GNT_X400Address: __CE_GeneralNameType { get }
var GNT_DirectoryName: __CE_GeneralNameType { get }
var GNT_EdiPartyName: __CE_GeneralNameType { get }
var GNT_URI: __CE_GeneralNameType { get }
var GNT_IPAddress: __CE_GeneralNameType { get }
var GNT_RegisteredID: __CE_GeneralNameType { get }
typealias CE_GeneralNameType = __CE_GeneralNameType
struct __CE_OtherName {
  var typeId: CSSM_OID
  var value: CSSM_DATA
  init()
  init(typeId: CSSM_OID, value: CSSM_DATA)
}
struct __CE_GeneralName {
  var nameType: CE_GeneralNameType
  var berEncoded: CSSM_BOOL
  var name: CSSM_DATA
  init()
  init(nameType: CE_GeneralNameType, berEncoded: CSSM_BOOL, name: CSSM_DATA)
}
struct __CE_GeneralNames {
  var numNames: uint32
  var generalName: UnsafeMutablePointer<CE_GeneralName>
  init()
  init(numNames: uint32, generalName: UnsafeMutablePointer<CE_GeneralName>)
}
struct __CE_AuthorityKeyID {
  var keyIdentifierPresent: CSSM_BOOL
  var keyIdentifier: CSSM_DATA
  var generalNamesPresent: CSSM_BOOL
  var generalNames: UnsafeMutablePointer<CE_GeneralNames>
  var serialNumberPresent: CSSM_BOOL
  var serialNumber: CSSM_DATA
  init()
  init(keyIdentifierPresent: CSSM_BOOL, keyIdentifier: CSSM_DATA, generalNamesPresent: CSSM_BOOL, generalNames: UnsafeMutablePointer<CE_GeneralNames>, serialNumberPresent: CSSM_BOOL, serialNumber: CSSM_DATA)
}
var CE_KU_DigitalSignature: Int32 { get }
var CE_KU_NonRepudiation: Int32 { get }
var CE_KU_KeyEncipherment: Int32 { get }
var CE_KU_DataEncipherment: Int32 { get }
var CE_KU_KeyAgreement: Int32 { get }
var CE_KU_KeyCertSign: Int32 { get }
var CE_KU_CRLSign: Int32 { get }
var CE_KU_EncipherOnly: Int32 { get }
var CE_KU_DecipherOnly: Int32 { get }
var CE_CR_Unspecified: Int32 { get }
var CE_CR_KeyCompromise: Int32 { get }
var CE_CR_CACompromise: Int32 { get }
var CE_CR_AffiliationChanged: Int32 { get }
var CE_CR_Superseded: Int32 { get }
var CE_CR_CessationOfOperation: Int32 { get }
var CE_CR_CertificateHold: Int32 { get }
var CE_CR_RemoveFromCRL: Int32 { get }
struct __CE_ExtendedKeyUsage {
  var numPurposes: uint32
  var purposes: CSSM_OID_PTR
  init()
  init(numPurposes: uint32, purposes: CSSM_OID_PTR)
}
typealias CE_ExtendedKeyUsage = __CE_ExtendedKeyUsage
struct __CE_BasicConstraints {
  var cA: CSSM_BOOL
  var pathLenConstraintPresent: CSSM_BOOL
  var pathLenConstraint: uint32
  init()
  init(cA: CSSM_BOOL, pathLenConstraintPresent: CSSM_BOOL, pathLenConstraint: uint32)
}
struct __CE_PolicyQualifierInfo {
  var policyQualifierId: CSSM_OID
  var qualifier: CSSM_DATA
  init()
  init(policyQualifierId: CSSM_OID, qualifier: CSSM_DATA)
}
struct __CE_PolicyInformation {
  var certPolicyId: CSSM_OID
  var numPolicyQualifiers: uint32
  var policyQualifiers: UnsafeMutablePointer<CE_PolicyQualifierInfo>
  init()
  init(certPolicyId: CSSM_OID, numPolicyQualifiers: uint32, policyQualifiers: UnsafeMutablePointer<CE_PolicyQualifierInfo>)
}
struct __CE_CertPolicies {
  var numPolicies: uint32
  var policies: UnsafeMutablePointer<CE_PolicyInformation>
  init()
  init(numPolicies: uint32, policies: UnsafeMutablePointer<CE_PolicyInformation>)
}
var CE_CD_Unspecified: Int32 { get }
var CE_CD_KeyCompromise: Int32 { get }
var CE_CD_CACompromise: Int32 { get }
var CE_CD_AffiliationChanged: Int32 { get }
var CE_CD_Superseded: Int32 { get }
var CE_CD_CessationOfOperation: Int32 { get }
var CE_CD_CertificateHold: Int32 { get }
struct __CE_CrlDistributionPointNameType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var CE_CDNT_FullName: __CE_CrlDistributionPointNameType { get }
var CE_CDNT_NameRelativeToCrlIssuer: __CE_CrlDistributionPointNameType { get }
struct __CE_DistributionPointName {
  struct __Unnamed_union_dpn {
    var fullName: UnsafeMutablePointer<CE_GeneralNames>
    var rdn: CSSM_X509_RDN_PTR
    init(fullName: UnsafeMutablePointer<CE_GeneralNames>)
    init(rdn: CSSM_X509_RDN_PTR)
    init()
  }
  var nameType: CE_CrlDistributionPointNameType
  var dpn: __CE_DistributionPointName.__Unnamed_union_dpn
  init()
  init(nameType: CE_CrlDistributionPointNameType, dpn: __CE_DistributionPointName.__Unnamed_union_dpn)
}
struct __CE_CRLDistributionPoint {
  var distPointName: UnsafeMutablePointer<CE_DistributionPointName>
  var reasonsPresent: CSSM_BOOL
  var reasons: CE_CrlDistReasonFlags
  var crlIssuer: UnsafeMutablePointer<CE_GeneralNames>
  init()
  init(distPointName: UnsafeMutablePointer<CE_DistributionPointName>, reasonsPresent: CSSM_BOOL, reasons: CE_CrlDistReasonFlags, crlIssuer: UnsafeMutablePointer<CE_GeneralNames>)
}
struct __CE_CRLDistPointsSyntax {
  var numDistPoints: uint32
  var distPoints: UnsafeMutablePointer<CE_CRLDistributionPoint>
  init()
  init(numDistPoints: uint32, distPoints: UnsafeMutablePointer<CE_CRLDistributionPoint>)
}
struct __CE_AccessDescription {
  var accessMethod: CSSM_OID
  var accessLocation: CE_GeneralName
  init()
  init(accessMethod: CSSM_OID, accessLocation: CE_GeneralName)
}
struct __CE_AuthorityInfoAccess {
  var numAccessDescriptions: uint32
  var accessDescriptions: UnsafeMutablePointer<CE_AccessDescription>
  init()
  init(numAccessDescriptions: uint32, accessDescriptions: UnsafeMutablePointer<CE_AccessDescription>)
}
struct __CE_SemanticsInformation {
  var semanticsIdentifier: UnsafeMutablePointer<CSSM_OID>
  var nameRegistrationAuthorities: UnsafeMutablePointer<CE_NameRegistrationAuthorities>
  init()
  init(semanticsIdentifier: UnsafeMutablePointer<CSSM_OID>, nameRegistrationAuthorities: UnsafeMutablePointer<CE_NameRegistrationAuthorities>)
}
struct __CE_QC_Statement {
  var statementId: CSSM_OID
  var semanticsInfo: UnsafeMutablePointer<CE_SemanticsInformation>
  var otherInfo: UnsafeMutablePointer<CSSM_DATA>
  init()
  init(statementId: CSSM_OID, semanticsInfo: UnsafeMutablePointer<CE_SemanticsInformation>, otherInfo: UnsafeMutablePointer<CSSM_DATA>)
}
struct __CE_QC_Statements {
  var numQCStatements: uint32
  var qcStatements: UnsafeMutablePointer<CE_QC_Statement>
  init()
  init(numQCStatements: uint32, qcStatements: UnsafeMutablePointer<CE_QC_Statement>)
}
typealias CE_CrlNumber = uint32
typealias CE_DeltaCrl = uint32
struct __CE_IssuingDistributionPoint {
  var distPointName: UnsafeMutablePointer<CE_DistributionPointName>
  var onlyUserCertsPresent: CSSM_BOOL
  var onlyUserCerts: CSSM_BOOL
  var onlyCACertsPresent: CSSM_BOOL
  var onlyCACerts: CSSM_BOOL
  var onlySomeReasonsPresent: CSSM_BOOL
  var onlySomeReasons: CE_CrlDistReasonFlags
  var indirectCrlPresent: CSSM_BOOL
  var indirectCrl: CSSM_BOOL
  init()
  init(distPointName: UnsafeMutablePointer<CE_DistributionPointName>, onlyUserCertsPresent: CSSM_BOOL, onlyUserCerts: CSSM_BOOL, onlyCACertsPresent: CSSM_BOOL, onlyCACerts: CSSM_BOOL, onlySomeReasonsPresent: CSSM_BOOL, onlySomeReasons: CE_CrlDistReasonFlags, indirectCrlPresent: CSSM_BOOL, indirectCrl: CSSM_BOOL)
}
struct __CE_GeneralSubtree {
  var base: UnsafeMutablePointer<CE_GeneralNames>
  var minimum: uint32
  var maximumPresent: CSSM_BOOL
  var maximum: uint32
  init()
  init(base: UnsafeMutablePointer<CE_GeneralNames>, minimum: uint32, maximumPresent: CSSM_BOOL, maximum: uint32)
}
struct __CE_GeneralSubtrees {
  var numSubtrees: uint32
  var subtrees: UnsafeMutablePointer<CE_GeneralSubtree>
  init()
  init(numSubtrees: uint32, subtrees: UnsafeMutablePointer<CE_GeneralSubtree>)
}
struct __CE_NameConstraints {
  var permitted: UnsafeMutablePointer<CE_GeneralSubtrees>
  var excluded: UnsafeMutablePointer<CE_GeneralSubtrees>
  init()
  init(permitted: UnsafeMutablePointer<CE_GeneralSubtrees>, excluded: UnsafeMutablePointer<CE_GeneralSubtrees>)
}
struct __CE_PolicyMapping {
  var issuerDomainPolicy: CSSM_OID
  var subjectDomainPolicy: CSSM_OID
  init()
  init(issuerDomainPolicy: CSSM_OID, subjectDomainPolicy: CSSM_OID)
}
struct __CE_PolicyMappings {
  var numPolicyMappings: uint32
  var policyMappings: UnsafeMutablePointer<CE_PolicyMapping>
  init()
  init(numPolicyMappings: uint32, policyMappings: UnsafeMutablePointer<CE_PolicyMapping>)
}
struct __CE_PolicyConstraints {
  var requireExplicitPolicyPresent: CSSM_BOOL
  var requireExplicitPolicy: uint32
  var inhibitPolicyMappingPresent: CSSM_BOOL
  var inhibitPolicyMapping: uint32
  init()
  init(requireExplicitPolicyPresent: CSSM_BOOL, requireExplicitPolicy: uint32, inhibitPolicyMappingPresent: CSSM_BOOL, inhibitPolicyMapping: uint32)
}
struct __CE_DataType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var DT_AuthorityKeyID: __CE_DataType { get }
var DT_SubjectKeyID: __CE_DataType { get }
var DT_KeyUsage: __CE_DataType { get }
var DT_SubjectAltName: __CE_DataType { get }
var DT_IssuerAltName: __CE_DataType { get }
var DT_ExtendedKeyUsage: __CE_DataType { get }
var DT_BasicConstraints: __CE_DataType { get }
var DT_CertPolicies: __CE_DataType { get }
var DT_NetscapeCertType: __CE_DataType { get }
var DT_CrlNumber: __CE_DataType { get }
var DT_DeltaCrl: __CE_DataType { get }
var DT_CrlReason: __CE_DataType { get }
var DT_CrlDistributionPoints: __CE_DataType { get }
var DT_IssuingDistributionPoint: __CE_DataType { get }
var DT_AuthorityInfoAccess: __CE_DataType { get }
var DT_Other: __CE_DataType { get }
var DT_QC_Statements: __CE_DataType { get }
var DT_NameConstraints: __CE_DataType { get }
var DT_PolicyMappings: __CE_DataType { get }
var DT_PolicyConstraints: __CE_DataType { get }
var DT_InhibitAnyPolicy: __CE_DataType { get }
typealias CE_DataType = __CE_DataType
struct __CE_DataAndType {
  var type: CE_DataType
  var `extension`: CE_Data
  var critical: CSSM_BOOL
  init()
  init(type: CE_DataType, extension: CE_Data, critical: CSSM_BOOL)
}
