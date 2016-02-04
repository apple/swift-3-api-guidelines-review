
@available(iOS 7.0, *)
let kSecPolicyAppleX509Basic: CFString
@available(iOS 7.0, *)
let kSecPolicyAppleSSL: CFString
@available(iOS 7.0, *)
let kSecPolicyAppleSMIME: CFString
@available(iOS 7.0, *)
let kSecPolicyAppleEAP: CFString
@available(iOS 7.0, *)
let kSecPolicyAppleIPsec: CFString
@available(iOS 7.0, *)
let kSecPolicyAppleCodeSigning: CFString
@available(iOS 9.0, *)
let kSecPolicyMacAppStoreReceipt: CFString
@available(iOS 7.0, *)
let kSecPolicyAppleIDValidation: CFString
@available(iOS 7.0, *)
let kSecPolicyAppleTimeStamping: CFString
@available(iOS 7.0, *)
let kSecPolicyAppleRevocation: CFString
@available(iOS 9.0, *)
let kSecPolicyApplePayIssuerEncryption: CFString
@available(iOS 7.0, *)
let kSecPolicyOid: CFString
@available(iOS 7.0, *)
let kSecPolicyName: CFString
@available(iOS 7.0, *)
let kSecPolicyClient: CFString
@available(iOS 7.0, *)
let kSecPolicyRevocationFlags: CFString
@available(iOS 2.0, *)
func SecPolicyGetTypeID() -> CFTypeID
@available(iOS 7.0, *)
func SecPolicyCopyProperties(policyRef: SecPolicy) -> CFDictionary
@available(iOS 2.0, *)
func SecPolicyCreateBasicX509() -> SecPolicy
@available(iOS 2.0, *)
func SecPolicyCreateSSL(server: Bool, _ hostname: CFString?) -> SecPolicy
var kSecRevocationOCSPMethod: CFOptionFlags { get }
var kSecRevocationCRLMethod: CFOptionFlags { get }
var kSecRevocationPreferCRL: CFOptionFlags { get }
var kSecRevocationRequirePositiveResponse: CFOptionFlags { get }
var kSecRevocationNetworkAccessDisabled: CFOptionFlags { get }
var kSecRevocationUseAnyAvailableMethod: CFOptionFlags { get }
@available(iOS 7.0, *)
func SecPolicyCreateRevocation(revocationFlags: CFOptionFlags) -> SecPolicy
@available(iOS 7.0, *)
func SecPolicyCreateWithProperties(policyIdentifier: CFTypeRef, _ properties: CFDictionary?) -> SecPolicy
