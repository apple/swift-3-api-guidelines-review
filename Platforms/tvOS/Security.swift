

/*!
 @function SecAccessControlGetTypeID
 @abstract Returns the type identifier of SecAccessControl instances.
 @result The CFTypeID of SecAccessControl instances.
 */
@available(tvOS 8.0, *)
func SecAccessControlGetTypeID() -> CFTypeID
@available(tvOS 8.0, *)
struct SecAccessControlCreateFlags : OptionSetType {
  init(rawValue: CFIndex)
  let rawValue: CFIndex
  static var UserPresence: SecAccessControlCreateFlags { get }
  @available(tvOS 9.0, *)
  static var TouchIDAny: SecAccessControlCreateFlags { get }
  @available(tvOS 9.0, *)
  static var TouchIDCurrentSet: SecAccessControlCreateFlags { get }
  @available(tvOS 9.0, *)
  static var DevicePasscode: SecAccessControlCreateFlags { get }
  @available(tvOS 9.0, *)
  static var Or: SecAccessControlCreateFlags { get }
  @available(tvOS 9.0, *)
  static var And: SecAccessControlCreateFlags { get }
  @available(tvOS 9.0, *)
  static var PrivateKeyUsage: SecAccessControlCreateFlags { get }
  @available(tvOS 9.0, *)
  static var ApplicationPassword: SecAccessControlCreateFlags { get }
}

/*!
 @function SecAccessControlCreateWithFlags
 @abstract Creates new access control object based on protection type and additional flags.
 @discussion Created access control object should be used as a value for kSecAttrAccessControl attribute in SecItemAdd,
 SecItemUpdate or SecKeyGeneratePair functions.  Accessing keychain items or performing operations on keys which are
 protected by access control objects can block the execution because of UI which can appear to satisfy the access control
 conditions, therefore it is recommended to either move those potentially blocking operations out of the main
 application thread or use combination of kSecUseAuthenticationContext and kSecUseAuthenticationUI attributes to control
 where the UI interaction can appear.
 @param allocator Allocator to be used by this instance.
 @param protection Protection class to be used for the item. One of kSecAttrAccessible constants.
 @param flags If no flags are set then all operations are allowed.
 @param error Additional error information filled in case of failure.
 @result Newly created access control object.
 */
@available(tvOS 8.0, *)
func SecAccessControlCreateWithFlags(allocator: CFAllocator?, _ protection: AnyObject, _ flags: SecAccessControlCreateFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecAccessControl?

/*!
    @typedef SecCertificateRef
    @abstract CFType representing a X.509 certificate.
    See SecCertificate.h for details.
*/
typealias SecCertificateRef = SecCertificate

/*!
    @typedef SecIdentityRef
    @abstract CFType representing an identity, which contains
    a SecKeyRef and an associated SecCertificateRef. See
    SecIdentity.h for details.
*/
typealias SecIdentityRef = SecIdentity

/*!
    @typedef SecKeyRef
    @abstract CFType representing a cryptographic key. See
    SecKey.h for details.
*/
typealias SecKeyRef = SecKey

/*!
    @typedef SecPolicyRef
    @abstract CFType representing a X.509 certificate trust policy.
    See SecPolicy.h for details.
*/
typealias SecPolicyRef = SecPolicy

/*!
    @typedef SecAccessControl
    @abstract CFType representing access control for an item.
    SecAccessControl.h for details.
*/
typealias SecAccessControlRef = SecAccessControl
var errSecSuccess: OSStatus { get }
var errSecUnimplemented: OSStatus { get }
var errSecIO: OSStatus { get }
var errSecOpWr: OSStatus { get }
var errSecParam: OSStatus { get }
var errSecAllocate: OSStatus { get }
var errSecUserCanceled: OSStatus { get }
var errSecBadReq: OSStatus { get }
var errSecInternalComponent: OSStatus { get }
var errSecNotAvailable: OSStatus { get }
var errSecDuplicateItem: OSStatus { get }
var errSecItemNotFound: OSStatus { get }
var errSecInteractionNotAllowed: OSStatus { get }
var errSecDecode: OSStatus { get }
var errSecAuthFailed: OSStatus { get }

/*!
	@function SecCertificateGetTypeID
	@abstract Returns the type identifier of SecCertificate instances.
	@result The CFTypeID of SecCertificate instances.
*/
@available(tvOS 2.0, *)
func SecCertificateGetTypeID() -> CFTypeID

/*!
	@function SecCertificateCreateWithData
	@abstract Create a certificate given it's DER representation as a CFData.
    @param allocator CFAllocator to allocate the certificate with.
    @param certificate DER encoded X.509 certificate.
	@result Return NULL if the passed-in data is not a valid DER-encoded
    X.509 certificate, return a SecCertificateRef otherwise.
*/
@available(tvOS 2.0, *)
func SecCertificateCreateWithData(allocator: CFAllocator?, _ data: CFData) -> SecCertificate?

/*!
	@function SecCertificateCopyData
	@abstract Return the DER representation of an X.509 certificate.
    @param certificate SecCertificate object created with
    SecCertificateCreateWithData().
	@result DER encoded X.509 certificate.
*/
@available(tvOS 2.0, *)
func SecCertificateCopyData(certificate: SecCertificate) -> CFData

/*!
	@function SecCertificateCopySubjectSummary
	@abstract Return a simple string which hopefully represents a human
    understandable summary.
    @param certificate SecCertificate object created with
    SecCertificateCreateWithData().
    @discussion All the data in this string comes from the certificate itself
    and thus it's in whatever language the certificate itself is in.
	@result A CFStringRef which the caller should CFRelease() once it's no
    longer needed.
*/
@available(tvOS 2.0, *)
func SecCertificateCopySubjectSummary(certificate: SecCertificate) -> CFString

/*!
	@function SecIdentityGetTypeID
	@abstract Returns the type identifier of SecIdentity instances.
	@result The CFTypeID of SecIdentity instances.
*/
@available(tvOS 2.0, *)
func SecIdentityGetTypeID() -> CFTypeID

/*!
	@function SecIdentityCopyCertificate
    @abstract Returns a reference to a certificate for the given identity
    reference.
    @param identityRef An identity reference.
	@param certificateRef On return, a pointer to the found certificate
    reference.
    @result A result code.  See "Security Error Codes" (SecBase.h).
*/
@available(tvOS 2.0, *)
func SecIdentityCopyCertificate(identityRef: SecIdentity, _ certificateRef: UnsafeMutablePointer<SecCertificate?>) -> OSStatus

/*!
	@function SecIdentityCopyPrivateKey
    @abstract Returns the private key associated with an identity.
    @param identityRef An identity reference.
	@param privateKeyRef On return, a pointer to the private key for the given
    identity. The private key must be of class type kSecAppleKeyItemClass.
    @result A result code.  See "Security Error Codes" (SecBase.h).
*/
@available(tvOS 2.0, *)
func SecIdentityCopyPrivateKey(identityRef: SecIdentity, _ privateKeyRef: UnsafeMutablePointer<SecKey?>) -> OSStatus

/*!
    @enum Import/Export options
    @discussion Predefined key constants used to pass in arguments to the
        import/export functions
    @constant kSecImportExportPassphrase Specifies a passphrase represented by
        a CFStringRef to be used to encrypt/decrypt.
*/
@available(tvOS 2.0, *)
let kSecImportExportPassphrase: CFString

/*!
    @enum Import/Export item description
    @discussion Predefined key constants used to pass back a CFArray with a
        CFDictionary per item.

    @constant kSecImportItemLabel a CFStringRef representing the item label.  
        This implementation specific identifier cannot be expected to have
        any format.
    @constant kSecImportItemKeyID a CFDataRef representing the key id.  Often
        the SHA-1 digest of the public key.
    @constant kSecImportItemIdentity a SecIdentityRef representing the identity.
    @constant kSecImportItemTrust a SecTrustRef set up with all relevant 
        certificates.  Not guaranteed to succesfully evaluate.
    @constant kSecImportItemCertChain a CFArrayRef holding all relevant 
        certificates for this item's identity
*/
@available(tvOS 2.0, *)
let kSecImportItemLabel: CFString
@available(tvOS 2.0, *)
let kSecImportItemKeyID: CFString
@available(tvOS 2.0, *)
let kSecImportItemTrust: CFString
@available(tvOS 2.0, *)
let kSecImportItemCertChain: CFString
@available(tvOS 2.0, *)
let kSecImportItemIdentity: CFString

/*!
	@function SecPKCS12Import
	@abstract return contents of a PKCS#12 formatted blob.
    @param pkcs12_data PKCS#12 formatted data
    @param options Dictionary containing options for decode.  A 
        kSecImportExportPassphrase is required at a minimum.  Only password-
        based PKCS#12 blobs are currently supported.
    @param items Array containing a dictionary for every item extracted.  See
        kSecImportItem constants.
	@result errSecSuccess in case of success. errSecDecode means either the
        blob can't be read or it is malformed. errSecAuthFailed means an
        incorrect password was passed, or data in the container got damaged.
*/
@available(tvOS 2.0, *)
func SecPKCS12Import(pkcs12_data: CFData, _ options: CFDictionary, _ items: UnsafeMutablePointer<CFArray?>) -> OSStatus

/*!
    @enum Class Key Constant
    @discussion Predefined key constant used to get or set item class values in
        a dictionary. Its value is one of the constants defined in the Value
        Constants for kSecClass.
    @constant kSecClass Specifies a dictionary key whose value is the item's
        class code.  You use this key to get or set a value of type CFTypeRef
        that contains the item class code.
*/
@available(tvOS 2.0, *)
let kSecClass: CFString

/*!
    @enum Class Value Constants
    @discussion Predefined item class constants used to get or set values in
        a dictionary. The kSecClass constant is the key and its value is one
        of the constants defined here.
    @constant kSecClassGenericPassword Specifies generic password items.
    @constant kSecClassInternetPassword Specifies Internet password items.
    @constant kSecClassCertificate Specifies certificate items.
    @constant kSecClassKey Specifies key items.
    @constant kSecClassIdentity Specifies identity items.
*/
@available(tvOS 2.0, *)
let kSecClassGenericPassword: CFString
@available(tvOS 2.0, *)
let kSecClassInternetPassword: CFString
@available(tvOS 2.0, *)
let kSecClassCertificate: CFString
@available(tvOS 2.0, *)
let kSecClassKey: CFString
@available(tvOS 2.0, *)
let kSecClassIdentity: CFString

/*!
    @enum Attribute Key Constants
    @discussion Predefined item attribute keys used to get or set values in a
        dictionary. Not all attributes apply to each item class. The table
        below lists the currently defined attributes for each item class:

    kSecClassGenericPassword item attributes:
        kSecAttrAccessible
        kSecAttrAccessControl
        kSecAttrAccessGroup
        kSecAttrCreationDate
        kSecAttrModificationDate
        kSecAttrDescription
        kSecAttrComment
        kSecAttrCreator
        kSecAttrType
        kSecAttrLabel
        kSecAttrIsInvisible
        kSecAttrIsNegative
        kSecAttrAccount
        kSecAttrService
        kSecAttrGeneric
        kSecAttrSynchronizable

    kSecClassInternetPassword item attributes:
        kSecAttrAccessible
        kSecAttrAccessControl
        kSecAttrAccessGroup
        kSecAttrCreationDate
        kSecAttrModificationDate
        kSecAttrDescription
        kSecAttrComment
        kSecAttrCreator
        kSecAttrType
        kSecAttrLabel
        kSecAttrIsInvisible
        kSecAttrIsNegative
        kSecAttrAccount
        kSecAttrSecurityDomain
        kSecAttrServer
        kSecAttrProtocol
        kSecAttrAuthenticationType
        kSecAttrPort
        kSecAttrPath
        kSecAttrSynchronizable

    kSecClassCertificate item attributes:
        kSecAttrAccessible
        kSecAttrAccessControl
        kSecAttrAccessGroup
        kSecAttrCertificateType
        kSecAttrCertificateEncoding
        kSecAttrLabel
        kSecAttrSubject
        kSecAttrIssuer
        kSecAttrSerialNumber
        kSecAttrSubjectKeyID
        kSecAttrPublicKeyHash
        kSecAttrSynchronizable

    kSecClassKey item attributes:
        kSecAttrAccessible
        kSecAttrAccessControl
        kSecAttrAccessGroup
        kSecAttrKeyClass
        kSecAttrLabel
        kSecAttrApplicationLabel
        kSecAttrIsPermanent
        kSecAttrApplicationTag
        kSecAttrKeyType
        kSecAttrKeySizeInBits
        kSecAttrEffectiveKeySize
        kSecAttrCanEncrypt
        kSecAttrCanDecrypt
        kSecAttrCanDerive
        kSecAttrCanSign
        kSecAttrCanVerify
        kSecAttrCanWrap
        kSecAttrCanUnwrap
        kSecAttrSynchronizable

    kSecClassIdentity item attributes:
        Since an identity is the combination of a private key and a
        certificate, this class shares attributes of both kSecClassKey and
        kSecClassCertificate.

     @constant kSecAttrAccessible Specifies a dictionary key whose value
     indicates when your application needs access to an item's data.  You
     should choose the most restrictive option that meets your application's
     needs to allow the system to protect that item in the best way possible.
     See the "kSecAttrAccessible Value Constants" section for a list of
     values which can be specified.
     IMPORTANT: This attribute is currently not supported for OS X keychain
     items, unless the kSecAttrSynchronizable attribute is also present. If
     both attributes are specified on either OS X or iOS, the value for the
     kSecAttrAccessible key may only be one whose name does not end with
     "ThisDeviceOnly", as those cannot sync to another device.

     @constant kSecAttrAccessControl Specifies a dictionary key whose value
     is SecAccessControl instance which contains access control conditions
     for item.

     @constant kSecAttrAccessGroup Specifies a dictionary key whose value is
     a CFStringRef indicating which access group a item is in.  The access
     groups that a particular application has membership in are determined by
     two entitlements for that application.  The application-identifier
     entitlement contains the application's single access group, unless
     there is a keychain-access-groups entitlement present.  The latter
     has as its value a list of access groups; the first item in this list
     is the default access group. Unless a specific access group is provided
     as the value of kSecAttrAccessGroup when SecItemAdd is called, new items
     are created in the application's default access group.  Specifying this
     attribute in SecItemCopyMatching, SecItemUpdate, or SecItemDelete calls
     limits the search to the specified access group (of which the calling
     application must be a member to obtain matching results.)  To share
     keychain items between multiple applications, each application must have
     a common group listed in its keychain-access-groups entitlement, and each
     must specify this shared access group name as the value for the
     kSecAttrAccessGroup key in the dictionary passed to SecItem functions.

     @constant kSecAttrSynchronizable Specifies a dictionary key whose value is
     a CFBooleanRef indicating whether the item in question can be synchronized.
     To add a new item which can be synced to other devices, or to obtain
     synchronizable results from a query, supply this key with a value of
     kCFBooleanTrue. If the key is not supplied, or has a value of
     kCFBooleanFalse, then no synchronizable items will be added or returned.
     A predefined value, kSecAttrSynchronizableAny, may be provided instead of
     kCFBooleanTrue if both synchronizable and non-synchronizable results are
     desired.

     IMPORTANT: Specifying the kSecAttrSynchronizable key has several caveats:

         - Updating or deleting items using the kSecAttrSynchronizable key will
           affect all copies of the item, not just the one on your local device.
           Be sure that it makes sense to use the same password on all devices
           before deciding to make a password synchronizable.
         - Only password items can currently be synchronized. Keychain syncing
           is not supported for certificates or cryptographic keys.
         - Items stored or obtained using the kSecAttrSynchronizable key cannot
           specify SecAccessRef-based access control with kSecAttrAccess. If a
           password is intended to be shared between multiple applications, the
           kSecAttrAccessGroup key must be specified, and each application
           using this password must have a 'keychain-access-groups' entitlement
           with the specified access group value.
         - Items stored or obtained using the kSecAttrSynchronizable key may
           not also specify a kSecAttrAccessible value which is incompatible
           with syncing (namely, those whose names end with "ThisDeviceOnly".)
         - Items stored or obtained using the kSecAttrSynchronizable key cannot
           be specified by reference. You must pass kSecReturnAttributes and/or
           kSecReturnData to retrieve results; kSecReturnRef is currently not
           supported for synchronizable items.
         - Persistent references to synchronizable items should be avoided;
           while they may work locally, they cannot be moved between devices,
           and may not resolve if the item is modified on some other device.
         - When specifying a query that uses the kSecAttrSynchronizable key,
           search keys are limited to the item's class and attributes.
           The only search constant which may be used is kSecMatchLimit; other
           constants using the kSecMatch prefix are not supported at this time.

    @constant kSecAttrCreationDate (read-only) Specifies a dictionary key whose
        value is the item's creation date. You use this key to get a value
        of type CFDateRef that represents the date the item was created.
    @constant kSecAttrModificationDate (read-only) Specifies a dictionary key
        whose value is the item's modification date. You use this key to get
        a value of type CFDateRef that represents the last time the item was
        updated.
    @constant kSecAttrDescription Specifies a dictionary key whose value is
        the item's description attribute. You use this key to set or get a
        value of type CFStringRef that represents a user-visible string
        describing this particular kind of item (e.g., "disk image password").
    @constant kSecAttrComment Specifies a dictionary key whose value is the
        item's comment attribute. You use this key to set or get a value of
        type CFStringRef containing the user-editable comment for this item.
    @constant kSecAttrCreator Specifies a dictionary key whose value is the
        item's creator attribute. You use this key to set or get a value of
        type CFNumberRef that represents the item's creator. This number is
        the unsigned integer representation of a four-character code (e.g.,
        'aCrt').
    @constant kSecAttrType Specifies a dictionary key whose value is the item's
        type attribute. You use this key to set or get a value of type
        CFNumberRef that represents the item's type. This number is the
        unsigned integer representation of a four-character code (e.g.,
        'aTyp').
    @constant kSecAttrLabel Specifies a dictionary key whose value is the
        item's label attribute. You use this key to set or get a value of
        type CFStringRef containing the user-visible label for this item.
    @constant kSecAttrIsInvisible Specifies a dictionary key whose value is the
        item's invisible attribute. You use this key to set or get a value
        of type CFBooleanRef that indicates whether the item is invisible
        (i.e., should not be displayed.)
    @constant kSecAttrIsNegative Specifies a dictionary key whose value is the
        item's negative attribute. You use this key to set or get a value of
        type CFBooleanRef that indicates whether there is a valid password
        associated with this keychain item. This is useful if your application
        doesn't want a password for some particular service to be stored in
        the keychain, but prefers that it always be entered by the user.
    @constant kSecAttrAccount Specifies a dictionary key whose value is the
        item's account attribute. You use this key to set or get a CFStringRef
        that contains an account name. (Items of class
        kSecClassGenericPassword, kSecClassInternetPassword have this
        attribute.)
    @constant kSecAttrService Specifies a dictionary key whose value is the
        item's service attribute. You use this key to set or get a CFStringRef
        that represents the service associated with this item. (Items of class
        kSecClassGenericPassword have this attribute.)
    @constant kSecAttrGeneric Specifies a dictionary key whose value is the
        item's generic attribute. You use this key to set or get a value of
        CFDataRef that contains a user-defined attribute. (Items of class
        kSecClassGenericPassword have this attribute.)
    @constant kSecAttrSecurityDomain Specifies a dictionary key whose value
        is the item's security domain attribute. You use this key to set or
        get a CFStringRef value that represents the Internet security domain.
        (Items of class kSecClassInternetPassword have this attribute.)
    @constant kSecAttrServer Specifies a dictionary key whose value is the
        item's server attribute. You use this key to set or get a value of
        type CFStringRef that contains the server's domain name or IP address.
        (Items of class kSecClassInternetPassword have this attribute.)
    @constant kSecAttrProtocol Specifies a dictionary key whose value is the
        item's protocol attribute. You use this key to set or get a value of
        type CFNumberRef that denotes the protocol for this item (see the
        SecProtocolType enum in SecKeychainItem.h). (Items of class
        kSecClassInternetPassword have this attribute.)
    @constant kSecAttrAuthenticationType Specifies a dictionary key whose value
        is the item's authentication type attribute. You use this key to set
        or get a value of type CFNumberRef that denotes the authentication
        scheme for this item (see the kSecAttrAuthenticationType value
        constants below).
    @constant kSecAttrPort Specifies a dictionary key whose value is the item's
        port attribute. You use this key to set or get a CFNumberRef value
        that represents an Internet port number. (Items of class
        kSecClassInternetPassword have this attribute.)
    @constant kSecAttrPath Specifies a dictionary key whose value is the item's
        path attribute, typically this is the path component of the URL.  You use
        this key to set or get a CFStringRef value that represents a path. (Items
        of class kSecClassInternetPassword have this attribute.)
    @constant kSecAttrSubject (read-only) Specifies a dictionary key whose
        value is the item's subject. You use this key to get a value of type
        CFDataRef that contains the X.500 subject name of a certificate.
        (Items of class kSecClassCertificate have this attribute.)
    @constant kSecAttrIssuer (read-only) Specifies a dictionary key whose value
        is the item's issuer. You use this key to get a value of type
        CFDataRef that contains the X.500 issuer name of a certificate. (Items
        of class kSecClassCertificate have this attribute.)
    @constant kSecAttrSerialNumber (read-only) Specifies a dictionary key whose
        value is the item's serial number.  You use this key to get a value
        of type CFDataRef that contains the serial number data of a
        certificate. (Items of class kSecClassCertificate have this
        attribute.)
    @constant kSecAttrSubjectKeyID (read-only) Specifies a dictionary key whose
        value is the item's subject key ID. You use this key to get a value
        of type CFDataRef that contains the subject key ID of a certificate.
        (Items of class kSecClassCertificate have this attribute.)
    @constant kSecAttrPublicKeyHash (read-only) Specifies a dictionary key
        whose value is the item's public key hash. You use this key to get a
        value of type CFDataRef that contains the hash of a certificate's
        public key. (Items of class kSecClassCertificate have this attribute.)
    @constant kSecAttrCertificateType (read-only) Specifies a dictionary key
        whose value is the item's certificate type. You use this key to get
        a value of type CFNumberRef that denotes the certificate type
        (Currently only the value of this attribute must be equal to the
        version of the X509 certificate.  So 1 for v1 2 for v2 and 3 for v3
        certificates). Only items of class kSecClassCertificate have this
        attribute.
    @constant kSecAttrCertificateEncoding (read-only) Specifies a dictionary
        key whose value is the item's certificate encoding. You use this key
        to get a value of type CFNumberRef that denotes the certificate
        encoding (Currently only the value 3 meaning
        kSecAttrCertificateEncodingDER is supported). Only items of class
        kSecClassCertificate have this attribute.
    @constant kSecAttrKeyClass (read only) Specifies a dictionary key whose
        value is one of kSecAttrKeyClassPublic, kSecAttrKeyClassPrivate or
        kSecAttrKeyClassSymmetric.
    @constant kSecAttrApplicationLabel Specifies a dictionary key whose value
        is the key's application label attribute. This is different from the
        kSecAttrLabel (which is intended to be human-readable). This attribute
        is used to look up a key programmatically; in particular, for keys of
        class kSecAttrKeyClassPublic and kSecAttrKeyClassPrivate, the value of
        this attribute is the hash of the public key.
    @constant kSecAttrIsPermanent Specifies a dictionary key whose value is a
        CFBooleanRef indicating whether the key in question will be stored
        permanently.
    @constant kSecAttrApplicationTag Specifies a dictionary key whose value is a
        CFDataRef containing private tag data.
    @constant kSecAttrKeyType Specifies a dictionary key whose value is a
        CFNumberRef indicating the algorithm associated with this key
        (Currently only the value 42 is supported, alternatively you can use
        kSecAttrKeyTypeRSA).
    @constant kSecAttrKeySizeInBits Specifies a dictionary key whose value
        is a CFNumberRef indicating the number of bits in this key.
    @constant kSecAttrEffectiveKeySize Specifies a dictionary key whose value
        is a CFNumberRef indicating the effective number of bits in this key.
        For example, a DES key has a kSecAttrKeySizeInBits of 64, but a
        kSecAttrEffectiveKeySize of 56 bits.
    @constant kSecAttrCanEncrypt Specifies a dictionary key whole value is a
        CFBooleanRef indicating whether the key in question can be used to
        encrypt data.
    @constant kSecAttrCanDecrypt Specifies a dictionary key whose value is a
        CFBooleanRef indicating whether the key in question can be used to
        decrypt data.
    @constant kSecAttrCanDerive Specifies a dictionary key whole value is a
        CFBooleanRef indicating whether the key in question can be used to
        derive another key.
    @constant kSecAttrCanSign Specifies a dictionary key whole value is a
        CFBooleanRef indicating whether the key in question can be used to
        create a digital signature.
    @constant kSecAttrCanVerify Specifies a dictionary key whole value is a
        CFBooleanRef indicating whether the key in question can be used to
        verify a digital signature.
    @constant kSecAttrCanWrap Specifies a dictionary key whole value is a
        CFBooleanRef indicating whether the key in question can be used to
        wrap another key.
    @constant kSecAttrCanUnwrap Specifies a dictionary key whole value is a
        CFBooleanRef indicating whether the key in question can be used to
        unwrap another key.
    @constant kSecAttrSyncViewHint Specifies a dictionary key whose value is
	a CFStringRef. This value is part of the primary key of each item, and
	can be used to help distiguish Sync Views when defining their
	queries.
    @constant kSecAttrTokenID Specifies a dictionary key whose presence
	indicates that item is backed by external token. Value of this attribute
	is CFStringRef uniquely identifying containing token. When this attribute
	is not present, item is stored in internal keychain database.
	Note that once item is created, this attribute cannot be changed - in other
	words it is not possible to migrate existing items to, from or between tokens.
	Currently the only available value for this attribute is
	kSecAttrTokenIDSecureEnclave, which indicates that item (private key) is
	backed by device's Secure Enclave.
 */
@available(tvOS 4.0, *)
let kSecAttrAccessible: CFString
@available(tvOS 8.0, *)
let kSecAttrAccessControl: CFString
@available(tvOS 3.0, *)
let kSecAttrAccessGroup: CFString
@available(tvOS 7.0, *)
let kSecAttrSynchronizable: CFString
@available(tvOS 2.0, *)
let kSecAttrCreationDate: CFString
@available(tvOS 2.0, *)
let kSecAttrModificationDate: CFString
@available(tvOS 2.0, *)
let kSecAttrDescription: CFString
@available(tvOS 2.0, *)
let kSecAttrComment: CFString
@available(tvOS 2.0, *)
let kSecAttrCreator: CFString
@available(tvOS 2.0, *)
let kSecAttrType: CFString
@available(tvOS 2.0, *)
let kSecAttrLabel: CFString
@available(tvOS 2.0, *)
let kSecAttrIsInvisible: CFString
@available(tvOS 2.0, *)
let kSecAttrIsNegative: CFString
@available(tvOS 2.0, *)
let kSecAttrAccount: CFString
@available(tvOS 2.0, *)
let kSecAttrService: CFString
@available(tvOS 2.0, *)
let kSecAttrGeneric: CFString
@available(tvOS 2.0, *)
let kSecAttrSecurityDomain: CFString
@available(tvOS 2.0, *)
let kSecAttrServer: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocol: CFString
@available(tvOS 2.0, *)
let kSecAttrAuthenticationType: CFString
@available(tvOS 2.0, *)
let kSecAttrPort: CFString
@available(tvOS 2.0, *)
let kSecAttrPath: CFString
@available(tvOS 2.0, *)
let kSecAttrSubject: CFString
@available(tvOS 2.0, *)
let kSecAttrIssuer: CFString
@available(tvOS 2.0, *)
let kSecAttrSerialNumber: CFString
@available(tvOS 2.0, *)
let kSecAttrSubjectKeyID: CFString
@available(tvOS 2.0, *)
let kSecAttrPublicKeyHash: CFString
@available(tvOS 2.0, *)
let kSecAttrCertificateType: CFString
@available(tvOS 2.0, *)
let kSecAttrCertificateEncoding: CFString
@available(tvOS 2.0, *)
let kSecAttrKeyClass: CFString
@available(tvOS 2.0, *)
let kSecAttrApplicationLabel: CFString
@available(tvOS 2.0, *)
let kSecAttrIsPermanent: CFString
@available(tvOS 2.0, *)
let kSecAttrApplicationTag: CFString
@available(tvOS 2.0, *)
let kSecAttrKeyType: CFString
@available(tvOS 2.0, *)
let kSecAttrKeySizeInBits: CFString
@available(tvOS 2.0, *)
let kSecAttrEffectiveKeySize: CFString
@available(tvOS 2.0, *)
let kSecAttrCanEncrypt: CFString
@available(tvOS 2.0, *)
let kSecAttrCanDecrypt: CFString
@available(tvOS 2.0, *)
let kSecAttrCanDerive: CFString
@available(tvOS 2.0, *)
let kSecAttrCanSign: CFString
@available(tvOS 2.0, *)
let kSecAttrCanVerify: CFString
@available(tvOS 2.0, *)
let kSecAttrCanWrap: CFString
@available(tvOS 2.0, *)
let kSecAttrCanUnwrap: CFString
@available(tvOS 9.0, *)
let kSecAttrSyncViewHint: CFString
@available(tvOS 9.0, *)
let kSecAttrTokenID: CFString

/*!
    @enum kSecAttrAccessible Value Constants
    @discussion Predefined item attribute constants used to get or set values
        in a dictionary. The kSecAttrAccessible constant is the key and its
        value is one of the constants defined here.
        When asking SecItemCopyMatching to return the item's data, the error
        errSecInteractionNotAllowed will be returned if the item's data is not
        available until a device unlock occurs.
    @constant kSecAttrAccessibleWhenUnlocked Item data can only be accessed
        while the device is unlocked. This is recommended for items that only
        need be accesible while the application is in the foreground.  Items
        with this attribute will migrate to a new device when using encrypted
        backups.
    @constant kSecAttrAccessibleAfterFirstUnlock Item data can only be
        accessed once the device has been unlocked after a restart.  This is
        recommended for items that need to be accesible by background
        applications. Items with this attribute will migrate to a new device
        when using encrypted backups.
    @constant kSecAttrAccessibleAlways Item data can always be accessed
        regardless of the lock state of the device.  This is not recommended
        for anything except system use. Items with this attribute will migrate
        to a new device when using encrypted backups.
    @constant kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly Item data can
         only be accessed while the device is unlocked. This class is only 
         available if a passcode is set on the device. This is recommended for
         items that only need to be accessible while the application is in the
         foreground. Items with this attribute will never migrate to a new 
         device, so after a backup is restored to a new device, these items 
         will be missing. No items can be stored in this class on devices 
         without a passcode. Disabling the device passcode will cause all 
         items in this class to be deleted.
    @constant kSecAttrAccessibleWhenUnlockedThisDeviceOnly Item data can only
        be accessed while the device is unlocked. This is recommended for items
        that only need be accesible while the application is in the foreground.
        Items with this attribute will never migrate to a new device, so after
        a backup is restored to a new device, these items will be missing.
    @constant kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly Item data can
        only be accessed once the device has been unlocked after a restart.
        This is recommended for items that need to be accessible by background
        applications. Items with this attribute will never migrate to a new
        device, so after a backup is restored to a new device these items will
        be missing.
    @constant kSecAttrAccessibleAlwaysThisDeviceOnly Item data can always
        be accessed regardless of the lock state of the device.  This option
        is not recommended for anything except system use. Items with this
        attribute will never migrate to a new device, so after a backup is
        restored to a new device, these items will be missing.
*/
@available(tvOS 4.0, *)
let kSecAttrAccessibleWhenUnlocked: CFString
@available(tvOS 4.0, *)
let kSecAttrAccessibleAfterFirstUnlock: CFString
@available(tvOS 4.0, *)
let kSecAttrAccessibleAlways: CFString
@available(tvOS 8.0, *)
let kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly: CFString
@available(tvOS 4.0, *)
let kSecAttrAccessibleWhenUnlockedThisDeviceOnly: CFString
@available(tvOS 4.0, *)
let kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly: CFString
@available(tvOS 4.0, *)
let kSecAttrAccessibleAlwaysThisDeviceOnly: CFString

/*!
    @enum kSecAttrProtocol Value Constants
    @discussion Predefined item attribute constants used to get or set values
		in a dictionary. The kSecAttrProtocol constant is the key and its
		value is one of the constants defined here.
    @constant kSecAttrProtocolFTP.
    @constant kSecAttrProtocolFTPAccount.
    @constant kSecAttrProtocolHTTP.
    @constant kSecAttrProtocolIRC.
    @constant kSecAttrProtocolNNTP.
    @constant kSecAttrProtocolPOP3.
    @constant kSecAttrProtocolSMTP.
    @constant kSecAttrProtocolSOCKS.
    @constant kSecAttrProtocolIMAP.
    @constant kSecAttrProtocolLDAP.
    @constant kSecAttrProtocolAppleTalk.
    @constant kSecAttrProtocolAFP.
    @constant kSecAttrProtocolTelnet.
    @constant kSecAttrProtocolSSH.
    @constant kSecAttrProtocolFTPS.
    @constant kSecAttrProtocolHTTPS.
    @constant kSecAttrProtocolHTTPProxy.
    @constant kSecAttrProtocolHTTPSProxy.
    @constant kSecAttrProtocolFTPProxy.
    @constant kSecAttrProtocolSMB.
    @constant kSecAttrProtocolRTSP.
    @constant kSecAttrProtocolRTSPProxy.
    @constant kSecAttrProtocolDAAP.
    @constant kSecAttrProtocolEPPC.
    @constant kSecAttrProtocolIPP.
    @constant kSecAttrProtocolNNTPS.
    @constant kSecAttrProtocolLDAPS.
    @constant kSecAttrProtocolTelnetS.
    @constant kSecAttrProtocolIMAPS.
    @constant kSecAttrProtocolIRCS.
    @constant kSecAttrProtocolPOP3S.
*/
@available(tvOS 2.0, *)
let kSecAttrProtocolFTP: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolFTPAccount: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolHTTP: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolIRC: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolNNTP: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolPOP3: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolSMTP: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolSOCKS: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolIMAP: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolLDAP: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolAppleTalk: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolAFP: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolTelnet: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolSSH: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolFTPS: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolHTTPS: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolHTTPProxy: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolHTTPSProxy: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolFTPProxy: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolSMB: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolRTSP: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolRTSPProxy: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolDAAP: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolEPPC: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolIPP: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolNNTPS: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolLDAPS: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolTelnetS: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolIMAPS: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolIRCS: CFString
@available(tvOS 2.0, *)
let kSecAttrProtocolPOP3S: CFString

/*!
    @enum kSecAttrAuthenticationType Value Constants
    @discussion Predefined item attribute constants used to get or set values
		in a dictionary. The kSecAttrAuthenticationType constant is the key
		and its value is one of the constants defined here.
    @constant kSecAttrAuthenticationTypeNTLM.
    @constant kSecAttrAuthenticationTypeMSN.
    @constant kSecAttrAuthenticationTypeDPA.
    @constant kSecAttrAuthenticationTypeRPA.
    @constant kSecAttrAuthenticationTypeHTTPBasic.
    @constant kSecAttrAuthenticationTypeHTTPDigest.
    @constant kSecAttrAuthenticationTypeHTMLForm.
    @constant kSecAttrAuthenticationTypeDefault.
*/
@available(tvOS 2.0, *)
let kSecAttrAuthenticationTypeNTLM: CFString
@available(tvOS 2.0, *)
let kSecAttrAuthenticationTypeMSN: CFString
@available(tvOS 2.0, *)
let kSecAttrAuthenticationTypeDPA: CFString
@available(tvOS 2.0, *)
let kSecAttrAuthenticationTypeRPA: CFString
@available(tvOS 2.0, *)
let kSecAttrAuthenticationTypeHTTPBasic: CFString
@available(tvOS 2.0, *)
let kSecAttrAuthenticationTypeHTTPDigest: CFString
@available(tvOS 2.0, *)
let kSecAttrAuthenticationTypeHTMLForm: CFString
@available(tvOS 2.0, *)
let kSecAttrAuthenticationTypeDefault: CFString

/*!
    @enum kSecAttrKeyClass Value Constants
    @discussion Predefined item attribute constants used to get or set values
		in a dictionary. The kSecAttrKeyClass constant is the key
		and its value is one of the constants defined here.
    @constant kSecAttrKeyClassPublic.
    @constant kSecAttrKeyClassPrivate.
    @constant kSecAttrKeyClassSymmetric.
*/
@available(tvOS 2.0, *)
let kSecAttrKeyClassPublic: CFString
@available(tvOS 2.0, *)
let kSecAttrKeyClassPrivate: CFString
@available(tvOS 2.0, *)
let kSecAttrKeyClassSymmetric: CFString

/*!
    @enum kSecAttrKeyType Value Constants
    @discussion Predefined item attribute constants used to get or set values
		in a dictionary. The kSecAttrKeyType constant is the key
		and its value is one of the constants defined here.
    @constant kSecAttrKeyTypeRSA.
    @constant kSecAttrKeyTypeEC.
*/
@available(tvOS 2.0, *)
let kSecAttrKeyTypeRSA: CFString
@available(tvOS 4.0, *)
let kSecAttrKeyTypeEC: CFString

/*!
    @enum kSecAttrSynchronizable Value Constants
    @discussion Predefined item attribute constants used to get or set values
		in a dictionary. The kSecAttrSynchronizable constant is the key
		and its value is one of the constants defined here.
    @constant kSecAttrSynchronizableAny Specifies that both synchronizable and
        non-synchronizable results should be returned from this query. This may
        be used as a value for the kSecAttrSynchronizable dictionary key in a
        call to SecItemCopyMatching, SecItemUpdate, or SecItemDelete.
*/
@available(tvOS 7.0, *)
let kSecAttrSynchronizableAny: CFString

/*!
    @enum Search Constants
    @discussion Predefined search constants used to set values in a query
        dictionary. You can specify a combination of search attributes and
        item attributes when looking for matching items with the
        SecItemCopyMatching function.
    @constant kSecMatchPolicy Specifies a dictionary key whose value is a
        SecPolicyRef. If provided, returned certificates or identities must
        verify with this policy.
    @constant kSecMatchIssuers Specifies a dictionary key whose value is a
        CFArray of X.500 names (of type CFDataRef). If provided, returned
        certificates or identities will be limited to those whose
        certificate chain contains one of the issuers provided in this list.
    @constant kSecMatchEmailAddressIfPresent Specifies a dictionary key whose
        value is a CFStringRef containing an RFC822 email address. If
        provided, returned certificates or identities will be limited to those
        that contain the address, or do not contain any email address.
    @constant kSecMatchSubjectContains Specifies a dictionary key whose value
        is a CFStringRef. If provided, returned certificates or identities
        will be limited to those containing this string in the subject.
    @constant kSecMatchCaseInsensitive Specifies a dictionary key whose value
        is a CFBooleanRef. If this value is kCFBooleanFalse, or is not
        provided, then case-sensitive string matching is performed.
    @constant kSecMatchTrustedOnly Specifies a dictionary key whose value is
        a CFBooleanRef. If provided with a value of kCFBooleanTrue, only
        certificates which can be verified back to a trusted anchor will be
        returned. If this value is kCFBooleanFalse, or is not provided, then
        both trusted and untrusted certificates may be returned.
    @constant kSecMatchValidOnDate Specifies a dictionary key whose value is
        of type CFDateRef. If provided, returned keys, certificates or
        identities will be limited to those which are valid for the given date.
        Pass a value of kCFNull to indicate the current date.
    @constant kSecMatchLimit Specifies a dictionary key whose value is a
        CFNumberRef. If provided, this value specifies the maximum number of
        results to return. If not provided, results are limited to the first
        item found. Predefined values are provided for a single item
        (kSecMatchLimitOne) and all matching items (kSecMatchLimitAll).
    @constant kSecMatchLimitOne Specifies that results are limited to the first
        item found; used as a value for the kSecMatchLimit dictionary key.
    @constant kSecMatchLimitAll Specifies that an unlimited number of results
        may be returned; used as a value for the kSecMatchLimit dictionary
        key.
*/
@available(tvOS 2.0, *)
let kSecMatchPolicy: CFString
@available(tvOS 2.0, *)
let kSecMatchItemList: CFString
@available(tvOS 2.0, *)
let kSecMatchSearchList: CFString
@available(tvOS 2.0, *)
let kSecMatchIssuers: CFString
@available(tvOS 2.0, *)
let kSecMatchEmailAddressIfPresent: CFString
@available(tvOS 2.0, *)
let kSecMatchSubjectContains: CFString
@available(tvOS 2.0, *)
let kSecMatchCaseInsensitive: CFString
@available(tvOS 2.0, *)
let kSecMatchTrustedOnly: CFString
@available(tvOS 2.0, *)
let kSecMatchValidOnDate: CFString
@available(tvOS 2.0, *)
let kSecMatchLimit: CFString
@available(tvOS 2.0, *)
let kSecMatchLimitOne: CFString
@available(tvOS 2.0, *)
let kSecMatchLimitAll: CFString

/*!
    @enum Return Type Key Constants
    @discussion Predefined return type keys used to set values in a dictionary.
        You use these keys to specify the type of results which should be
        returned by the SecItemCopyMatching or SecItemAdd function. You can
        specify zero or more of these return types. If more than one of these
        result types is specified, the result is returned as a CFDictionaryRef
        whose keys are the result types and values are the requested data.
    @constant kSecReturnData Specifies a dictionary key whose value is of type
        CFBooleanRef. A value of kCFBooleanTrue indicates that the data of
        an item (CFDataRef) should be returned. For keys and password
        items, data is secret (encrypted) and may require the user to enter
        a password for access.
    @constant kSecReturnAttributes Specifies a dictionary key whose value is
        of type CFBooleanRef. A value of kCFBooleanTrue indicates that the
        (non-encrypted) attributes of an item (CFDictionaryRef) should be
        returned.
    @constant kSecReturnRef Specifies a dictionary key whose value is a
        CFBooleanRef. A value of kCFBooleanTrue indicates that a reference
        should be returned. Depending on the item class requested, the
        returned reference(s) may be of type SecKeychainItemRef, SecKeyRef,
        SecCertificateRef, or SecIdentityRef.
    @constant kSecReturnPersistentRef Specifies a dictionary key whose value
        is of type CFBooleanRef. A value of kCFBooleanTrue indicates that a
        persistent reference to an item (CFDataRef) should be returned.
*/
@available(tvOS 2.0, *)
let kSecReturnData: CFString
@available(tvOS 2.0, *)
let kSecReturnAttributes: CFString
@available(tvOS 2.0, *)
let kSecReturnRef: CFString
@available(tvOS 2.0, *)
let kSecReturnPersistentRef: CFString

/*!
    @enum Value Type Key Constants
    @discussion Predefined value type keys used to pass values in a dictionary.
        You can specify zero or more of these types depending on the function
        you are calling.  For SecItemCopyMatching or SecItemAdd these are
        used as keys in the results dictionary.
    @constant kSecValueData Specifies a dictionary key whose value is of type
        CFDataRef.  For keys and password items, data is secret (encrypted)
        and may require the user to enter a password for access.
    @constant kSecValueRef Specifies a dictionary key whose value, depending
        on the item class requested, is of type SecKeychainItemRef, SecKeyRef,
        SecCertificateRef, or SecIdentityRef.
    @constant kSecValuePersistentRef Specifies a dictionary key whose value
        is of type CFDataRef.  The bytes in this CFDataRef can be stored by
        the caller and used on a subsequent invocation of the application (or
        even a different application) to retrieve the item referenced by it.
*/
@available(tvOS 2.0, *)
let kSecValueData: CFString
@available(tvOS 2.0, *)
let kSecValueRef: CFString
@available(tvOS 2.0, *)
let kSecValuePersistentRef: CFString

/*!
    @enum Other Constants
    @discussion Predefined constants used to set values in a dictionary.
    @constant kSecUseItemList Specifies a dictionary key whose value is a
        CFArray of items. If provided, this array is treated as the set of
        all possible items to search, or add if the API being called is
        SecItemAdd. The items in this array may be of type SecKeyRef,
        SecCertificateRef, SecIdentityRef, or CFDataRef (for a persistent
        item reference.) The items in the array must all be of the same
        type. When this attribute is provided, no keychains are searched.
    @constant kSecUseOperationPrompt Specifies a dictionary key whose value
        is a CFStringRef that represents a user-visible string describing
        the operation for which the application is attempting to authenticate.
        The application is responsible for the text localization.
    @constant kSecUseNoAuthenticationUI Specifies a dictionary key whose value
        is a CFBooleanRef. If provided with a value of kCFBooleanTrue, the error
        errSecInteractionNotAllowed will be returned if the item is attempting
        to authenticate with UI.
    @constant kSecUseAuthenticationUI Specifies a dictionary key whose value
        is one of kSecUseAuthenticationUIAllow, kSecUseAuthenticationUIFail, kSecUseAuthenticationUISkip.
    @constant kSecUseAuthenticationContext Specifies a dictionary key whose value
        is LAContext to be used for keychain item authentication.
        * If the item requires authentication and this key is omitted, a new context
          will be created just for the purpose of the single call.
        * If the specified context has been previously authenticated, the operation
          will succeed without asking user for authentication.
        * If the specified context has not been previously authenticated, the new
          authentication will be started on this context, allowing caller to
          eventually reuse the sucessfully authenticated context in subsequent
          keychain operations.
*/
@available(tvOS 2.0, *)
let kSecUseItemList: CFString
@available(tvOS 8.0, *)
let kSecUseOperationPrompt: CFString
@available(tvOS, introduced=8.0, deprecated=9.0, message="Use a kSecAuthenticationUI instead.")
let kSecUseNoAuthenticationUI: CFString
@available(tvOS 9.0, *)
let kSecUseAuthenticationUI: CFString
@available(tvOS 9.0, *)
let kSecUseAuthenticationContext: CFString

/*!
    @enum kSecUseAuthenticationUI Value Constants
    @discussion Predefined item attribute constants used to get or set values
        in a dictionary. The kSecUseAuthenticationUI constant is the key and its
        value is one of the constants defined here.
        If the key kSecUseAuthenticationUI not provided then kSecUseAuthenticationUIAllow
        is used as default.
    @constant kSecUseAuthenticationUIAllow Specifies that authenticate UI can appear.
    @constant kSecUseAuthenticationUIFail Specifies that the error
        errSecInteractionNotAllowed will be returned if an item needs
        to authenticate with UI
    @constant kSecUseAuthenticationUIAllowSkip Specifies that all items which need
        to authenticate with UI will be silently skipped. This value can be used
        only with SecItemCopyMatching.
 */
@available(tvOS 9.0, *)
let kSecUseAuthenticationUIAllow: CFString
@available(tvOS 9.0, *)
let kSecUseAuthenticationUIFail: CFString
@available(tvOS 9.0, *)
let kSecUseAuthenticationUISkip: CFString

/*!
     @enum kSecAttrTokenID Value Constants
     @discussion Predefined item attribute constant used to get or set values
         in a dictionary. The kSecAttrTokenID constant is the key and its value
         can be kSecAttrTokenIDSecureEnclave.
     @constant kSecAttrTokenIDSecureEnclave Specifies well-known identifier of the
         token implemented using device's Secure Enclave. The only keychain items
         supported by the Secure Enclave token are 256-bit elliptic curve keys
         (kSecAttrKeyTypeEC).  Keys must be generated on the secure enclave using
         SecKeyGenerateKeyPair call with kSecAttrTokenID set to
         kSecAttrTokenIDSecureEnclave in the parameters dictionary, it is not
         possible to import pregenerated keys to kSecAttrTokenIDSecureEnclave token.
*/
@available(tvOS 9.0, *)
let kSecAttrTokenIDSecureEnclave: CFString

/*!
    @function SecItemCopyMatching
    @abstract Returns one or more items which match a search query.
    @param query A dictionary containing an item class specification and
        optional attributes for controlling the search. See the "Keychain
        Search Attributes" section for a description of currently defined
        search attributes.
    @param result On return, a CFTypeRef reference to the found item(s). The
        exact type of the result is based on the search attributes supplied
        in the query, as discussed below.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion Attributes defining a search are specified by adding key/value
        pairs to the query dictionary.

    A typical query consists of:

      * a kSecClass key, whose value is a constant from the Class
        Constants section that specifies the class of item(s) to be searched
      * one or more keys from the "Attribute Key Constants" section, whose value
        is the attribute data to be matched
      * one or more keys from the "Search Constants" section, whose value is
        used to further refine the search
      * a key from the "Return Type Key Constants" section, specifying the type of
        results desired

   Result types are specified as follows:

      * To obtain the data of a matching item (CFDataRef), specify
        kSecReturnData with a value of kCFBooleanTrue.
      * To obtain the attributes of a matching item (CFDictionaryRef), specify
        kSecReturnAttributes with a value of kCFBooleanTrue.
      * To obtain a reference to a matching item (SecKeychainItemRef,
        SecKeyRef, SecCertificateRef, or SecIdentityRef), specify kSecReturnRef
        with a value of kCFBooleanTrue.
      * To obtain a persistent reference to a matching item (CFDataRef),
        specify kSecReturnPersistentRef with a value of kCFBooleanTrue. Note
        that unlike normal references, a persistent reference may be stored
        on disk or passed between processes.
      * If more than one of these result types is specified, the result is
        returned as a CFDictionaryRef containing all the requested data.
      * If a result type is not specified, no results are returned.

    By default, this function returns only the first match found. To obtain
    more than one matching item at a time, specify kSecMatchLimit with a value
    greater than 1. The result will be a CFArrayRef containing up to that
    number of matching items; the items' types are described above.

    To filter a provided list of items down to those matching the query,
    specify a kSecMatchItemList whose value is a CFArray of SecKeychainItemRef,
    SecKeyRef, SecCertificateRef, or SecIdentityRef items. The objects in the
    provided array must be of the same type.

    To convert from a persistent item reference to a normal item reference,
    specify a kSecValuePersistentRef whose value a CFDataRef (the persistent
    reference), and a kSecReturnRef whose value is kCFBooleanTrue.
*/
@available(tvOS 2.0, *)
func SecItemCopyMatching(query: CFDictionary, _ result: UnsafeMutablePointer<AnyObject?>) -> OSStatus

/*!
    @function SecItemAdd
    @abstract Add one or more items to a keychain.
    @param attributes A dictionary containing an item class specification and
        optional entries specifying the item's attribute values. See the
        "Attribute Key Constants" section for a description of currently defined
        attributes.
    @param result On return, a CFTypeRef reference to the newly added item(s).
        The exact type of the result is based on the values supplied
        in attributes, as discussed below. Pass NULL if this result is not
        required.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion Attributes defining an item are specified by adding key/value
        pairs to the attributes dictionary.  To add multiple items to a keychain
        at once use the kSecUseItemList key with an array of items as its value.
        This is currently only supported for non password items.

    Result types are specified as follows:

      * To obtain the data of the added item (CFDataRef), specify
        kSecReturnData with a value of kCFBooleanTrue.
      * To obtain all the attributes of the added item (CFDictionaryRef),
        specify kSecReturnAttributes with a value of kCFBooleanTrue.
      * To obtain a reference to the added item (SecKeychainItemRef, SecKeyRef,
        SecCertificateRef, or SecIdentityRef), specify kSecReturnRef with a
        value of kCFBooleanTrue.
      * To obtain a persistent reference to the added item (CFDataRef), specify
        kSecReturnPersistentRef with a value of kCFBooleanTrue. Note that
        unlike normal references, a persistent reference may be stored on disk
        or passed between processes.
      * If more than one of these result types is specified, the result is
        returned as a CFDictionaryRef containing all the requested data.
      * If a result type is not specified, no results are returned.
*/
@available(tvOS 2.0, *)
func SecItemAdd(attributes: CFDictionary, _ result: UnsafeMutablePointer<AnyObject?>) -> OSStatus

/*!
    @function SecItemUpdate
    @abstract Modify zero or more items which match a search query.
    @param query A dictionary containing an item class specification and
        optional attributes for controlling the search. See the "Attribute
        Constants" and "Search Constants" sections for a description of
        currently defined search attributes.
    @param attributesToUpdate A dictionary containing one or more attributes
        whose values should be set to the ones specified. Only real keychain
        attributes are permitted in this dictionary (no "meta" attributes are
        allowed.) See the "Attribute Key Constants" section for a description of
        currently defined value attributes.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion Attributes defining a search are specified by adding key/value
        pairs to the query dictionary.
*/
@available(tvOS 2.0, *)
func SecItemUpdate(query: CFDictionary, _ attributesToUpdate: CFDictionary) -> OSStatus

/*!
    @function SecItemDelete
    @abstract Delete zero or more items which match a search query.
    @param query A dictionary containing an item class specification and
        optional attributes for controlling the search. See the "Attribute
        Constants" and "Search Constants" sections for a description of
        currently defined search attributes.
    @result A result code.  See "Security Error Codes" (SecBase.h).
    @discussion Attributes defining a search are specified by adding key/value
        pairs to the query dictionary.

    By default, this function deletes all items matching the specified query.
    You can change this behavior by specifying one of the follow keys:

      * To delete an item identified by a transient reference, specify
        kSecValueRef with a reference returned by using the kSecReturnRef
        key in a previous call to SecItemCopyMatching or SecItemAdd.
      * To delete an item identified by a persistent reference, specify
        kSecValuePersistentRef with a persistent reference returned by
        using the kSecReturnPersistentRef key to SecItemCopyMatching or
        SecItemAdd.
      * To delete multiple items specify kSecMatchItemList with an array
        of references.
      * If more than one of these result keys is specified, the behavior is
        undefined.
*/
@available(tvOS 2.0, *)
func SecItemDelete(query: CFDictionary) -> OSStatus
struct SecPadding : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var None: SecPadding { get }
  static var PKCS1: SecPadding { get }
  static var OAEP: SecPadding { get }
  static var SigRaw: SecPadding { get }
  static var PKCS1MD2: SecPadding { get }
  static var PKCS1MD5: SecPadding { get }
  static var PKCS1SHA1: SecPadding { get }
  static var PKCS1SHA224: SecPadding { get }
  static var PKCS1SHA256: SecPadding { get }
  static var PKCS1SHA384: SecPadding { get }
  static var PKCS1SHA512: SecPadding { get }
}

/*!
	@function SecKeyGetTypeID
	@abstract Returns the type identifier of SecKey instances.
	@result The CFTypeID of SecKey instances.
*/
@available(tvOS 2.0, *)
func SecKeyGetTypeID() -> CFTypeID

/*!
    @enum Dictionary key constants for SecKeyGeneratePair API.
    @discussion Predefined key constants used to get or set values
		in a dictionary.
    @constant kSecPrivateKeyAttrs The value for this key is a CFDictionaryRef
	containing attributes specific for the private key to be generated.
    @constant kSecPublicKeyAttrs The value for this key is a CFDictionaryRef
	containing attributes specific for the public key to be generated.
*/
@available(tvOS 2.0, *)
let kSecPrivateKeyAttrs: CFString
@available(tvOS 2.0, *)
let kSecPublicKeyAttrs: CFString

/*!
    @function SecKeyGeneratePair
    @abstract Generate a private/public keypair.
    @param parameters A dictionary containing one or more key-value pairs.
	See the discussion sections below for a complete overview of options.
    @param publicKey On return, a SecKeyRef reference to the public key.
    @param privateKey On return, a SecKeyRef reference to the private key.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion In order to generate a keypair the parameters dictionary must
	at least contain the following keys:

	  * kSecAttrKeyType with a value being kSecAttrKeyTypeRSA or any other
		kSecAttrKeyType defined in SecItem.h
      * kSecAttrKeySizeInBits with a value being a CFNumberRef or CFStringRef
	    containing the requested key size in bits.  Example sizes for RSA
		keys are: 512, 768, 1024, 2048.

	  The values below may be set either in the top-level dictionary or in a
	  dictionary that is the value of the kSecPrivateKeyAttrs or
	  kSecPublicKeyAttrs key in the top-level dictionary.  Setting these
	  attributes explicitly will override the defaults below.  See SecItem.h
	  for detailed information on these attributes including the types of
      the values.

      * kSecAttrLabel default NULL
	  * kSecAttrIsPermanent if this key is present and has a Boolean
	    value of true, the key or key pair will be added to the default
	    keychain.
      * kSecAttrTokenID if this key should be generated on specified token.  This
        attribute can contain CFStringRef and can be present only in the top-level
        parameters dictionary.
      * kSecAttrApplicationTag default NULL
      * kSecAttrEffectiveKeySize default NULL same as kSecAttrKeySizeInBits
      * kSecAttrCanEncrypt default false for private keys, true for public keys
      * kSecAttrCanDecrypt default true for private keys, false for public keys
      * kSecAttrCanDerive default true
      * kSecAttrCanSign default true for private keys, false for public keys
      * kSecAttrCanVerify default false for private keys, true for public keys
      * kSecAttrCanWrap default false for private keys, true for public keys
      * kSecAttrCanUnwrap default true for private keys, false for public keys

*/
@available(tvOS 2.0, *)
func SecKeyGeneratePair(parameters: CFDictionary, _ publicKey: UnsafeMutablePointer<SecKey?>, _ privateKey: UnsafeMutablePointer<SecKey?>) -> OSStatus

/*!
    @function SecKeyRawSign
    @abstract Given a private key and data to sign, generate a digital
    signature. 
    @param key Private key with which to sign.
    @param padding See Padding Types above, typically kSecPaddingPKCS1SHA1.
    @param dataToSign The data to be signed, typically the digest of the
    actual data.
    @param dataToSignLen Length of dataToSign in bytes.
    @param sig Pointer to buffer in which the signature will be returned.
    @param sigLen IN/OUT maximum length of sig buffer on input, actualy
    length of sig on output.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion If the padding argument is kSecPaddingPKCS1, PKCS1 padding
    will be performed prior to signing. If this argument is kSecPaddingNone,
    the incoming data will be signed "as is".

    When PKCS1 padding is performed, the maximum length of data that can
    be signed is the value returned by SecKeyGetBlockSize() - 11.

    NOTE: The behavior this function with kSecPaddingNone is undefined if the
    first byte of dataToSign is zero; there is no way to verify leading zeroes
    as they are discarded during the calculation. 

    If you want to generate a proper PKCS1 style signature with DER encoding
    of the digest type - and the dataToSign is a SHA1 digest - use
    kSecPaddingPKCS1SHA1. 
 */
@available(tvOS 2.0, *)
func SecKeyRawSign(key: SecKey, _ padding: SecPadding, _ dataToSign: UnsafePointer<UInt8>, _ dataToSignLen: Int, _ sig: UnsafeMutablePointer<UInt8>, _ sigLen: UnsafeMutablePointer<Int>) -> OSStatus

/*!
    @function SecKeyRawVerify
    @abstract Given a public key, data which has been signed, and a signature,
    verify the signature. 
    @param key Public key with which to verify the signature.
    @param padding See Padding Types above, typically kSecPaddingPKCS1SHA1.
    @param signedData The data over which sig is being verified, typically
    the digest of the actual data.
    @param signedDataLen Length of signedData in bytes.
    @param sig Pointer to the signature to verify.
    @param sigLen Length of sig in  bytes.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion If the padding argument is kSecPaddingPKCS1, PKCS1 padding
    will be checked during verification. If this argument is kSecPaddingNone,
    the incoming data will be compared directly to sig.

    If you are verifying a proper PKCS1-style signature, with DER encoding
    of the digest type - and the signedData is a SHA1 digest - use
    kSecPaddingPKCS1SHA1.
 */
@available(tvOS 2.0, *)
func SecKeyRawVerify(key: SecKey, _ padding: SecPadding, _ signedData: UnsafePointer<UInt8>, _ signedDataLen: Int, _ sig: UnsafePointer<UInt8>, _ sigLen: Int) -> OSStatus

/*!
    @function SecKeyEncrypt
    @abstract Encrypt a block of plaintext. 
    @param key Public key with which to encrypt the data.
    @param padding See Padding Types above, typically kSecPaddingPKCS1.
    @param plainText The data to encrypt.
    @param plainTextLen Length of plainText in bytes, this must be less
    or equal to the value returned by SecKeyGetBlockSize().
    @param cipherText Pointer to the output buffer.
    @param cipherTextLen On input, specifies how much space is available at
    cipherText; on return, it is the actual number of cipherText bytes written.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion If the padding argument is kSecPaddingPKCS1 or kSecPaddingOAEP,
    PKCS1 (respectively kSecPaddingOAEP) padding will be performed prior to encryption.
    If this argument is kSecPaddingNone, the incoming data will be encrypted "as is".
    kSecPaddingOAEP is the recommended value. Other value are not recommended 
    for security reason (Padding attack or malleability).

    When PKCS1 padding is performed, the maximum length of data that can
    be encrypted is the value returned by SecKeyGetBlockSize() - 11.

    When memory usage is a critical issue, note that the input buffer
    (plainText) can be the same as the output buffer (cipherText). 
 */
@available(tvOS 2.0, *)
func SecKeyEncrypt(key: SecKey, _ padding: SecPadding, _ plainText: UnsafePointer<UInt8>, _ plainTextLen: Int, _ cipherText: UnsafeMutablePointer<UInt8>, _ cipherTextLen: UnsafeMutablePointer<Int>) -> OSStatus

/*!
    @function SecKeyDecrypt
    @abstract Decrypt a block of ciphertext. 
    @param key Private key with which to decrypt the data.
    @param padding See Padding Types above, typically kSecPaddingPKCS1.
    @param cipherText The data to decrypt.
    @param cipherTextLen Length of cipherText in bytes, this must be less
    or equal to the value returned by SecKeyGetBlockSize().
    @param plainText Pointer to the output buffer.
    @param plainTextLen On input, specifies how much space is available at
    plainText; on return, it is the actual number of plainText bytes written.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion If the padding argument is kSecPaddingPKCS1 or kSecPaddingOAEP,
    the corresponding padding will be removed after decryption. 
    If this argument is kSecPaddingNone, the decrypted data will be returned "as is".

    When memory usage is a critical issue, note that the input buffer
    (plainText) can be the same as the output buffer (cipherText). 
 */
@available(tvOS 2.0, *)
func SecKeyDecrypt(key: SecKey, _ padding: SecPadding, _ cipherText: UnsafePointer<UInt8>, _ cipherTextLen: Int, _ plainText: UnsafeMutablePointer<UInt8>, _ plainTextLen: UnsafeMutablePointer<Int>) -> OSStatus

/*!
    @function SecKeyGetBlockSize
    @abstract Decrypt a block of ciphertext. 
    @param key The key for which the block length is requested.
    @result The block length of the key in bytes.
    @discussion If for example key is an RSA key the value returned by 
    this function is the size of the modulus.
 */
@available(tvOS 2.0, *)
func SecKeyGetBlockSize(key: SecKey) -> Int

/*!
	@enum Policy Constants
	@discussion Predefined constants used to specify a policy.
	@constant kSecPolicyAppleX509Basic
	@constant kSecPolicyAppleSSL
	@constant kSecPolicyAppleSMIME
	@constant kSecPolicyAppleEAP
	@constant kSecPolicyAppleIPsec
	@constant kSecPolicyApplePKINITClient
	@constant kSecPolicyApplePKINITServer
	@constant kSecPolicyAppleCodeSigning
	@constant kSecPolicyMacAppStoreReceipt
	@constant kSecPolicyAppleIDValidation
	@constant kSecPolicyAppleTimeStamping
	@constant kSecPolicyAppleRevocation
*/
@available(tvOS 7.0, *)
let kSecPolicyAppleX509Basic: CFString
@available(tvOS 7.0, *)
let kSecPolicyAppleSSL: CFString
@available(tvOS 7.0, *)
let kSecPolicyAppleSMIME: CFString
@available(tvOS 7.0, *)
let kSecPolicyAppleEAP: CFString
@available(tvOS 7.0, *)
let kSecPolicyAppleIPsec: CFString
@available(tvOS 7.0, *)
let kSecPolicyAppleCodeSigning: CFString
@available(tvOS 9.0, *)
let kSecPolicyMacAppStoreReceipt: CFString
@available(tvOS 7.0, *)
let kSecPolicyAppleIDValidation: CFString
@available(tvOS 7.0, *)
let kSecPolicyAppleTimeStamping: CFString
@available(tvOS 7.0, *)
let kSecPolicyAppleRevocation: CFString
@available(tvOS 9.0, *)
let kSecPolicyApplePayIssuerEncryption: CFString

/*!
    @enum Policy Value Constants
    @abstract Predefined property key constants used to get or set values in
        a dictionary for a policy instance.
    @discussion
        All policies will have the following read-only value:
            kSecPolicyOid       (the policy object identifier)

        Additional policy values which your code can optionally set:
            kSecPolicyName      (name which must be matched)
            kSecPolicyClient    (evaluate for client, rather than server)
            kSecPolicyRevocationFlags (only valid for a revocation policy)

    @constant kSecPolicyOid Specifies the policy OID (value is a CFStringRef)
    @constant kSecPolicyName Specifies a CFStringRef (or CFArrayRef of same)
        containing a name which must be matched in the certificate to satisfy
        this policy. For SSL/TLS, EAP, and IPSec policies, this specifies the
        server name which must match the common name of the certificate.
        For S/MIME, this specifies the RFC822 email address.
    @constant kSecPolicyClient Specifies a CFBooleanRef value that indicates
        this evaluation should be for a client certificate. If not set (or
        false), the policy evaluates the certificate as a server certificate.
    @constant kSecPolicyRevocationFlags Specifies a CFNumberRef that holds a
        kCFNumberCFIndexType bitmask value. See "Revocation Policy Constants"
        for a description of individual bits in this value.
 */
@available(tvOS 7.0, *)
let kSecPolicyOid: CFString
@available(tvOS 7.0, *)
let kSecPolicyName: CFString
@available(tvOS 7.0, *)
let kSecPolicyClient: CFString
@available(tvOS 7.0, *)
let kSecPolicyRevocationFlags: CFString

/*!
    @function SecPolicyGetTypeID
    @abstract Returns the type identifier of SecPolicy instances.
    @result The CFTypeID of SecPolicy instances.
*/
@available(tvOS 2.0, *)
func SecPolicyGetTypeID() -> CFTypeID

/*!
    @function SecPolicyCopyProperties
    @abstract Returns a dictionary of this policy's properties.
    @param policyRef A policy reference.
    @result A properties dictionary. See "Policy Value Constants" for a list
    of currently defined property keys. It is the caller's responsibility to
    CFRelease this reference when it is no longer needed.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion This function returns the properties for a policy, as set by the
    policy's construction function or by a prior call to SecPolicySetProperties.
*/
@available(tvOS 7.0, *)
func SecPolicyCopyProperties(policyRef: SecPolicy) -> CFDictionary

/*!
    @function SecPolicyCreateBasicX509
    @abstract Returns a policy object for the default X.509 policy.
    @result A policy object. The caller is responsible for calling CFRelease
    on this when it is no longer needed.
*/
@available(tvOS 2.0, *)
func SecPolicyCreateBasicX509() -> SecPolicy

/*!
    @function SecPolicyCreateSSL
    @abstract Returns a policy object for evaluating SSL certificate chains.
    @param server Passing true for this parameter creates a policy for SSL
    server certificates.
    @param hostname (Optional) If present, the policy will require the specified
    hostname to match the hostname in the leaf certificate.
    @result A policy object. The caller is responsible for calling CFRelease
    on this when it is no longer needed.
*/
@available(tvOS 2.0, *)
func SecPolicyCreateSSL(server: Bool, _ hostname: CFString?) -> SecPolicy
var kSecRevocationOCSPMethod: CFOptionFlags { get }
var kSecRevocationCRLMethod: CFOptionFlags { get }
var kSecRevocationPreferCRL: CFOptionFlags { get }
var kSecRevocationRequirePositiveResponse: CFOptionFlags { get }
var kSecRevocationNetworkAccessDisabled: CFOptionFlags { get }
var kSecRevocationUseAnyAvailableMethod: CFOptionFlags { get }

/*!
	@function SecPolicyCreateRevocation
	@abstract Returns a policy object for checking revocation of certificates.
	@result A policy object. The caller is responsible for calling CFRelease
	on this when it is no longer needed.
	@param revocationFlags Flags to specify revocation checking options.
	@discussion Use this function to create a revocation policy with behavior
	specified by revocationFlags. See the "Revocation Policy Constants" section
	for a description of these flags. Note: it is usually not necessary to
	create a revocation policy yourself unless you wish to override default
	system behavior (e.g. to force a particular method, or to disable
	revocation checking entirely.)
*/
@available(tvOS 7.0, *)
func SecPolicyCreateRevocation(revocationFlags: CFOptionFlags) -> SecPolicy

/*!
	@function SecPolicyCreateWithProperties
	@abstract Returns a policy object based on an object identifier for the
	policy type. See the "Policy Constants" section for a list of defined
	policy object identifiers.
	@param policyIdentifier The identifier for the desired policy type.
	@param properties (Optional) A properties dictionary. See "Policy Value
	Constants" for a list of currently defined property keys.
	@result The returned policy reference, or NULL if the policy could not be
	created.
*/
@available(tvOS 7.0, *)
func SecPolicyCreateWithProperties(policyIdentifier: AnyObject, _ properties: CFDictionary?) -> SecPolicy

/*!
    @typedef SecRandomRef
    @abstract Reference to a (psuedo) random number generator.
*/
typealias SecRandomRef = COpaquePointer
@available(tvOS 2.0, *)
let kSecRandomDefault: SecRandomRef

/*!
	@function SecRandomCopyBytes
	@abstract Return count random bytes in *bytes, allocated by the caller.
	@result Return 0 on success or -1 if something went wrong, check errno
    to find out the real error.
*/
@available(tvOS 2.0, *)
func SecRandomCopyBytes(rnd: SecRandomRef, _ count: Int, _ bytes: UnsafeMutablePointer<UInt8>) -> Int32

/*!
    @enum Credential Key Constants
    @discussion Predefined key constants used to get values in a dictionary
        of credentials returned by SecRequestWebCredential.
    @constant kSecSharedPassword Specifies a dictionary key whose value is a
        shared password. You use this key to get a value of type CFStringRef
        that contains a password.
*/
@available(tvOS 8.0, *)
let kSecSharedPassword: CFString

/*!
 @function SecAddSharedWebCredential
 @abstract Asynchronously store (or update) a shared password for a website.
 @param fqdn The fully qualified domain name of the website requiring the password.
 @param account The account name associated with this password.
 @param password The password to be stored. Pass NULL to remove a shared password if it exists.
 @param completionHandler A block which will be invoked when the function has completed. If the shared password was successfully added (or removed), the CFErrorRef parameter passed to the block will be NULL. If the error parameter is non-NULL, an error occurred and the error reference will hold the result. Note: the error reference will be automatically released after this handler is called, though you may optionally retain it for as long as needed.
 @discussion This function adds a shared password item which will be accessible by Safari and applications that have the specified fully-qualified domain name in their 'com.apple.developer.associated-domains' entitlement. If a shared password item already exists for the specified website and account, it will be updated with the provided password. To remove a password, pass NULL for the password parameter.

 Note: since a request involving shared web credentials may potentially require user interaction or other verification to be approved, this function is dispatched asynchronously; your code provides a completion handler that will be called once the results (if any) are available.
 */
@available(tvOS 8.0, *)
func SecAddSharedWebCredential(fqdn: CFString, _ account: CFString, _ password: CFString?, _ completionHandler: (CFError?) -> Void)

/*!
 @function SecRequestSharedWebCredential
 @abstract Asynchronously obtain one or more shared passwords for a website.
 @param fqdn (Optional) Fully qualified domain name of the website for which passwords are being requested. If NULL is passed in this argument, the domain name(s) listed in the calling application's 'com.apple.developer.associated-domains' entitlement are searched implicitly.
 @param account (Optional) Account name for which passwords are being requested. The account may be NULL to request all shared credentials which are available for the site, allowing the caller to discover an existing account.
 @param completionHandler A block which will be called to deliver the requested credentials. If no matching items were found, the credentials array will be empty, and the CFErrorRef parameter will provide the error result. Note: the credentials and error references will be automatically released after this handler is called, though you may optionally retain either for as long as needed.
 @discussion This function requests one or more shared passwords for a given website, depending on whether the optional account parameter is supplied. To obtain results, the website specified in the fqdn parameter must be one which matches an entry in the calling application's 'com.apple.developer.associated-domains' entitlement.

 If matching shared password items are found, the credentials provided to the completionHandler will be a CFArrayRef containing CFDictionaryRef entries. Each dictionary entry will contain the following pairs (see Security/SecItem.h):
        key: kSecAttrServer     value: CFStringRef (the website)
        key: kSecAttrAccount    value: CFStringRef (the account)
        key: kSecSharedPassword value: CFStringRef (the password)

 If the found item specifies a non-standard port number (i.e. other than 443 for https), the following key may also be present:
        key: kSecAttrPort       value: CFNumberRef (the port number)

 Note: since a request involving shared web credentials may potentially require user interaction or other verification to be approved, this function is dispatched asynchronously; your code provides a completion handler that will be called once the results (if any) are available.
 */
@available(tvOS 8.0, *)
func SecRequestSharedWebCredential(fqdn: CFString?, _ account: CFString?, _ completionHandler: (CFArray?, CFError?) -> Void)

/*!
 @function SecCreateSharedWebCredentialPassword
 @abstract Returns a randomly generated password.
 @return CFStringRef password in the form xxx-xxx-xxx-xxx where x is taken from the sets "abcdefghkmnopqrstuvwxy", "ABCDEFGHJKLMNPQRSTUVWXYZ", "3456789" with at least one character from each set being present.
*/
@available(tvOS 8.0, *)
func SecCreateSharedWebCredentialPassword() -> CFString?

/*!
    @typedef SecTrustResultType
    @abstract Specifies the trust result type.
    @discussion SecTrustResultType results have two dimensions.  They specify
    both whether evaluation suceeded and whether this is because of a user
    decision.  The commonly expected result is kSecTrustResultUnspecified,
    which indicates a positive result that wasn't decided by the user.  The
    common failure is kSecTrustResultRecoverableTrustFailure, which means a
    negative result.  kSecTrustResultProceed and kSecTrustResultDeny are the
    positive and negative result respectively when decided by the user.  User
    decisions are persisted through the use of SecTrustCopyExceptions() and
    SecTrustSetExceptions().  Finally, kSecTrustResultFatalTrustFailure is a
    negative result that must not be circumvented.
    @constant kSecTrustResultInvalid Indicates an invalid setting or result.
    This result usually means that SecTrustEvaluate has not yet been called.
    @constant kSecTrustResultProceed Indicates you may proceed.  This value
    may be returned by the SecTrustEvaluate function or stored as part of
    the user trust settings.
    @constant kSecTrustResultConfirm Indicates confirmation with the user
    is required before proceeding.  Important: this value is no longer returned
    or supported by SecTrustEvaluate or the SecTrustSettings API starting in
    OS X 10.5; its use is deprecated in OS X 10.9 and later, as well as in iOS.
    @constant kSecTrustResultDeny Indicates a user-configured deny; do not
    proceed. This value may be returned by the SecTrustEvaluate function
    or stored as part of the user trust settings.
    @constant kSecTrustResultUnspecified Indicates the evaluation succeeded
    and the certificate is implicitly trusted, but user intent was not
    explicitly specified.  This value may be returned by the SecTrustEvaluate
    function or stored as part of the user trust settings.
    @constant kSecTrustResultRecoverableTrustFailure Indicates a trust policy
    failure which can be overridden by the user.  This value may be returned
    by the SecTrustEvaluate function but not stored as part of the user
    trust settings.
    @constant kSecTrustResultFatalTrustFailure Indicates a trust failure
    which cannot be overridden by the user.  This value may be returned by the
    SecTrustEvaluate function but not stored as part of the user trust
    settings.
    @constant kSecTrustResultOtherError Indicates a failure other than that
    of trust evaluation. This value may be returned by the SecTrustEvaluate
    function but not stored as part of the user trust settings.
 */
typealias SecTrustResultType = UInt32
var kSecTrustResultInvalid: Int { get }
var kSecTrustResultProceed: Int { get }
@available(*, deprecated)
var kSecTrustResultConfirm: Int { get }
var kSecTrustResultDeny: Int { get }
var kSecTrustResultUnspecified: Int { get }
var kSecTrustResultRecoverableTrustFailure: Int { get }
var kSecTrustResultFatalTrustFailure: Int { get }
var kSecTrustResultOtherError: Int { get }

/*!
    @typedef SecTrustRef
    @abstract CFType used for performing X.509 certificate trust evaluations.
 */
typealias SecTrustRef = SecTrust

/*!
    @enum Trust Property Constants
    @discussion Predefined key constants used to obtain values in a
        per-certificate dictionary of trust evaluation results,
        as retrieved from a call to SecTrustCopyProperties.
    @constant kSecPropertyTypeTitle Specifies a key whose value is a
        CFStringRef containing the title (display name) of this certificate.
    @constant kSecPropertyTypeError Specifies a key whose value is a
        CFStringRef containing the reason for a trust evaluation failure.
 */
@available(tvOS 7.0, *)
let kSecPropertyTypeTitle: CFString
@available(tvOS 7.0, *)
let kSecPropertyTypeError: CFString

/*!
    @enum Trust Result Constants
    @discussion Predefined key constants used to obtain values in a
        dictionary of trust evaluation results for a certificate chain,
        as retrieved from a call to SecTrustCopyResult.
    @constant kSecTrustEvaluationDate
        This key will be present if a trust evaluation has been performed
        and results are available. Its value is a CFDateRef representing
        when the evaluation for this trust object took place.
    @constant kSecTrustExtendedValidation
        This key will be present and have a value of kCFBooleanTrue
        if this chain was validated for EV.
    @constant kSecTrustOrganizationName
        Organization name field of subject of leaf certificate. This
        field is meant to be displayed to the user as the validated
        name of the company or entity that owns the certificate if the
        kSecTrustExtendedValidation key is present.
    @constant kSecTrustResultValue
        This key will be present if a trust evaluation has been performed.
        Its value is a CFNumberRef representing the SecTrustResultType result
        for the evaluation.
    @constant kSecTrustRevocationChecked
        This key will be present iff this chain had its revocation checked.
        The value will be a kCFBooleanTrue if revocation checking was
        successful and none of the certificates in the chain were revoked.
        The value will be kCFBooleanFalse if no current revocation status
        could be obtained for one or more certificates in the chain due
        to connection problems or timeouts.  This is a hint to a client
        to retry revocation checking at a later time.
    @constant kSecTrustRevocationValidUntilDate
        This key will be present iff kSecTrustRevocationChecked has a
        value of kCFBooleanTrue. The value will be a CFDateRef representing
        the earliest date at which the revocation info for one of the
        certificates in this chain might change.
    @constant kSecTrustCertificateTransparency
        This key will be present and have a value of kCFBooleanTrue
        if this chain is CT qualified.

 */
@available(tvOS 7.0, *)
let kSecTrustEvaluationDate: CFString
@available(tvOS 7.0, *)
let kSecTrustExtendedValidation: CFString
@available(tvOS 7.0, *)
let kSecTrustOrganizationName: CFString
@available(tvOS 7.0, *)
let kSecTrustResultValue: CFString
@available(tvOS 7.0, *)
let kSecTrustRevocationChecked: CFString
@available(tvOS 7.0, *)
let kSecTrustRevocationValidUntilDate: CFString
@available(tvOS 9.0, *)
let kSecTrustCertificateTransparency: CFString

/*!
    @typedef SecTrustCallback
    @abstract Delivers the result from an asynchronous trust evaluation.
    @param trustRef A reference to the trust object which has been evaluated.
    @param trustResult The trust result of the evaluation. Additional status
    information can be obtained by calling SecTrustCopyProperties().
 */
typealias SecTrustCallback = (SecTrust, SecTrustResultType) -> Void

/*!
    @function SecTrustGetTypeID
    @abstract Returns the type identifier of SecTrust instances.
    @result The CFTypeID of SecTrust instances.
 */
@available(tvOS 2.0, *)
func SecTrustGetTypeID() -> CFTypeID

/*!
    @function SecTrustCreateWithCertificates
    @abstract Creates a trust object based on the given certificates and
    policies.
    @param certificates The group of certificates to verify.  This can either
    be a CFArrayRef of SecCertificateRef objects or a single SecCertificateRef
    @param policies An array of one or more policies. You may pass a
    SecPolicyRef to represent a single policy.
    @param trust On return, a pointer to the trust management reference.
    @result A result code.  See "Security Error Codes" (SecBase.h).
    @discussion If multiple policies are passed in, all policies must verify
    for the chain to be considered valid.
 */
@available(tvOS 2.0, *)
func SecTrustCreateWithCertificates(certificates: AnyObject, _ policies: AnyObject?, _ trust: UnsafeMutablePointer<SecTrust?>) -> OSStatus

/*!
    @function SecTrustSetPolicies
    @abstract Set the policies for which trust should be verified.
    @param trust A trust reference.
    @param policies An array of one or more policies. You may pass a
    SecPolicyRef to represent a single policy.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion This function will invalidate the existing trust result,
    requiring a fresh evaluation for the newly-set policies.
 */
@available(tvOS 6.0, *)
func SecTrustSetPolicies(trust: SecTrust, _ policies: AnyObject) -> OSStatus

/*!
    @function SecTrustCopyPolicies
    @abstract Returns an array of policies used for this evaluation.
    @param trust  A reference to a trust object.
    @param policies On return, an array of policies used by this trust.
    Call the CFRelease function to release this reference.
    @result A result code. See "Security Error Codes" (SecBase.h).
 */
@available(tvOS 7.0, *)
func SecTrustCopyPolicies(trust: SecTrust, _ policies: UnsafeMutablePointer<CFArray?>) -> OSStatus

/*!
    @function SecTrustSetNetworkFetchAllowed
    @abstract Specifies whether a trust evaluation is permitted to fetch missing
    intermediate certificates from the network.
    @param trust A trust reference.
    @param allowFetch If true, and a certificate's issuer is not present in the
    trust reference but its network location is known, the evaluation is permitted
    to attempt to download it automatically. Pass false to disable network fetch
    for this trust evaluation.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion By default, network fetch of missing certificates is enabled if
    the trust evaluation includes the SSL policy, otherwise it is disabled.
 */
@available(tvOS 7.0, *)
func SecTrustSetNetworkFetchAllowed(trust: SecTrust, _ allowFetch: Bool) -> OSStatus

/*!
    @function SecTrustGetNetworkFetchAllowed
    @abstract Returns whether a trust evaluation is permitted to fetch missing
    intermediate certificates from the network.
    @param trust A trust reference.
    @param allowFetch On return, the boolean pointed to by this parameter is
    set to true if the evaluation is permitted to download missing certificates.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion By default, network fetch of missing certificates is enabled if
    the trust evaluation includes the SSL policy, otherwise it is disabled.
 */
@available(tvOS 7.0, *)
func SecTrustGetNetworkFetchAllowed(trust: SecTrust, _ allowFetch: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*!
    @function SecTrustSetAnchorCertificates
    @abstract Sets the anchor certificates for a given trust.
    @param trust A reference to a trust object.
    @param anchorCertificates An array of anchor certificates.
    @result A result code.  See "Security Error Codes" (SecBase.h).
    @discussion Calling this function without also calling
    SecTrustSetAnchorCertificatesOnly() will disable trusting any
    anchors other than the ones in anchorCertificates.
 */
@available(tvOS 2.0, *)
func SecTrustSetAnchorCertificates(trust: SecTrust, _ anchorCertificates: CFArray) -> OSStatus

/*!
    @function SecTrustSetAnchorCertificatesOnly
    @abstract Reenables trusting anchor certificates in addition to those
    passed in via the SecTrustSetAnchorCertificates API.
    @param trust A reference to a trust object.
    @param anchorCertificatesOnly If true, disables trusting any anchors other
    than the ones passed in via SecTrustSetAnchorCertificates().  If false,
    the built in anchor certificates are also trusted.
    @result A result code.  See "Security Error Codes" (SecBase.h).
 */
@available(tvOS 2.0, *)
func SecTrustSetAnchorCertificatesOnly(trust: SecTrust, _ anchorCertificatesOnly: Bool) -> OSStatus

/*!
    @function SecTrustCopyCustomAnchorCertificates
    @abstract Returns an array of custom anchor certificates used by a given
    trust, as set by a prior call to SecTrustSetAnchorCertificates, or NULL if
    no custom anchors have been specified.
    @param trust  A reference to a trust object.
    @param anchors On return, an array of custom anchor certificates (roots)
    used by this trust, or NULL if no custom anchors have been specified. Call
    the CFRelease function to release this reference.
    @result A result code. See "Security Error Codes" (SecBase.h).
 */
@available(tvOS 7.0, *)
func SecTrustCopyCustomAnchorCertificates(trust: SecTrust, _ anchors: UnsafeMutablePointer<CFArray?>) -> OSStatus

/*!
    @function SecTrustSetVerifyDate
    @abstract Set the date for which the trust should be verified.
    @param trust A reference to a trust object.
    @param verifyDate The date for which to verify trust.
    @result A result code.  See "Security Error Codes" (SecBase.h).
    @discussion This function lets you evaluate certificate validity for a
    given date (for example, to determine if a signature was valid on the date
    it was signed, even if the certificate has since expired.) If this function
    is not called, the time at which SecTrustEvaluate() is called is used
    implicitly as the verification time.
 */
@available(tvOS 2.0, *)
func SecTrustSetVerifyDate(trust: SecTrust, _ verifyDate: CFDate) -> OSStatus

/*!
    @function SecTrustGetVerifyTime
    @abstract Returns the verify time.
    @param trust A reference to the trust object being verified.
    @result A CFAbsoluteTime value representing the time at which certificates
    should be checked for validity.
    @discussion This function retrieves the verification time for the given
    trust reference, as set by a prior call to SecTrustSetVerifyDate(). If the
    verification time has not been set, this function returns a value of 0,
    indicating that the current date/time is implicitly used for verification.
 */
@available(tvOS 2.0, *)
func SecTrustGetVerifyTime(trust: SecTrust) -> CFAbsoluteTime

/*!
    @function SecTrustEvaluate
    @abstract Evaluates a trust reference synchronously.
    @param trust A reference to the trust object to evaluate.
    @param result A pointer to a result type.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion This function will completely evaluate trust before returning,
    possibly including network access to fetch intermediate certificates or to
    perform revocation checking. Since this function can block during those
    operations, you should call it from within a function that is placed on a
    dispatch queue, or in a separate thread from your application's main
    run loop. Alternatively, you can use the SecTrustEvaluateAsync function.
 */
@available(tvOS 2.0, *)
func SecTrustEvaluate(trust: SecTrust, _ result: UnsafeMutablePointer<SecTrustResultType>) -> OSStatus

/*!
    @function SecTrustEvaluateAsync
    @abstract Evaluates a trust reference asynchronously.
    @param trust A reference to the trust object to evaluate.
    @param queue A dispatch queue on which the result callback should be
    executed. Pass NULL to use the current dispatch queue.
    @param result A SecTrustCallback block which will be executed when the
    trust evaluation is complete.
    @result A result code. See "Security Error Codes" (SecBase.h).
 */
@available(tvOS 7.0, *)
func SecTrustEvaluateAsync(trust: SecTrust, _ queue: dispatch_queue_t?, _ result: SecTrustCallback) -> OSStatus

/*!
    @function SecTrustGetTrustResult
    @param trust A reference to a trust object.
    @param result A pointer to the result from the most recent call to
    SecTrustEvaluate for this trust reference. If SecTrustEvaluate has not been
    called or trust parameters have changed, the result is kSecTrustResultInvalid.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion This function replaces SecTrustGetResult for the purpose of
    obtaining the current evaluation result of a given trust reference.
 */
@available(tvOS 7.0, *)
func SecTrustGetTrustResult(trust: SecTrust, _ result: UnsafeMutablePointer<SecTrustResultType>) -> OSStatus

/*!
    @function SecTrustCopyPublicKey
    @abstract Return the public key for a leaf certificate after it has
    been evaluated.
    @param trust A reference to the trust object which has been evaluated.
    @result The certificate's public key, or NULL if it the public key could
    not be extracted (this can happen with DSA certificate chains if the
    parameters in the chain cannot be found).  The caller is responsible
    for calling CFRelease on the returned key when it is no longer needed.
 */
@available(tvOS 2.0, *)
func SecTrustCopyPublicKey(trust: SecTrust) -> SecKey?

/*!
    @function SecTrustGetCertificateCount
    @abstract Returns the number of certificates in an evaluated certificate
    chain.
    @param trust A reference to a trust object.
    @result The number of certificates in the trust chain, including the anchor.
    @discussion Important: if the trust reference has not yet been evaluated,
    this function will evaluate it first before returning. If speed is critical,
    you may want to call SecTrustGetTrustResult first to make sure that a
    result other than kSecTrustResultInvalid is present for the trust object.
 */
@available(tvOS 2.0, *)
func SecTrustGetCertificateCount(trust: SecTrust) -> CFIndex

/*!
    @function SecTrustGetCertificateAtIndex
    @abstract Returns a certificate from the trust chain.
    @param trust Reference to a trust object.
    @param ix The index of the requested certificate.  Indices run from 0
    (leaf) to the anchor (or last certificate found if no anchor was found).
    The leaf cert (index 0) is always present regardless of whether the trust
    reference has been evaluated or not.
    @result A SecCertificateRef for the requested certificate.
 */
@available(tvOS 2.0, *)
func SecTrustGetCertificateAtIndex(trust: SecTrust, _ ix: CFIndex) -> SecCertificate?

/*!
    @function SecTrustCopyExceptions
    @abstract Returns an opaque cookie which will allow future evaluations
    of the current certificate to succeed.
    @param trust A reference to an evaluated trust object.
    @result An opaque cookie which when passed to SecTrustSetExceptions() will
    cause a call to SecTrustEvaluate() return kSecTrustResultProceed.  This
    will happen upon subsequent evaluation of the current certificate unless
    some new error starts happening that wasn't being reported when the cookie
    was returned from this function (for example, if the certificate expires
    then evaluation will start failing again until a new cookie is obtained.)
    @discussion Normally this API should only be called once the errors have
    been presented to the user and the user decided to trust the current
    certificate chain regardless of the errors being presented, for the
    current application/server/protocol combination.
 */
@available(tvOS 4.0, *)
func SecTrustCopyExceptions(trust: SecTrust) -> CFData

/*!
    @function SecTrustSetExceptions
    @abstract Set a trust cookie to be used for evaluating this certificate chain.
    @param trust A reference to a trust object.
    @param exceptions An exceptions cookie as returned by a call to
    SecTrustCopyExceptions() in the past.
    @result Upon calling SecTrustEvaluate(), any failures that where present at the
    time the exceptions object was created are ignored, and instead of returning
    kSecTrustResultRecoverableTrustFailure, kSecTrustResultProceed will be returned
    (if the certificate for which exceptions was created matches the current leaf
    certificate).
    @result Returns true if the exceptions cookies was valid and matches the current
    leaf certificate, false otherwise.  This function will invalidate the existing
    trust result, requiring a subsequent evaluation for the newly-set exceptions.
    Note that this function returning true doesn't mean the caller can skip calling
    SecTrustEvaluate, as there may be new errors since the exceptions cookie was
    created (for example, a certificate may have subsequently expired.)
    @discussion Clients of this interface will need to establish the context of this
    exception to later decide when this exception cookie is to be used.
    Examples of this context would be the server we are connecting to, the ssid
    of the wireless network for which this cert is needed, the account for which
    this cert should be considered valid, and so on.
 */
@available(tvOS 4.0, *)
func SecTrustSetExceptions(trust: SecTrust, _ exceptions: CFData) -> Bool

/*!
    @function SecTrustCopyProperties
    @abstract Return a property array for this trust evaluation.
    @param trust A reference to a trust object. If the trust has not been
    evaluated, the returned property array will be empty.
    @result A property array. It is the caller's responsibility to CFRelease
    the returned array when it is no longer needed.
    @discussion This function returns an ordered array of CFDictionaryRef
    instances for each certificate in the chain. Indices run from 0 (leaf) to
    the anchor (or last certificate found if no anchor was found.) See the
    "Trust Property Constants" section for a list of currently defined keys.
 */
@available(tvOS 2.0, *)
func SecTrustCopyProperties(trust: SecTrust) -> CFArray?

/*!
    @function SecTrustCopyResult
    @abstract Returns a dictionary containing information about the
    evaluated certificate chain for use by clients.
    @param trust A reference to a trust object.
    @result A dictionary with various fields that can be displayed to the user,
    or NULL if no additional info is available or the trust has not yet been
    validated.  The caller is responsible for calling CFRelease on the value
    returned when it is no longer needed.
    @discussion Returns a dictionary for the overall trust evaluation. See the
    "Trust Result Constants" section for a list of currently defined keys.
 */
@available(tvOS 7.0, *)
func SecTrustCopyResult(trust: SecTrust) -> CFDictionary?

/*!
    @function SecTrustSetOCSPResponse
    @abstract Attach OCSPResponse data to a trust object.
    @param trust A reference to a trust object.
    @param responseData This may be either a CFData object containing a single
    DER-encoded OCSPResponse (per RFC 2560), or a CFArray of these.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion Allows the caller to provide OCSPResponse data (which may be
    obtained during a TLS/SSL handshake, per RFC 3546) as input to a trust
    evaluation. If this data is available, it can obviate the need to contact
    an OCSP server for current revocation information.
 */
@available(tvOS 7.0, *)
func SecTrustSetOCSPResponse(trust: SecTrust, _ responseData: AnyObject?) -> OSStatus
