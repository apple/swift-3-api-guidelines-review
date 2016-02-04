
typealias CSSM_BER_TAG = uint8
var BER_TAG_UNKNOWN: Int32 { get }
var BER_TAG_BOOLEAN: Int32 { get }
var BER_TAG_INTEGER: Int32 { get }
var BER_TAG_BIT_STRING: Int32 { get }
var BER_TAG_OCTET_STRING: Int32 { get }
var BER_TAG_NULL: Int32 { get }
var BER_TAG_OID: Int32 { get }
var BER_TAG_OBJECT_DESCRIPTOR: Int32 { get }
var BER_TAG_EXTERNAL: Int32 { get }
var BER_TAG_REAL: Int32 { get }
var BER_TAG_ENUMERATED: Int32 { get }
var BER_TAG_PKIX_UTF8_STRING: Int32 { get }
var BER_TAG_SEQUENCE: Int32 { get }
var BER_TAG_SET: Int32 { get }
var BER_TAG_NUMERIC_STRING: Int32 { get }
var BER_TAG_PRINTABLE_STRING: Int32 { get }
var BER_TAG_T61_STRING: Int32 { get }
var BER_TAG_TELETEX_STRING: Int32 { get }
var BER_TAG_VIDEOTEX_STRING: Int32 { get }
var BER_TAG_IA5_STRING: Int32 { get }
var BER_TAG_UTC_TIME: Int32 { get }
var BER_TAG_GENERALIZED_TIME: Int32 { get }
var BER_TAG_GRAPHIC_STRING: Int32 { get }
var BER_TAG_ISO646_STRING: Int32 { get }
var BER_TAG_GENERAL_STRING: Int32 { get }
var BER_TAG_VISIBLE_STRING: Int32 { get }
var BER_TAG_PKIX_UNIVERSAL_STRING: Int32 { get }
var BER_TAG_PKIX_BMP_STRING: Int32 { get }
struct cssm_x509_algorithm_identifier {
  var algorithm: CSSM_OID
  var parameters: CSSM_DATA
  init()
  init(algorithm: CSSM_OID, parameters: CSSM_DATA)
}
struct cssm_x509_type_value_pair {
  var type: CSSM_OID
  var valueType: CSSM_BER_TAG
  var value: CSSM_DATA
  init()
  init(type: CSSM_OID, valueType: CSSM_BER_TAG, value: CSSM_DATA)
}
struct cssm_x509_rdn {
  var numberOfPairs: uint32
  var AttributeTypeAndValue: CSSM_X509_TYPE_VALUE_PAIR_PTR
  init()
  init(numberOfPairs: uint32, AttributeTypeAndValue: CSSM_X509_TYPE_VALUE_PAIR_PTR)
}
struct cssm_x509_name {
  var numberOfRDNs: uint32
  var RelativeDistinguishedName: CSSM_X509_RDN_PTR
  init()
  init(numberOfRDNs: uint32, RelativeDistinguishedName: CSSM_X509_RDN_PTR)
}
struct cssm_x509_subject_public_key_info {
  var algorithm: CSSM_X509_ALGORITHM_IDENTIFIER
  var subjectPublicKey: CSSM_DATA
  init()
  init(algorithm: CSSM_X509_ALGORITHM_IDENTIFIER, subjectPublicKey: CSSM_DATA)
}
struct cssm_x509_time {
  var timeType: CSSM_BER_TAG
  var time: CSSM_DATA
  init()
  init(timeType: CSSM_BER_TAG, time: CSSM_DATA)
}
struct x509_validity {
  var notBefore: CSSM_X509_TIME
  var notAfter: CSSM_X509_TIME
  init()
  init(notBefore: CSSM_X509_TIME, notAfter: CSSM_X509_TIME)
}
typealias CSSM_X509_OPTION = CSSM_BOOL
struct cssm_x509ext_basicConstraints {
  var cA: CSSM_BOOL
  var pathLenConstraintPresent: CSSM_X509_OPTION
  var pathLenConstraint: uint32
  init()
  init(cA: CSSM_BOOL, pathLenConstraintPresent: CSSM_X509_OPTION, pathLenConstraint: uint32)
}
struct extension_data_format : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var CSSM_X509_DATAFORMAT_ENCODED: extension_data_format { get }
var CSSM_X509_DATAFORMAT_PARSED: extension_data_format { get }
var CSSM_X509_DATAFORMAT_PAIR: extension_data_format { get }
typealias CSSM_X509EXT_DATA_FORMAT = extension_data_format
struct cssm_x509_extensionTagAndValue {
  var type: CSSM_BER_TAG
  var value: CSSM_DATA
  init()
  init(type: CSSM_BER_TAG, value: CSSM_DATA)
}
struct cssm_x509ext_pair {
  var tagAndValue: CSSM_X509EXT_TAGandVALUE
  var parsedValue: UnsafeMutablePointer<Void>
  init()
  init(tagAndValue: CSSM_X509EXT_TAGandVALUE, parsedValue: UnsafeMutablePointer<Void>)
}
struct cssm_x509_extension {
  var extnId: CSSM_OID
  var critical: CSSM_BOOL
  var format: CSSM_X509EXT_DATA_FORMAT
  var value: cssm_x509ext_value
  var BERvalue: CSSM_DATA
  init()
  init(extnId: CSSM_OID, critical: CSSM_BOOL, format: CSSM_X509EXT_DATA_FORMAT, value: cssm_x509ext_value, BERvalue: CSSM_DATA)
}
struct cssm_x509ext_value {
  var tagAndValue: UnsafeMutablePointer<CSSM_X509EXT_TAGandVALUE>
  var parsedValue: UnsafeMutablePointer<Void>
  var valuePair: UnsafeMutablePointer<CSSM_X509EXT_PAIR>
  init(tagAndValue: UnsafeMutablePointer<CSSM_X509EXT_TAGandVALUE>)
  init(parsedValue: UnsafeMutablePointer<Void>)
  init(valuePair: UnsafeMutablePointer<CSSM_X509EXT_PAIR>)
  init()
}
struct cssm_x509_extensions {
  var numberOfExtensions: uint32
  var extensions: CSSM_X509_EXTENSION_PTR
  init()
  init(numberOfExtensions: uint32, extensions: CSSM_X509_EXTENSION_PTR)
}
struct cssm_x509_tbs_certificate {
  var version: CSSM_DATA
  var serialNumber: CSSM_DATA
  var signature: CSSM_X509_ALGORITHM_IDENTIFIER
  var issuer: CSSM_X509_NAME
  var validity: CSSM_X509_VALIDITY
  var subject: CSSM_X509_NAME
  var subjectPublicKeyInfo: CSSM_X509_SUBJECT_PUBLIC_KEY_INFO
  var issuerUniqueIdentifier: CSSM_DATA
  var subjectUniqueIdentifier: CSSM_DATA
  var extensions: CSSM_X509_EXTENSIONS
  init()
  init(version: CSSM_DATA, serialNumber: CSSM_DATA, signature: CSSM_X509_ALGORITHM_IDENTIFIER, issuer: CSSM_X509_NAME, validity: CSSM_X509_VALIDITY, subject: CSSM_X509_NAME, subjectPublicKeyInfo: CSSM_X509_SUBJECT_PUBLIC_KEY_INFO, issuerUniqueIdentifier: CSSM_DATA, subjectUniqueIdentifier: CSSM_DATA, extensions: CSSM_X509_EXTENSIONS)
}
struct cssm_x509_signature {
  var algorithmIdentifier: CSSM_X509_ALGORITHM_IDENTIFIER
  var encrypted: CSSM_DATA
  init()
  init(algorithmIdentifier: CSSM_X509_ALGORITHM_IDENTIFIER, encrypted: CSSM_DATA)
}
struct cssm_x509_signed_certificate {
  var certificate: CSSM_X509_TBS_CERTIFICATE
  var signature: CSSM_X509_SIGNATURE
  init()
  init(certificate: CSSM_X509_TBS_CERTIFICATE, signature: CSSM_X509_SIGNATURE)
}
struct cssm_x509ext_policyQualifierInfo {
  var policyQualifierId: CSSM_OID
  var value: CSSM_DATA
  init()
  init(policyQualifierId: CSSM_OID, value: CSSM_DATA)
}
struct cssm_x509ext_policyQualifiers {
  var numberOfPolicyQualifiers: uint32
  var policyQualifier: UnsafeMutablePointer<CSSM_X509EXT_POLICYQUALIFIERINFO>
  init()
  init(numberOfPolicyQualifiers: uint32, policyQualifier: UnsafeMutablePointer<CSSM_X509EXT_POLICYQUALIFIERINFO>)
}
struct cssm_x509ext_policyInfo {
  var policyIdentifier: CSSM_OID
  var policyQualifiers: CSSM_X509EXT_POLICYQUALIFIERS
  init()
  init(policyIdentifier: CSSM_OID, policyQualifiers: CSSM_X509EXT_POLICYQUALIFIERS)
}
struct cssm_x509_revoked_cert_entry {
  var certificateSerialNumber: CSSM_DATA
  var revocationDate: CSSM_X509_TIME
  var extensions: CSSM_X509_EXTENSIONS
  init()
  init(certificateSerialNumber: CSSM_DATA, revocationDate: CSSM_X509_TIME, extensions: CSSM_X509_EXTENSIONS)
}
struct cssm_x509_revoked_cert_list {
  var numberOfRevokedCertEntries: uint32
  var revokedCertEntry: CSSM_X509_REVOKED_CERT_ENTRY_PTR
  init()
  init(numberOfRevokedCertEntries: uint32, revokedCertEntry: CSSM_X509_REVOKED_CERT_ENTRY_PTR)
}
struct cssm_x509_tbs_certlist {
  var version: CSSM_DATA
  var signature: CSSM_X509_ALGORITHM_IDENTIFIER
  var issuer: CSSM_X509_NAME
  var thisUpdate: CSSM_X509_TIME
  var nextUpdate: CSSM_X509_TIME
  var revokedCertificates: CSSM_X509_REVOKED_CERT_LIST_PTR
  var extensions: CSSM_X509_EXTENSIONS
  init()
  init(version: CSSM_DATA, signature: CSSM_X509_ALGORITHM_IDENTIFIER, issuer: CSSM_X509_NAME, thisUpdate: CSSM_X509_TIME, nextUpdate: CSSM_X509_TIME, revokedCertificates: CSSM_X509_REVOKED_CERT_LIST_PTR, extensions: CSSM_X509_EXTENSIONS)
}
struct cssm_x509_signed_crl {
  var tbsCertList: CSSM_X509_TBS_CERTLIST
  var signature: CSSM_X509_SIGNATURE
  init()
  init(tbsCertList: CSSM_X509_TBS_CERTLIST, signature: CSSM_X509_SIGNATURE)
}
