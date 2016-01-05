
var errAuthorizationSuccess: OSStatus { get }
var errAuthorizationInvalidSet: OSStatus { get }
var errAuthorizationInvalidRef: OSStatus { get }
var errAuthorizationInvalidTag: OSStatus { get }
var errAuthorizationInvalidPointer: OSStatus { get }
var errAuthorizationDenied: OSStatus { get }
var errAuthorizationCanceled: OSStatus { get }
var errAuthorizationInteractionNotAllowed: OSStatus { get }
var errAuthorizationInternal: OSStatus { get }
var errAuthorizationExternalizeNotAllowed: OSStatus { get }
var errAuthorizationInternalizeNotAllowed: OSStatus { get }
var errAuthorizationInvalidFlags: OSStatus { get }
var errAuthorizationToolExecuteFailure: OSStatus { get }
var errAuthorizationToolEnvironmentError: OSStatus { get }
var errAuthorizationBadAddress: OSStatus { get }

/*!
	@typedef AuthorizationFlags
	Optional flags passed in to several Authorization APIs.
	See the description of AuthorizationCreate, AuthorizationCopyRights and AuthorizationFree for a description of how they affect those calls.
*/
struct AuthorizationFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Defaults: AuthorizationFlags { get }
  static var InteractionAllowed: AuthorizationFlags { get }
  static var ExtendRights: AuthorizationFlags { get }
  static var PartialRights: AuthorizationFlags { get }
  static var DestroyRights: AuthorizationFlags { get }
  static var PreAuthorize: AuthorizationFlags { get }
  static var NoData: AuthorizationFlags { get }
}
var kAuthorizationFlagCanNotPreAuthorize: Int { get }

/*!
	@typedef AuthorizationRef
	Opaque reference to an authorization object.
*/
typealias AuthorizationRef = COpaquePointer

/*!
	@typedef AuthorizationString
	A zero terminated string in UTF-8 encoding.
*/
typealias AuthorizationString = UnsafePointer<Int8>

/*!
	@struct AuthorizationItem
	Each AuthorizationItem describes a single string-named item with optional
	parameter value. The value must be contiguous memory of valueLength bytes;
	internal structure is defined separately for each name.

	@field name name of the item, as an AuthorizationString. Mandatory.
	@field valueLength Number of bytes in parameter value. Must be 0 if no parameter value.
	@field value Pointer to the optional parameter value associated with name.
	Must be NULL if no parameter value.
	@field flags Reserved field. Must be set to 0 on creation. Do not modify after that.
*/
struct AuthorizationItem {
  var name: AuthorizationString
  var valueLength: Int
  var value: UnsafeMutablePointer<Void>
  var flags: UInt32
}

/*!
	@struct AuthorizationItemSet
	An AuthorizationItemSet structure represents a set of zero or more AuthorizationItems.  Since it is a set it should not contain any identical AuthorizationItems.

	@field count Number of items identified by items.
	@field items Pointer to an array of items.
*/
struct AuthorizationItemSet {
  var count: UInt32
  var items: UnsafeMutablePointer<AuthorizationItem>
}
var kAuthorizationExternalFormLength: Int { get }
struct AuthorizationExternalForm {
  var bytes: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  init()
  init(bytes: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8))
}

/*!
	@typedef AuthorizationRights
	An AuthorizationItemSet representing a set of rights each with an associated argument (value).
	Each argument value is as defined for the specific right they belong to.  Argument values may not contain pointers as the should be copyable to different address spaces.
*/
typealias AuthorizationRights = AuthorizationItemSet

/*!
	@typedef AuthorizationEnvironment
	An AuthorizationItemSet representing environmental information of potential use
	to authorization decisions.
*/
typealias AuthorizationEnvironment = AuthorizationItemSet

/*!
    @function AuthorizationCreate
    Create a new autorization object which can be used in other authorization calls.  When the authorization is no longer needed AuthorizationFree should be called.

	When the kAuthorizationFlagInteractionAllowed flag is set, user interaction will happen when required.  Failing to set this flag will result in this call failing with a errAuthorizationInteractionNotAllowed status when interaction is required.

	Setting the kAuthorizationFlagExtendRights flag will extend the currently available rights. If this flag is set the returned AuthorizationRef will grant all the rights requested when errAuthorizationSuccess is returned. If this flag is not set the operation will almost certainly succeed, but no attempt will be made to make the requested rights availible.
		Call AuthorizationCopyRights to figure out which of the requested rights are granted by the returned AuthorizationRef.

	Setting the kAuthorizationFlagPartialRights flag will cause this call to succeed if only some of the requested rights are being granted by the returned AuthorizationRef. Unless this flag is set this API will fail if not all the requested rights could be obtained.

	Setting the kAuthorizationFlagDestroyRights flag will prevent any rights obtained during this call from being preserved after returning from this API (This is most useful when the authorization parameter is NULL and the caller doesn't want to affect the session state in any way).

	Setting the kAuthorizationFlagPreAuthorize flag will pre authorize the requested rights so that at a later time -- by calling AuthorizationMakeExternalForm() follow by AuthorizationCreateFromExternalForm() -- the obtained rights can be used in a different process.  Rights that can't be preauthorized will be treated as if they were authorized for the sake of returning an error (in other words if all rights are either authorized or could not be preauthorized this call will still succeed).
		The rights which could not be preauthorized are not currently authorized and may fail to authorize when a later call to AuthorizationCopyRights() is made, unless the kAuthorizationFlagExtendRights and kAuthorizationFlagInteractionAllowed flags are set.  Even then they might still fail if the user does not supply the correct credentials.
		The reason for passing in this flag is to provide correct audit trail information and to avoid unnecessary user interaction.

    @param rights (input/optional) An AuthorizationItemSet containing rights for which authorization is being requested.  If none are specified the resulting AuthorizationRef will authorize nothing at all.
    @param environment (input/optional) An AuthorizationItemSet containing environment state used when making the autorization decision.  See the AuthorizationEnvironment type for details.
    @param flags (input) options specified by the AuthorizationFlags enum.  set all unused bits to zero to allow for future expansion.
    @param authorization (output optional) A pointer to an AuthorizationRef to be returned.  When the returned AuthorizationRef is no longer needed AuthorizationFree should be called to prevent anyone from using the aquired rights.  If NULL is specified no new rights are returned, but the system will attempt to authorize all the requested rights and return the appropriate status.

    @result errAuthorizationSuccess 0 authorization or all requested rights succeeded.

	errAuthorizationDenied -60005 The authorization for one or more of the requested rights was denied.

	errAuthorizationCanceled -60006 The authorization was cancelled by the user.

	errAuthorizationInteractionNotAllowed -60007 The authorization was denied since no interaction with the user was allowed.
*/
func AuthorizationCreate(rights: UnsafePointer<AuthorizationRights>, _ environment: UnsafePointer<AuthorizationEnvironment>, _ flags: AuthorizationFlags, _ authorization: UnsafeMutablePointer<AuthorizationRef>) -> OSStatus

/*!
    @function AuthorizationFree
    Destroy an AutorizationRef object. If the kAuthorizationFlagDestroyRights flag is passed,
	any rights associated with the authorization are lost. Otherwise, only local resources
	are released, and the rights may still be available to other clients.

	Setting the kAuthorizationFlagDestroyRights flag will prevent any rights that were obtained by the specified authorization object to be preserved after returning from this API.  This effectivaly locks down all potentially shared authorizations.

    @param authorization (input) The authorization object on which this operation is performed.
	
	@param flags (input) Bit mask of option flags to this call.

    @result errAuthorizationSuccess 0 No error.

    errAuthorizationInvalidRef -60002 The authorization parameter is invalid.
*/
func AuthorizationFree(authorization: AuthorizationRef, _ flags: AuthorizationFlags) -> OSStatus

/*!
	@function AuthorizationCopyRights
    Given a set of rights, return the subset that is currently authorized
    by the AuthorizationRef given.

	When the kAuthorizationFlagInteractionAllowed flag is set, user interaction will happen when required.  Failing to set this flag will result in this call failing with a errAuthorizationInteractionNotAllowed status when interaction is required.

	Setting the kAuthorizationFlagExtendRights flag will extend the currently available rights.

	Setting the kAuthorizationFlagPartialRights flag will cause this call to succeed if only some of the requested rights are being granted by the returned AuthorizationRef.  Unless this flag is set this API will fail if not all the requested rights could be obtained.

	Setting the kAuthorizationFlagDestroyRights flag will prevent any additional rights obtained during this call from being preserved after returning from this API.

	Setting the kAuthorizationFlagPreAuthorize flag will pre authorize the requested rights so that at a later time -- by calling AuthorizationMakeExternalForm() follow by AuthorizationCreateFromExternalForm() -- the obtained rights can be used in a different process.  Rights that can't be preauthorized will be treated as if they were authorized for the sake of returning an error (in other words if all rights are either authorized or could not be preauthorized this call will still succeed), and they will be returned in authorizedRights with their kAuthorizationFlagCanNotPreAuthorize bit in the flags field set to 1.
		The rights which could not be preauthorized are not currently authorized and may fail to authorize when a later call to AuthorizationCopyRights() is made, unless the kAuthorizationFlagExtendRights and kAuthorizationFlagInteractionAllowed flags are set.  Even then they might still fail if the user does not supply the correct credentials.
		The reason for passing in this flag is to provide correct audit trail information and to avoid unnecessary user interaction.

	Setting the kAuthorizationFlagPreAuthorize flag will pre authorize the requested rights so that at a later time -- by calling AuthorizationMakeExternalForm() follow by AuthorizationCreateFromExternalForm() -- the obtained rights can be used in a different process.  When this flags is specified rights that can't be preauthorized will be returned as if they were authorized with their kAuthorizationFlagCanNotPreAuthorize bit in the flags field set to 1.  These rights are not currently authorized and may fail to authorize later unless kAuthorizationFlagExtendRights and kAuthorizationFlagInteractionAllowed flags are set when the actual authorization is done.  And even then they might still fail if the user does not supply the correct credentials.

    @param authorization (input) The authorization object on which this operation is performed.
    @param rights (input) A rights set (see AuthorizationCreate).
    @param environment (input/optional) An AuthorizationItemSet containing environment state used when making the autorization decision.  See the AuthorizationEnvironment type for details.
    @param flags (input) options specified by the AuthorizationFlags enum.  set all unused bits to zero to allow for future expansion.
    @param authorizedRights (output/optional) A pointer to a newly allocated AuthorizationInfoSet in which the authorized subset of rights are returned (authorizedRights should be deallocated by calling AuthorizationFreeItemSet() when it is no longer needed).  If NULL the only information returned is the status.  Note that if the kAuthorizationFlagPreAuthorize flag was specified rights that could not be preauthorized are returned in authorizedRights, but their flags contains the kAuthorizationFlagCanNotPreAuthorize bit.

    @result errAuthorizationSuccess 0 No error.

	errAuthorizationInvalidRef -60002 The authorization parameter is invalid.

    errAuthorizationInvalidSet -60001 The rights parameter is invalid.

    errAuthorizationInvalidPointer -60004 The authorizedRights parameter is invalid.
*/
func AuthorizationCopyRights(authorization: AuthorizationRef, _ rights: UnsafePointer<AuthorizationRights>, _ environment: UnsafePointer<AuthorizationEnvironment>, _ flags: AuthorizationFlags, _ authorizedRights: UnsafeMutablePointer<UnsafeMutablePointer<AuthorizationRights>>) -> OSStatus

/*!
	@typedef AuthorizationAsyncCallback
	Callback block passed to AuthorizationCopyRightsAsync.

	@param err (output) The result of the AuthorizationCopyRights call.
	@param blockAuthorizedRights (output) The authorizedRights from the AuthorizationCopyRights call to be deallocated by calling AuthorizationFreeItemSet() when it is no longer needed.
*/
typealias AuthorizationAsyncCallback = (OSStatus, UnsafeMutablePointer<AuthorizationRights>) -> Void

/*!
	@function AuthorizationCopyRightsAsync
	An asynchronous version of AuthorizationCopyRights.

	@param callbackBlock (input) The callback block to be called upon completion.
*/
func AuthorizationCopyRightsAsync(authorization: AuthorizationRef, _ rights: UnsafePointer<AuthorizationRights>, _ environment: UnsafePointer<AuthorizationEnvironment>, _ flags: AuthorizationFlags, _ callbackBlock: AuthorizationAsyncCallback)

/*!
	@function AuthorizationCopyInfo
	Returns sideband information (e.g. access credentials) obtained from a call to AuthorizationCreate.  The format of this data depends of the tag specified.
	
    @param authorization (input) The authorization object on which this operation is performed.
    @param tag (input/optional) An optional string tag specifing which sideband information should be returned.  When NULL is specified all available information is returned.
    @param flags (input) options specified by the AuthorizationFlags enum.  set all unused bits to zero to allow for future expansion.
    @param info (output) A pointer to a newly allocated AuthorizationInfoSet in which the requested sideband infomation is returned (info should be deallocated by calling AuthorizationFreeItemSet() when it is no longer needed).

    @result errAuthorizationSuccess 0 No error.

    errAuthorizationInvalidRef -60002 The authorization parameter is invalid.

    errAuthorizationInvalidTag -60003 The tag parameter is invalid.

    errAuthorizationInvalidPointer -60004 The info parameter is invalid.
*/
func AuthorizationCopyInfo(authorization: AuthorizationRef, _ tag: AuthorizationString, _ info: UnsafeMutablePointer<UnsafeMutablePointer<AuthorizationItemSet>>) -> OSStatus

/*!
	@function AuthorizationMakeExternalForm
	Turn an Authorization into an external "byte blob" form so it can be
	transmitted to another process.
	Note that *storing* the external form somewhere will probably not do what
	you want, since authorizations are bounded by sessions, processes, and possibly
	time limits. This is for online transmission of authorizations.
	
	@param authorization The (valid) authorization reference to externalize
	@param extForm Pointer to an AuthorizationExternalForm variable to fill.
	
        @result errAuthorizationSuccess 0 No error.

        errAuthorizationExternalizeNotAllowed -60009 Externalizing this authorization is not allowed.

        errAuthorizationInvalidRef -60002 The authorization parameter is invalid.


*/
func AuthorizationMakeExternalForm(authorization: AuthorizationRef, _ extForm: UnsafeMutablePointer<AuthorizationExternalForm>) -> OSStatus

/*!
	@function AuthorizationCreateFromExternalForm
	Internalize the external "byte blob" form of an authorization reference.
	
	@param extForm Pointer to an AuthorizationExternalForm value.
	@param authorization Will be filled with a valid AuthorizationRef on success.
	
	@result errAuthorizationInternalizeNotAllowed -60010 Internalizing this authorization is not allowed.
*/
func AuthorizationCreateFromExternalForm(extForm: UnsafePointer<AuthorizationExternalForm>, _ authorization: UnsafeMutablePointer<AuthorizationRef>) -> OSStatus

/*!
	@function AuthorizationFreeItemSet
	Release the memory allocated for an AuthorizationItemSet that was allocated
	by an API call.
	
    @param set The AuthorizationItemSet to deallocate.

    @result errAuthorizationSuccess 0 No error.

    errAuthorizationInvalidSet -60001 The set parameter is invalid.
*/
func AuthorizationFreeItemSet(set: UnsafeMutablePointer<AuthorizationItemSet>) -> OSStatus
var kAuthorizationRightRule: String { get }
var kAuthorizationRuleIsAdmin: String { get }
var kAuthorizationRuleAuthenticateAsSessionUser: String { get }
var kAuthorizationRuleAuthenticateAsAdmin: String { get }
var kAuthorizationRuleClassAllow: String { get }
var kAuthorizationRuleClassDeny: String { get }
var kAuthorizationComment: String { get }

/*!
	@function AuthorizationRightGet 
	
	Retrieves a right definition as a dictionary.  There are no restrictions to keep anyone from retrieving these definitions.  

	@param rightName (input) the rightname (ASCII).  Wildcard rightname definitions are okay.
	@param rightDefinition (output/optional) the dictionary with all keys defining the right.  See documented keys.  Passing in NULL will just check if there is a definition.  The caller is responsible for releasing the returned dictionary.

	@result errAuthorizationSuccess 0 No error.

	errAuthorizationDenied -60005 No definition found.

*/
func AuthorizationRightGet(rightName: UnsafePointer<Int8>, _ rightDefinition: UnsafeMutablePointer<CFDictionary?>) -> OSStatus

/*!
	@function AuthorizationRightSet
	
	Create or update a right entry.  Only normal rights can be registered (wildcard rights are denied); wildcard rights are considered to be put in by an administrator putting together a site configuration.

	@param authRef (input) authRef to authorize modifications.
	@param rightName (input) the rightname (ASCII).  Wildcard rightnames are not okay.
	@param rightDefinition (input) a CFString of the name of a rule to use (delegate) or CFDictionary containing keys defining one.
	@param descriptionKey (input/optional) a CFString to use as a key for looking up localized descriptions.  If no localization is found this will be the description itself.
	@param bundle (input/optional) a bundle to get localizations from if not the main bundle.
	@param localeTableName (input/optional) stringtable name to get localizations from.
	
	@result errAuthorizationSuccess 0 added right definition successfully.

	errAuthorizationDenied -60005 Unable to create or update right definition.

	errAuthorizationCanceled -60006 Authorization was canceled by user.

	errAuthorizationInteractionNotAllowed -60007 Interaction was required but not possible.

*/
func AuthorizationRightSet(authRef: AuthorizationRef, _ rightName: UnsafePointer<Int8>, _ rightDefinition: AnyObject, _ descriptionKey: CFString?, _ bundle: CFBundle?, _ localeTableName: CFString?) -> OSStatus

/*!
	@function AuthorizationRightRemove

	Request to remove a right from the policy database.

	@param authRef (input) authRef, to be used to authorize this action.
	@param rightName (input) the rightname (ASCII).  Wildcard rightnames are not okay.
	
*/
func AuthorizationRightRemove(authRef: AuthorizationRef, _ rightName: UnsafePointer<Int8>) -> OSStatus
var kAuthorizationEnvironmentUsername: String { get }
var kAuthorizationEnvironmentPassword: String { get }
var kAuthorizationEnvironmentShared: String { get }
var kAuthorizationRightExecute: String { get }
var kAuthorizationEnvironmentPrompt: String { get }
var kAuthorizationEnvironmentIcon: String { get }
class CMSDecoder {
}
typealias CMSDecoderRef = CMSDecoder
func CMSDecoderGetTypeID() -> CFTypeID
enum CMSSignerStatus : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Unsigned
  case Valid
  case NeedsDetachedContent
  case InvalidSignature
  case InvalidCert
  case InvalidIndex
}
@available(OSX 10.5, *)
func CMSDecoderCreate(cmsDecoderOut: UnsafeMutablePointer<CMSDecoder?>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderUpdateMessage(cmsDecoder: CMSDecoder, _ msgBytes: UnsafePointer<Void>, _ msgBytesLen: Int) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderFinalizeMessage(cmsDecoder: CMSDecoder) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderSetDetachedContent(cmsDecoder: CMSDecoder, _ detachedContent: CFData) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderCopyDetachedContent(cmsDecoder: CMSDecoder, _ detachedContentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderSetSearchKeychain(cmsDecoder: CMSDecoder, _ keychainOrArray: AnyObject) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderGetNumSigners(cmsDecoder: CMSDecoder, _ numSignersOut: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderCopySignerStatus(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ policyOrArray: AnyObject, _ evaluateSecTrust: Bool, _ signerStatusOut: UnsafeMutablePointer<CMSSignerStatus>, _ secTrustOut: UnsafeMutablePointer<SecTrust?>, _ certVerifyResultCodeOut: UnsafeMutablePointer<OSStatus>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderCopySignerEmailAddress(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ signerEmailAddressOut: UnsafeMutablePointer<CFString?>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderCopySignerCert(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ signerCertOut: UnsafeMutablePointer<SecCertificate?>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderIsContentEncrypted(cmsDecoder: CMSDecoder, _ isEncryptedOut: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderCopyEncapsulatedContentType(cmsDecoder: CMSDecoder, _ eContentTypeOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderCopyAllCerts(cmsDecoder: CMSDecoder, _ certsOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderCopyContent(cmsDecoder: CMSDecoder, _ contentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(OSX 10.8, *)
func CMSDecoderCopySignerSigningTime(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ signingTime: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
@available(OSX 10.8, *)
func CMSDecoderCopySignerTimestamp(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ timestamp: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
@available(OSX 10.10, *)
func CMSDecoderCopySignerTimestampWithPolicy(cmsDecoder: CMSDecoder, _ timeStampPolicy: AnyObject?, _ signerIndex: Int, _ timestamp: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
@available(OSX 10.8, *)
func CMSDecoderCopySignerTimestampCertificates(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ certificateRefs: UnsafeMutablePointer<CFArray?>) -> OSStatus
typealias CMSEncoderRef = CMSEncoder
class CMSEncoder {
}
@available(OSX 10.5, *)
func CMSEncoderGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CMSEncoderCreate(cmsEncoderOut: UnsafeMutablePointer<CMSEncoder?>) -> OSStatus
let kCMSEncoderDigestAlgorithmSHA1: CFString
let kCMSEncoderDigestAlgorithmSHA256: CFString
@available(OSX 10.11, *)
func CMSEncoderSetSignerAlgorithm(cmsEncoder: CMSEncoder, _ digestAlgorithm: CFString) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderAddSigners(cmsEncoder: CMSEncoder, _ signerOrArray: AnyObject) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderCopySigners(cmsEncoder: CMSEncoder, _ signersOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderAddRecipients(cmsEncoder: CMSEncoder, _ recipientOrArray: AnyObject) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderCopyRecipients(cmsEncoder: CMSEncoder, _ recipientsOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderSetHasDetachedContent(cmsEncoder: CMSEncoder, _ detachedContent: Bool) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderGetHasDetachedContent(cmsEncoder: CMSEncoder, _ detachedContentOut: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderSetEncapsulatedContentType(cmsEncoder: CMSEncoder, _ eContentType: UnsafePointer<CSSM_OID>) -> OSStatus
@available(OSX 10.7, *)
func CMSEncoderSetEncapsulatedContentTypeOID(cmsEncoder: CMSEncoder, _ eContentTypeOID: AnyObject) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderCopyEncapsulatedContentType(cmsEncoder: CMSEncoder, _ eContentTypeOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderAddSupportingCerts(cmsEncoder: CMSEncoder, _ certOrArray: AnyObject) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderCopySupportingCerts(cmsEncoder: CMSEncoder, _ certsOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
enum CMSSignedAttributes : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case AttrNone
  case AttrSmimeCapabilities
  case AttrSmimeEncryptionKeyPrefs
  case AttrSmimeMSEncryptionKeyPrefs
  case AttrSigningTime
}
@available(OSX 10.5, *)
func CMSEncoderAddSignedAttributes(cmsEncoder: CMSEncoder, _ signedAttributes: CMSSignedAttributes) -> OSStatus
enum CMSCertificateChainMode : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case SignerOnly
  case Chain
  case ChainWithRoot
}
@available(OSX 10.5, *)
func CMSEncoderSetCertificateChainMode(cmsEncoder: CMSEncoder, _ chainMode: CMSCertificateChainMode) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderGetCertificateChainMode(cmsEncoder: CMSEncoder, _ chainModeOut: UnsafeMutablePointer<CMSCertificateChainMode>) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderUpdateContent(cmsEncoder: CMSEncoder, _ content: UnsafePointer<Void>, _ contentLen: Int) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderCopyEncodedContent(cmsEncoder: CMSEncoder, _ encodedContentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(OSX 10.5, *)
func CMSEncode(signers: AnyObject?, _ recipients: AnyObject?, _ eContentType: UnsafePointer<CSSM_OID>, _ detachedContent: Bool, _ signedAttributes: CMSSignedAttributes, _ content: UnsafePointer<Void>, _ contentLen: Int, _ encodedContentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(OSX 10.7, *)
func CMSEncodeContent(signers: AnyObject?, _ recipients: AnyObject?, _ eContentTypeOID: AnyObject?, _ detachedContent: Bool, _ signedAttributes: CMSSignedAttributes, _ content: UnsafePointer<Void>, _ contentLen: Int, _ encodedContentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(OSX 10.8, *)
func CMSEncoderCopySignerTimestamp(cmsEncoder: CMSEncoder, _ signerIndex: Int, _ timestamp: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
@available(OSX 10.10, *)
func CMSEncoderCopySignerTimestampWithPolicy(cmsEncoder: CMSEncoder, _ timeStampPolicy: AnyObject?, _ signerIndex: Int, _ timestamp: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
var errSecCSUnimplemented: OSStatus { get }
var errSecCSInvalidObjectRef: OSStatus { get }
var errSecCSInvalidFlags: OSStatus { get }
var errSecCSObjectRequired: OSStatus { get }
var errSecCSStaticCodeNotFound: OSStatus { get }
var errSecCSUnsupportedGuestAttributes: OSStatus { get }
var errSecCSInvalidAttributeValues: OSStatus { get }
var errSecCSNoSuchCode: OSStatus { get }
var errSecCSMultipleGuests: OSStatus { get }
var errSecCSGuestInvalid: OSStatus { get }
var errSecCSUnsigned: OSStatus { get }
var errSecCSSignatureFailed: OSStatus { get }
var errSecCSSignatureNotVerifiable: OSStatus { get }
var errSecCSSignatureUnsupported: OSStatus { get }
var errSecCSBadDictionaryFormat: OSStatus { get }
var errSecCSResourcesNotSealed: OSStatus { get }
var errSecCSResourcesNotFound: OSStatus { get }
var errSecCSResourcesInvalid: OSStatus { get }
var errSecCSBadResource: OSStatus { get }
var errSecCSResourceRulesInvalid: OSStatus { get }
var errSecCSReqInvalid: OSStatus { get }
var errSecCSReqUnsupported: OSStatus { get }
var errSecCSReqFailed: OSStatus { get }
var errSecCSBadObjectFormat: OSStatus { get }
var errSecCSInternalError: OSStatus { get }
var errSecCSHostReject: OSStatus { get }
var errSecCSNotAHost: OSStatus { get }
var errSecCSSignatureInvalid: OSStatus { get }
var errSecCSHostProtocolRelativePath: OSStatus { get }
var errSecCSHostProtocolContradiction: OSStatus { get }
var errSecCSHostProtocolDedicationError: OSStatus { get }
var errSecCSHostProtocolNotProxy: OSStatus { get }
var errSecCSHostProtocolStateError: OSStatus { get }
var errSecCSHostProtocolUnrelated: OSStatus { get }
var errSecCSNotSupported: OSStatus { get }
var errSecCSCMSTooLarge: OSStatus { get }
var errSecCSHostProtocolInvalidHash: OSStatus { get }
var errSecCSStaticCodeChanged: OSStatus { get }
var errSecCSDBDenied: OSStatus { get }
var errSecCSDBAccess: OSStatus { get }
var errSecCSSigDBDenied: OSStatus { get }
var errSecCSSigDBAccess: OSStatus { get }
var errSecCSHostProtocolInvalidAttribute: OSStatus { get }
var errSecCSInfoPlistFailed: OSStatus { get }
var errSecCSNoMainExecutable: OSStatus { get }
var errSecCSBadBundleFormat: OSStatus { get }
var errSecCSNoMatches: OSStatus { get }
var errSecCSFileHardQuarantined: OSStatus { get }
var errSecCSOutdated: OSStatus { get }
var errSecCSDbCorrupt: OSStatus { get }
var errSecCSResourceDirectoryFailed: OSStatus { get }
var errSecCSUnsignedNestedCode: OSStatus { get }
var errSecCSBadNestedCode: OSStatus { get }
var errSecCSBadCallbackValue: OSStatus { get }
var errSecCSHelperFailed: OSStatus { get }
var errSecCSVetoed: OSStatus { get }
var errSecCSBadLVArch: OSStatus { get }
var errSecCSResourceNotSupported: OSStatus { get }
var errSecCSRegularFile: OSStatus { get }
var errSecCSUnsealedAppRoot: OSStatus { get }
var errSecCSWeakResourceRules: OSStatus { get }
var errSecCSDSStoreSymlink: OSStatus { get }
var errSecCSAmbiguousBundleFormat: OSStatus { get }
var errSecCSBadMainExecutable: OSStatus { get }
var errSecCSBadFrameworkVersion: OSStatus { get }
var errSecCSUnsealedFrameworkRoot: OSStatus { get }
var errSecCSWeakResourceEnvelope: OSStatus { get }
var errSecCSCancelled: OSStatus { get }
var errSecCSInvalidPlatform: OSStatus { get }
var errSecCSTooBig: OSStatus { get }
var errSecCSInvalidSymlink: OSStatus { get }
let kSecCFErrorArchitecture: CFString
let kSecCFErrorPattern: CFString
let kSecCFErrorResourceSeal: CFString
let kSecCFErrorResourceAdded: CFString
let kSecCFErrorResourceAltered: CFString
let kSecCFErrorResourceMissing: CFString
let kSecCFErrorInfoPlist: CFString
let kSecCFErrorGuestAttributes: CFString
let kSecCFErrorRequirementSyntax: CFString
let kSecCFErrorPath: CFString

/*!
	@typedef SecCodeRef
	This is the type of a reference to running code.

	In many (but not all) calls, this can be passed to a SecStaticCodeRef
	argument, which performs an implicit SecCodeCopyStaticCode call and
	operates on the result.
*/
typealias SecCodeRef = SecCode

/*!
	@typedef SecCodeRef
	This is the type of a reference to running code.

	In many (but not all) calls, this can be passed to a SecStaticCodeRef
	argument, which performs an implicit SecCodeCopyStaticCode call and
	operates on the result.
*/
class SecCode {
}

/*!
	@typedef SecStaticCodeRef
	This is the type of a reference to static code on disk.
*/
class SecStaticCode {
}

/*!
	@typedef SecStaticCodeRef
	This is the type of a reference to static code on disk.
*/
typealias SecStaticCodeRef = SecStaticCode

/*!
	@typedef SecRequirementRef
	This is the type of a reference to a code requirement.
*/
typealias SecRequirementRef = SecRequirement

/*!
	@typedef SecRequirementRef
	This is the type of a reference to a code requirement.
*/
class SecRequirement {
}

/*!
	@typedef SecGuestRef
	An abstract handle to identify a particular Guest in the context of its Host.
	
	Guest handles are assigned by the host at will, with kSecNoGuest (zero) being
	reserved as the null value. They can be reused for new children if desired.
*/
typealias SecGuestRef = UInt32
var kSecNoGuest: SecGuestRef { get }

/*!
	@typedef SecCSFlags
	This is the type of flags arguments to Code Signing API calls.
	It provides a bit mask of request and option flags. All of the bits in these
	masks are reserved to Apple; if you set any bits not defined in these headers,
	the behavior is generally undefined.
	
	This list describes the flags that are shared among several Code Signing API calls.
	Flags that only apply to one call are defined and documented with that call.
	Global flags are assigned from high order down (31 -> 0); call-specific flags
	are assigned from the bottom up (0 -> 31).

	@constant kSecCSDefaultFlags
	When passed to a flags argument throughout, indicates that default behavior
	is desired. Do not mix with other flags values.
	@constant kSecCSConsiderExpiration
	When passed to a call that performs code validation, requests that code signatures
	made by expired certificates be rejected. By default, expiration of participating
	certificates is not automatic grounds for rejection.
*/
struct SecCSFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var DefaultFlags: SecCSFlags { get }
  static var ConsiderExpiration: SecCSFlags { get }
  static var EnforceRevocationChecks: SecCSFlags { get }
  static var NoNetworkAccess: SecCSFlags { get }
  static var ReportProgress: SecCSFlags { get }
  static var CheckTrustedAnchors: SecCSFlags { get }
}

/*!
	@typedef SecCodeSignatureFlags
	This is the type of option flags that can be embedded in a code signature
	during signing, and that govern the use of the signature thereafter.
	Some of these flags can be set through the codesign(1) command's --options
	argument; some are set implicitly based on signing circumstances; and all
	can be set with the kSecCodeSignerFlags item of a signing information dictionary.
	
	@constant kSecCodeSignatureHost
	Indicates that the code may act as a host that controls and supervises guest
	code. If this flag is not set in a code signature, the code is never considered
	eligible to be a host, and any attempt to act like one will be ignored or rejected.
	@constant kSecCodeSignatureAdhoc
	The code has been sealed without a signing identity. No identity may be retrieved
	from it, and any code requirement placing restrictions on the signing identity
	will fail. This flag is set by the code signing API and cannot be set explicitly.
	@constant kSecCodeSignatureForceHard
	Implicitly set the "hard" status bit for the code when it starts running.
	This bit indicates that the code prefers to be denied access to a resource
	if gaining such access would cause its invalidation. Since the hard bit is
	sticky, setting this option bit guarantees that the code will always have
	it set.
	@constant kSecCodeSignatureForceKill
	Implicitly set the "kill" status bit for the code when it starts running.
	This bit indicates that the code wishes to be terminated with prejudice if
	it is ever invalidated. Since the kill bit is sticky, setting this option bit
	guarantees that the code will always be dynamically valid, since it will die
	immediately	if it becomes invalid.
	@constant kSecCodeSignatureForceExpiration
	Forces the kSecCSConsiderExpiration flag on all validations of the code.
 */
struct SecCodeSignatureFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Host: SecCodeSignatureFlags { get }
  static var Adhoc: SecCodeSignatureFlags { get }
  static var ForceHard: SecCodeSignatureFlags { get }
  static var ForceKill: SecCodeSignatureFlags { get }
  static var ForceExpiration: SecCodeSignatureFlags { get }
  static var Restrict: SecCodeSignatureFlags { get }
  static var Enforcement: SecCodeSignatureFlags { get }
  static var LibraryValidation: SecCodeSignatureFlags { get }
}

/*!
	@typedef SecCodeStatus
	The code signing system attaches a set of status flags to each running code.
	These flags are maintained by the code's host, and can be read by anyone.
	A code may change its own flags, a host may change its guests' flags,
	and root may change anyone's flags.	However, these flags are sticky in that
	each can change in only one direction (and never back, for the lifetime of the code).
	Not even root can violate this restriction.

	There are other flags in SecCodeStatus that are not publicly documented.
	Do not rely on them, and do not ever attempt to explicitly set them.

	@constant kSecCodeStatusValid
	Indicates that the code is dynamically valid, i.e. it started correctly
	and has not been invalidated since then. The valid bit can only be cleared.
	
	Warning: This bit is not your one-stop shortcut to determining the validity	of code.
	It represents the dynamic component of the full validity function; if this
	bit is unset, the code is definitely invalid, but the converse is not always true.
	In fact, code hosts may represent the outcome of some delayed static validation work in this bit,
	and thus it strictly represents a blend of (all of) dynamic and (some of) static validity,
	depending on the implementation of the particular host managing the code. You can (only)
	rely that (1) dynamic invalidation will clear this bit; and (2) the combination
	of static validation and dynamic validity (as performed by the SecCodeCheckValidity* APIs)
	will give a correct answer.
	
	@constant kSecCodeStatusHard
	Indicates that the code prefers to be denied access to resources if gaining access
	would invalidate it. This bit can only be set.
	It is undefined whether code that is marked hard and is already invalid will still
	be denied access to a resource that would invalidate it if it were still valid. That is,
	the code may or may not get access to such a resource while being invalid, and that choice
	may appear random.
	
	@constant kSecCodeStatusKill
	Indicates that the code wants to be killed (terminated) if it ever loses its validity.
	This bit can only be set. Code that has the kill flag set will never be dynamically invalid
	(and live). Note however that a change in static validity does not necessarily trigger instant
	death.
*/
struct SecCodeStatus : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Valid: SecCodeStatus { get }
  static var Hard: SecCodeStatus { get }
  static var Kill: SecCodeStatus { get }
}

/*!
	@typedef SecRequirementType
	An enumeration indicating different types of internal requirements for code.
 */
enum SecRequirementType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case HostRequirementType
  case GuestRequirementType
  case DesignatedRequirementType
  case LibraryRequirementType
  case PluginRequirementType
  case InvalidRequirementType
  static var RequirementTypeCount: SecRequirementType { get }
}
typealias SSLCipherSuite = UInt32
var SSL_NULL_WITH_NULL_NULL: SSLCipherSuite { get }
var SSL_RSA_WITH_NULL_MD5: SSLCipherSuite { get }
var SSL_RSA_WITH_NULL_SHA: SSLCipherSuite { get }
var SSL_RSA_EXPORT_WITH_RC4_40_MD5: SSLCipherSuite { get }
var SSL_RSA_WITH_RC4_128_MD5: SSLCipherSuite { get }
var SSL_RSA_WITH_RC4_128_SHA: SSLCipherSuite { get }
var SSL_RSA_EXPORT_WITH_RC2_CBC_40_MD5: SSLCipherSuite { get }
var SSL_RSA_WITH_IDEA_CBC_SHA: SSLCipherSuite { get }
var SSL_RSA_EXPORT_WITH_DES40_CBC_SHA: SSLCipherSuite { get }
var SSL_RSA_WITH_DES_CBC_SHA: SSLCipherSuite { get }
var SSL_RSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_DSS_EXPORT_WITH_DES40_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_DSS_WITH_DES_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_DSS_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_RSA_EXPORT_WITH_DES40_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_RSA_WITH_DES_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_RSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA: SSLCipherSuite { get }
var SSL_DHE_DSS_WITH_DES_CBC_SHA: SSLCipherSuite { get }
var SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA: SSLCipherSuite { get }
var SSL_DHE_RSA_WITH_DES_CBC_SHA: SSLCipherSuite { get }
var SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_anon_EXPORT_WITH_RC4_40_MD5: SSLCipherSuite { get }
var SSL_DH_anon_WITH_RC4_128_MD5: SSLCipherSuite { get }
var SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_anon_WITH_DES_CBC_SHA: SSLCipherSuite { get }
var SSL_DH_anon_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var SSL_FORTEZZA_DMS_WITH_NULL_SHA: SSLCipherSuite { get }
var SSL_FORTEZZA_DMS_WITH_FORTEZZA_CBC_SHA: SSLCipherSuite { get }
var TLS_RSA_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_DSS_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_RSA_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_DSS_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_RSA_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_anon_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_RSA_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_DSS_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_RSA_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_DSS_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_RSA_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_anon_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_anon_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_ECDH_anon_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_anon_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_ECDH_anon_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_NULL_WITH_NULL_NULL: SSLCipherSuite { get }
var TLS_RSA_WITH_NULL_MD5: SSLCipherSuite { get }
var TLS_RSA_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_RSA_WITH_RC4_128_MD5: SSLCipherSuite { get }
var TLS_RSA_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_RSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_RSA_WITH_NULL_SHA256: SSLCipherSuite { get }
var TLS_RSA_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_RSA_WITH_AES_256_CBC_SHA256: SSLCipherSuite { get }
var TLS_DH_DSS_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_RSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_DSS_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_DH_RSA_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_DHE_DSS_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_DHE_RSA_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_DH_DSS_WITH_AES_256_CBC_SHA256: SSLCipherSuite { get }
var TLS_DH_RSA_WITH_AES_256_CBC_SHA256: SSLCipherSuite { get }
var TLS_DHE_DSS_WITH_AES_256_CBC_SHA256: SSLCipherSuite { get }
var TLS_DHE_RSA_WITH_AES_256_CBC_SHA256: SSLCipherSuite { get }
var TLS_DH_anon_WITH_RC4_128_MD5: SSLCipherSuite { get }
var TLS_DH_anon_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_DH_anon_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_DH_anon_WITH_AES_256_CBC_SHA256: SSLCipherSuite { get }
var TLS_PSK_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_PSK_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_PSK_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_PSK_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_RC4_128_SHA: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_AES_128_CBC_SHA: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_AES_256_CBC_SHA: SSLCipherSuite { get }
var TLS_PSK_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_NULL_SHA: SSLCipherSuite { get }
var TLS_RSA_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_RSA_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_DHE_RSA_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_DHE_RSA_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_DH_RSA_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_DH_RSA_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_DHE_DSS_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_DHE_DSS_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_DH_DSS_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_DH_DSS_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_DH_anon_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_DH_anon_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_PSK_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_PSK_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_PSK_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_PSK_WITH_AES_256_CBC_SHA384: SSLCipherSuite { get }
var TLS_PSK_WITH_NULL_SHA256: SSLCipherSuite { get }
var TLS_PSK_WITH_NULL_SHA384: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_AES_256_CBC_SHA384: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_NULL_SHA256: SSLCipherSuite { get }
var TLS_DHE_PSK_WITH_NULL_SHA384: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_AES_256_CBC_SHA384: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_NULL_SHA256: SSLCipherSuite { get }
var TLS_RSA_PSK_WITH_NULL_SHA384: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256: SSLCipherSuite { get }
var TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384: SSLCipherSuite { get }
var TLS_EMPTY_RENEGOTIATION_INFO_SCSV: SSLCipherSuite { get }
var SSL_RSA_WITH_RC2_CBC_MD5: SSLCipherSuite { get }
var SSL_RSA_WITH_IDEA_CBC_MD5: SSLCipherSuite { get }
var SSL_RSA_WITH_DES_CBC_MD5: SSLCipherSuite { get }
var SSL_RSA_WITH_3DES_EDE_CBC_MD5: SSLCipherSuite { get }
var SSL_NO_SUCH_CIPHERSUITE: SSLCipherSuite { get }
struct SecKeychainPromptSelector : OptionSetType {
  init(rawValue: uint16)
  let rawValue: uint16
  static var RequirePassphase: SecKeychainPromptSelector { get }
  static var Unsigned: SecKeychainPromptSelector { get }
  static var UnsignedAct: SecKeychainPromptSelector { get }
  static var Invalid: SecKeychainPromptSelector { get }
  static var InvalidAct: SecKeychainPromptSelector { get }
}

/*!
	 @function SecACLGetTypeID
	 @abstract Returns the type identifier of SecACL instances.
	 @result The CFTypeID of SecACL instances.
	 */
@available(OSX 10.3, *)
func SecACLGetTypeID() -> CFTypeID

/*!
	 @function SecACLCreateWithSimpleContents
	 @abstract Creates a new access control list entry from the application list, description, and prompt selector provided and adds it to an item's access.
	 @param access An access reference.
	 @param applicationList An array of SecTrustedApplication instances that will be allowed access without prompting. 
	 @param description The human readable name that will be used to refer to this item when the user is prompted.
	 @param promptSelector A SecKeychainPromptSelector selector.
	 @param newAcl A pointer to an access control list entry.  On return, this points to the reference of the new access control list entry.
	 @result A result code.  See "Security Error Codes" (SecBase.h).
	 */
@available(OSX 10.7, *)
func SecACLCreateWithSimpleContents(access: SecAccess, _ applicationList: CFArray?, _ description: CFString, _ promptSelector: SecKeychainPromptSelector, _ newAcl: UnsafeMutablePointer<SecACL?>) -> OSStatus

/*!
	 @function SecACLRemove
	 @abstract Removes the access control list entry specified.
	 @param aclRef The reference to the access control list entry to remove.
	 @result A result code.  See "Security Error Codes" (SecBase.h).
	 */
@available(OSX 10.3, *)
func SecACLRemove(aclRef: SecACL) -> OSStatus

/*!
	 @function SecACLCopyContents
	 @abstract Returns the application list, description, and prompt selector for a given access control list entry.
	 @param acl An access control list entry reference.
	 @param applicationList On return, An array of SecTrustedApplication instances that will be allowed access without prompting, for the given access control list entry.  The caller needs to call CFRelease on this array when it's no longer needed.
	 @param description On return, the human readable name that will be used to refer to this item when the user is prompted, for the given access control list entry. The caller needs to call CFRelease on this string when it's no longer needed.
	 @param promptSelector A pointer to a SecKeychainPromptSelector.  On return, this points to the SecKeychainPromptSelector for the given access control list entry.
	 @result A result code.  See "Security Error Codes" (SecBase.h).
	 */
@available(OSX 10.7, *)
func SecACLCopyContents(acl: SecACL, _ applicationList: UnsafeMutablePointer<CFArray?>, _ description: UnsafeMutablePointer<CFString?>, _ promptSelector: UnsafeMutablePointer<SecKeychainPromptSelector>) -> OSStatus

/*!
	 @function SecACLSetContents
	 @abstract Sets the application list, description, and prompt selector for a given access control list entry.
	 @param acl A reference to the access control list entry to edit.
	 @param applicationList An application list reference. 
	 @param description The human readable name that will be used to refer to this item when the user is prompted.
	 @param promptSelector A SecKeychainPromptSelector selector.
	 @result A result code.  See "Security Error Codes" (SecBase.h).
	 */
@available(OSX 10.7, *)
func SecACLSetContents(acl: SecACL, _ applicationList: CFArray?, _ description: CFString, _ promptSelector: SecKeychainPromptSelector) -> OSStatus

/*!
	 @function SecACLCopyAuthorizations
	 @abstract Retrieve the authorization tags of a given access control list entry.
	 @param acl An access control list entry reference.
	 @result On return, a CFArrayRef of the authorizations for this ACL.
	 */
@available(OSX 10.7, *)
func SecACLCopyAuthorizations(acl: SecACL) -> CFArray

/*!
	 @function SecACLUpdateAuthorizations
	 @abstract Sets the authorization tags of a given access control list entry.
	 @param acl An access control list entry reference.
	 @param authorizations A pointer to an array of authorization tags.
	 @result A result code.  See "Security Error Codes" (SecBase.h).
	 */
@available(OSX 10.7, *)
func SecACLUpdateAuthorizations(acl: SecACL, _ authorizations: CFArray) -> OSStatus
typealias SecAccessOwnerType = UInt32
var kSecUseOnlyUID: Int { get }
var kSecUseOnlyGID: Int { get }
var kSecHonorRoot: Int { get }
var kSecMatchBits: Int { get }
@available(OSX 10.7, *)
let kSecACLAuthorizationAny: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationLogin: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationGenKey: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationDelete: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationExportWrapped: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationExportClear: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationImportWrapped: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationImportClear: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationSign: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationEncrypt: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationDecrypt: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationMAC: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationDerive: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationKeychainCreate: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationKeychainDelete: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationKeychainItemRead: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationKeychainItemInsert: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationKeychainItemModify: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationKeychainItemDelete: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationChangeACL: CFString
@available(OSX 10.7, *)
let kSecACLAuthorizationChangeOwner: CFString

/*!
	@function SecAccessGetTypeID
	@abstract Returns the type identifier of SecAccess instances.
	@result The CFTypeID of SecAccess instances.
*/
func SecAccessGetTypeID() -> CFTypeID

/*!
	@function SecAccessCreate
	@abstract Creates a new SecAccessRef that is set to the currently designated system default
		configuration of a (newly created) security object. Note that the precise nature of
		this default may change between releases.
	@param descriptor The name of the item as it should appear in security dialogs
	@param trustedlist A CFArray of TrustedApplicationRefs, specifying which applications
		should be allowed to access an item without triggering confirmation dialogs.
		If NULL, defaults to (just) the application creating the item. To set no applications,
		pass a CFArray with no elements.
	@param accessRef On return, a pointer to the new access reference.
	@result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecAccessCreate(descriptor: CFString, _ trustedlist: CFArray?, _ accessRef: UnsafeMutablePointer<SecAccess?>) -> OSStatus

/*!
	@function SecAccessCreateWithOwnerAndACL
	@abstract Creates a new SecAccessRef using either for a user or a group with a list of ACLs
	@param userId An user id that specifies the user to associate with this SecAccessRef.
	@param groupId A group id that specifies the group to associate with this SecAccessRef.
	@param ownerType Specifies the how the ownership of the new SecAccessRef is defined.
	@param acls A CFArrayRef of the ACLs to associate with this SecAccessRef
	@param error Optionally a pointer to a CFErrorRef to return any errors with may have occured
	@result  A pointer to the new access reference.
*/
@available(OSX 10.7, *)
func SecAccessCreateWithOwnerAndACL(userId: uid_t, _ groupId: gid_t, _ ownerType: SecAccessOwnerType, _ acls: CFArray?, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecAccess?

/*!
	@function SecAccessCopyOwnerAndACL
	@abstract Retrieves the owner and the access control list of a given access.
	@param accessRef A reference to the access from which to retrieve the information.
	@param userId On return, the user id of the owner
	@param groupId On return, the group id of the owner
	@param ownerType On return, the type of owner for this AccessRef
	@param aclList On return, a pointer to a new created CFArray of SecACL instances.  The caller is responsible for calling CFRelease on this array.
	@result A result code.  See "Security Error Codes" (SecBase.h).
 */
@available(OSX 10.7, *)
func SecAccessCopyOwnerAndACL(accessRef: SecAccess, _ userId: UnsafeMutablePointer<uid_t>, _ groupId: UnsafeMutablePointer<gid_t>, _ ownerType: UnsafeMutablePointer<SecAccessOwnerType>, _ aclList: UnsafeMutablePointer<CFArray?>) -> OSStatus

/*!
	@function SecAccessCopyACLList
	@abstract Copies all the access control lists of a given access.
	@param accessRef A reference to the access from which to retrieve the information.
	@param aclList On return, a pointer to a new created CFArray of SecACL instances.  The caller is responsible for calling CFRelease on this array.
	@result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecAccessCopyACLList(accessRef: SecAccess, _ aclList: UnsafeMutablePointer<CFArray?>) -> OSStatus

/*!
	@function SecAccessCopyMatchingACLList
	@abstract Copies selected access control lists from a given access.
	@param accessRef A reference to the access from which to retrieve the information.
	@param authorizationTag An authorization tag specifying what action with which to select the action control lists.
	@result A pointer to the selected access control lists.
*/
@available(OSX 10.7, *)
func SecAccessCopyMatchingACLList(accessRef: SecAccess, _ authorizationTag: AnyObject) -> CFArray?

/*!
 @function SecAccessControlGetTypeID
 @abstract Returns the type identifier of SecAccessControl instances.
 @result The CFTypeID of SecAccessControl instances.
 */
@available(OSX 10.10, *)
func SecAccessControlGetTypeID() -> CFTypeID
@available(OSX 10.10, *)
struct SecAccessControlCreateFlags : OptionSetType {
  init(rawValue: CFIndex)
  let rawValue: CFIndex
  static var UserPresence: SecAccessControlCreateFlags { get }
  @available(OSX 10.11, *)
  static var DevicePasscode: SecAccessControlCreateFlags { get }
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
@available(OSX 10.10, *)
func SecAccessControlCreateWithFlags(allocator: CFAllocator?, _ protection: AnyObject, _ flags: SecAccessControlCreateFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecAccessControl?
typealias SecAsn1Item = CSSM_DATA
typealias SecAsn1Oid = CSSM_OID
typealias SecAsn1AlgId = CSSM_X509_ALGORITHM_IDENTIFIER
typealias SecAsn1PubKeyInfo = CSSM_X509_SUBJECT_PUBLIC_KEY_INFO
struct SecAsn1Template_struct {
  var kind: UInt32
  var offset: UInt32
  var sub: UnsafePointer<Void>
  var size: UInt32
}
typealias SecAsn1Template = SecAsn1Template_struct
var SEC_ASN1_TAG_MASK: Int32 { get }
var SEC_ASN1_TAGNUM_MASK: Int32 { get }
var SEC_ASN1_BOOLEAN: Int32 { get }
var SEC_ASN1_INTEGER: Int32 { get }
var SEC_ASN1_BIT_STRING: Int32 { get }
var SEC_ASN1_OCTET_STRING: Int32 { get }
var SEC_ASN1_NULL: Int32 { get }
var SEC_ASN1_OBJECT_ID: Int32 { get }
var SEC_ASN1_OBJECT_DESCRIPTOR: Int32 { get }
var SEC_ASN1_REAL: Int32 { get }
var SEC_ASN1_ENUMERATED: Int32 { get }
var SEC_ASN1_EMBEDDED_PDV: Int32 { get }
var SEC_ASN1_UTF8_STRING: Int32 { get }
var SEC_ASN1_SEQUENCE: Int32 { get }
var SEC_ASN1_SET: Int32 { get }
var SEC_ASN1_NUMERIC_STRING: Int32 { get }
var SEC_ASN1_PRINTABLE_STRING: Int32 { get }
var SEC_ASN1_T61_STRING: Int32 { get }
var SEC_ASN1_VIDEOTEX_STRING: Int32 { get }
var SEC_ASN1_IA5_STRING: Int32 { get }
var SEC_ASN1_UTC_TIME: Int32 { get }
var SEC_ASN1_GENERALIZED_TIME: Int32 { get }
var SEC_ASN1_GRAPHIC_STRING: Int32 { get }
var SEC_ASN1_VISIBLE_STRING: Int32 { get }
var SEC_ASN1_GENERAL_STRING: Int32 { get }
var SEC_ASN1_UNIVERSAL_STRING: Int32 { get }
var SEC_ASN1_BMP_STRING: Int32 { get }
var SEC_ASN1_HIGH_TAG_NUMBER: Int32 { get }
var SEC_ASN1_TELETEX_STRING: Int32 { get }
var SEC_ASN1_METHOD_MASK: Int32 { get }
var SEC_ASN1_PRIMITIVE: Int32 { get }
var SEC_ASN1_CONSTRUCTED: Int32 { get }
var SEC_ASN1_CLASS_MASK: Int32 { get }
var SEC_ASN1_UNIVERSAL: Int32 { get }
var SEC_ASN1_APPLICATION: Int32 { get }
var SEC_ASN1_CONTEXT_SPECIFIC: Int32 { get }
var SEC_ASN1_PRIVATE: Int32 { get }
var SEC_ASN1_OPTIONAL: Int32 { get }
var SEC_ASN1_EXPLICIT: Int32 { get }
var SEC_ASN1_ANY: Int32 { get }
var SEC_ASN1_INLINE: Int32 { get }
var SEC_ASN1_POINTER: Int32 { get }
var SEC_ASN1_GROUP: Int32 { get }
var SEC_ASN1_DYNAMIC: Int32 { get }
var SEC_ASN1_SKIP: Int32 { get }
var SEC_ASN1_INNER: Int32 { get }
var SEC_ASN1_SAVE: Int32 { get }
var SEC_ASN1_SKIP_REST: Int32 { get }
var SEC_ASN1_CHOICE: Int32 { get }
var SEC_ASN1_SIGNED_INT: Int32 { get }
typealias SecAsn1TemplateChooser = (UnsafeMutablePointer<Void>, DarwinBoolean, UnsafePointer<Int8>, Int, UnsafeMutablePointer<Void>) -> UnsafePointer<SecAsn1Template>
typealias SecAsn1TemplateChooserPtr = @convention(c) (UnsafeMutablePointer<Void>, DarwinBoolean, UnsafePointer<Int8>, Int, UnsafeMutablePointer<Void>) -> UnsafePointer<SecAsn1Template>

/*!
    @typedef SecKeychainRef
    @abstract Contains information about a keychain.
*/
class SecKeychain {
}

/*!
    @typedef SecKeychainRef
    @abstract Contains information about a keychain.
*/
typealias SecKeychainRef = SecKeychain

/*!
    @typedef SecKeychainItemRef
    @abstract Contains information about a keychain item.
*/
typealias SecKeychainItemRef = SecKeychainItem

/*!
    @typedef SecKeychainItemRef
    @abstract Contains information about a keychain item.
*/
class SecKeychainItem {
}

/*!
    @typedef SecKeychainSearchRef
    @abstract Contains information about a keychain search.
*/
class SecKeychainSearch {
}

/*!
    @typedef SecKeychainSearchRef
    @abstract Contains information about a keychain search.
*/
typealias SecKeychainSearchRef = SecKeychainSearch

/*!
    @typedef SecKeychainAttrType
    @abstract Represents a keychain attribute type.
*/
typealias SecKeychainAttrType = OSType

/*!
    @struct SecKeychainAttribute
    @abstract Contains keychain attributes.
    @field tag A 4-byte attribute tag.
    @field length The length of the buffer pointed to by data.
    @field data A pointer to the attribute data.
*/
struct SecKeychainAttribute {
  var tag: SecKeychainAttrType
  var length: UInt32
  var data: UnsafeMutablePointer<Void>
}

/*!
    @typedef SecKeychainAttributePtr
    @abstract Represents a pointer to a keychain attribute structure.
*/
typealias SecKeychainAttributePtr = UnsafeMutablePointer<SecKeychainAttribute>

/*!
    @typedef SecKeychainAttributeList
    @abstract Represents a list of keychain attributes.
    @field count An unsigned 32-bit integer that represents the number of keychain attributes in the array.
    @field attr A pointer to the first keychain attribute in the array.
*/
struct SecKeychainAttributeList {
  var count: UInt32
  var attr: UnsafeMutablePointer<SecKeychainAttribute>
}

/*!
    @typedef SecKeychainStatus
    @abstract Represents the status of a keychain.
*/
typealias SecKeychainStatus = UInt32

/*!
    @typedef SecTrustedApplicationRef
    @abstract Contains information about a trusted application.
*/
typealias SecTrustedApplicationRef = SecTrustedApplication

/*!
    @typedef SecTrustedApplicationRef
    @abstract Contains information about a trusted application.
*/
class SecTrustedApplication {
}

/*!
    @typedef SecPolicyRef
    @abstract Contains information about a policy.
*/
typealias SecPolicyRef = SecPolicy

/*!
    @typedef SecPolicyRef
    @abstract Contains information about a policy.
*/
class SecPolicy {
}

/*!
    @typedef SecCertificateRef
    @abstract Contains information about a certificate.
*/
class SecCertificate {
}

/*!
    @typedef SecCertificateRef
    @abstract Contains information about a certificate.
*/
typealias SecCertificateRef = SecCertificate

/*!
    @typedef SecAccessRef
    @abstract Contains information about an access.
*/
typealias SecAccessRef = SecAccess

/*!
    @typedef SecAccessRef
    @abstract Contains information about an access.
*/
class SecAccess {
}

/*!
    @typedef SecIdentityRef
    @abstract Contains information about an identity.
*/
class SecIdentity {
}

/*!
    @typedef SecIdentityRef
    @abstract Contains information about an identity.
*/
typealias SecIdentityRef = SecIdentity

/*!
    @typedef SecKeyRef
    @abstract Contains information about a key.
*/
typealias SecKeyRef = SecKey

/*!
    @typedef SecKeyRef
    @abstract Contains information about a key.
*/
class SecKey {
}

/*!
    @typedef SecACLRef
    @abstract Contains information about an access control list (ACL) entry.
*/
class SecACL {
}

/*!
    @typedef SecACLRef
    @abstract Contains information about an access control list (ACL) entry.
*/
typealias SecACLRef = SecACL

/*!
    @typedef SecAccessControlRef
    @abstract CFType representing access control for an item.
*/
typealias SecAccessControlRef = SecAccessControl

/*!
    @typedef SecAccessControlRef
    @abstract CFType representing access control for an item.
*/
class SecAccessControl {
}

/*!
    @typedef SecPasswordRef
    @abstract Contains information about a password.
*/
class SecPassword {
}

/*!
    @typedef SecPasswordRef
    @abstract Contains information about a password.
*/
typealias SecPasswordRef = SecPassword

/*!
    @typedef SecKeychainAttributeInfo
    @abstract Represents an attribute.
    @field count The number of tag-format pairs in the respective arrays.
    @field tag A pointer to the first attribute tag in the array.
    @field format A pointer to the first CSSM_DB_ATTRIBUTE_FORMAT in the array.
    @discussion Each tag and format item form a pair.
*/
struct SecKeychainAttributeInfo {
  var count: UInt32
  var tag: UnsafeMutablePointer<UInt32>
  var format: UnsafeMutablePointer<UInt32>
}

/*!
    @function SecCopyErrorMessageString
    @abstract Returns a string describing the specified error result code.
    @param status An error result code of type OSStatus or CSSM_RETURN, as returned by a Security or CSSM function.
    @reserved Reserved for future use. Your code should pass NULL in this parameter.
    @result A reference to an error string, or NULL if no error string is available for the specified result code. Your code must release this reference by calling the CFRelease function.
*/
@available(OSX 10.3, *)
func SecCopyErrorMessageString(status: OSStatus, _ reserved: UnsafeMutablePointer<Void>) -> CFString?
var errSecSuccess: OSStatus { get }
var errSecUnimplemented: OSStatus { get }
var errSecDskFull: OSStatus { get }
var errSecIO: OSStatus { get }
var errSecParam: OSStatus { get }
var errSecWrPerm: OSStatus { get }
var errSecAllocate: OSStatus { get }
var errSecUserCanceled: OSStatus { get }
var errSecBadReq: OSStatus { get }
var errSecInternalComponent: OSStatus { get }
var errSecCoreFoundationUnknown: OSStatus { get }
var errSecNotAvailable: OSStatus { get }
var errSecReadOnly: OSStatus { get }
var errSecAuthFailed: OSStatus { get }
var errSecNoSuchKeychain: OSStatus { get }
var errSecInvalidKeychain: OSStatus { get }
var errSecDuplicateKeychain: OSStatus { get }
var errSecDuplicateCallback: OSStatus { get }
var errSecInvalidCallback: OSStatus { get }
var errSecDuplicateItem: OSStatus { get }
var errSecItemNotFound: OSStatus { get }
var errSecBufferTooSmall: OSStatus { get }
var errSecDataTooLarge: OSStatus { get }
var errSecNoSuchAttr: OSStatus { get }
var errSecInvalidItemRef: OSStatus { get }
var errSecInvalidSearchRef: OSStatus { get }
var errSecNoSuchClass: OSStatus { get }
var errSecNoDefaultKeychain: OSStatus { get }
var errSecInteractionNotAllowed: OSStatus { get }
var errSecReadOnlyAttr: OSStatus { get }
var errSecWrongSecVersion: OSStatus { get }
var errSecKeySizeNotAllowed: OSStatus { get }
var errSecNoStorageModule: OSStatus { get }
var errSecNoCertificateModule: OSStatus { get }
var errSecNoPolicyModule: OSStatus { get }
var errSecInteractionRequired: OSStatus { get }
var errSecDataNotAvailable: OSStatus { get }
var errSecDataNotModifiable: OSStatus { get }
var errSecCreateChainFailed: OSStatus { get }
var errSecInvalidPrefsDomain: OSStatus { get }
var errSecInDarkWake: OSStatus { get }
var errSecACLNotSimple: OSStatus { get }
var errSecPolicyNotFound: OSStatus { get }
var errSecInvalidTrustSetting: OSStatus { get }
var errSecNoAccessForItem: OSStatus { get }
var errSecInvalidOwnerEdit: OSStatus { get }
var errSecTrustNotAvailable: OSStatus { get }
var errSecUnsupportedFormat: OSStatus { get }
var errSecUnknownFormat: OSStatus { get }
var errSecKeyIsSensitive: OSStatus { get }
var errSecMultiplePrivKeys: OSStatus { get }
var errSecPassphraseRequired: OSStatus { get }
var errSecInvalidPasswordRef: OSStatus { get }
var errSecInvalidTrustSettings: OSStatus { get }
var errSecNoTrustSettings: OSStatus { get }
var errSecPkcs12VerifyFailure: OSStatus { get }
var errSecNotSigner: OSStatus { get }
var errSecDecode: OSStatus { get }
var errSecServiceNotAvailable: OSStatus { get }
var errSecInsufficientClientID: OSStatus { get }
var errSecDeviceReset: OSStatus { get }
var errSecDeviceFailed: OSStatus { get }
var errSecAppleAddAppACLSubject: OSStatus { get }
var errSecApplePublicKeyIncomplete: OSStatus { get }
var errSecAppleSignatureMismatch: OSStatus { get }
var errSecAppleInvalidKeyStartDate: OSStatus { get }
var errSecAppleInvalidKeyEndDate: OSStatus { get }
var errSecConversionError: OSStatus { get }
var errSecAppleSSLv2Rollback: OSStatus { get }
var errSecDiskFull: OSStatus { get }
var errSecQuotaExceeded: OSStatus { get }
var errSecFileTooBig: OSStatus { get }
var errSecInvalidDatabaseBlob: OSStatus { get }
var errSecInvalidKeyBlob: OSStatus { get }
var errSecIncompatibleDatabaseBlob: OSStatus { get }
var errSecIncompatibleKeyBlob: OSStatus { get }
var errSecHostNameMismatch: OSStatus { get }
var errSecUnknownCriticalExtensionFlag: OSStatus { get }
var errSecNoBasicConstraints: OSStatus { get }
var errSecNoBasicConstraintsCA: OSStatus { get }
var errSecInvalidAuthorityKeyID: OSStatus { get }
var errSecInvalidSubjectKeyID: OSStatus { get }
var errSecInvalidKeyUsageForPolicy: OSStatus { get }
var errSecInvalidExtendedKeyUsage: OSStatus { get }
var errSecInvalidIDLinkage: OSStatus { get }
var errSecPathLengthConstraintExceeded: OSStatus { get }
var errSecInvalidRoot: OSStatus { get }
var errSecCRLExpired: OSStatus { get }
var errSecCRLNotValidYet: OSStatus { get }
var errSecCRLNotFound: OSStatus { get }
var errSecCRLServerDown: OSStatus { get }
var errSecCRLBadURI: OSStatus { get }
var errSecUnknownCertExtension: OSStatus { get }
var errSecUnknownCRLExtension: OSStatus { get }
var errSecCRLNotTrusted: OSStatus { get }
var errSecCRLPolicyFailed: OSStatus { get }
var errSecIDPFailure: OSStatus { get }
var errSecSMIMEEmailAddressesNotFound: OSStatus { get }
var errSecSMIMEBadExtendedKeyUsage: OSStatus { get }
var errSecSMIMEBadKeyUsage: OSStatus { get }
var errSecSMIMEKeyUsageNotCritical: OSStatus { get }
var errSecSMIMENoEmailAddress: OSStatus { get }
var errSecSMIMESubjAltNameNotCritical: OSStatus { get }
var errSecSSLBadExtendedKeyUsage: OSStatus { get }
var errSecOCSPBadResponse: OSStatus { get }
var errSecOCSPBadRequest: OSStatus { get }
var errSecOCSPUnavailable: OSStatus { get }
var errSecOCSPStatusUnrecognized: OSStatus { get }
var errSecEndOfData: OSStatus { get }
var errSecIncompleteCertRevocationCheck: OSStatus { get }
var errSecNetworkFailure: OSStatus { get }
var errSecOCSPNotTrustedToAnchor: OSStatus { get }
var errSecRecordModified: OSStatus { get }
var errSecOCSPSignatureError: OSStatus { get }
var errSecOCSPNoSigner: OSStatus { get }
var errSecOCSPResponderMalformedReq: OSStatus { get }
var errSecOCSPResponderInternalError: OSStatus { get }
var errSecOCSPResponderTryLater: OSStatus { get }
var errSecOCSPResponderSignatureRequired: OSStatus { get }
var errSecOCSPResponderUnauthorized: OSStatus { get }
var errSecOCSPResponseNonceMismatch: OSStatus { get }
var errSecCodeSigningBadCertChainLength: OSStatus { get }
var errSecCodeSigningNoBasicConstraints: OSStatus { get }
var errSecCodeSigningBadPathLengthConstraint: OSStatus { get }
var errSecCodeSigningNoExtendedKeyUsage: OSStatus { get }
var errSecCodeSigningDevelopment: OSStatus { get }
var errSecResourceSignBadCertChainLength: OSStatus { get }
var errSecResourceSignBadExtKeyUsage: OSStatus { get }
var errSecTrustSettingDeny: OSStatus { get }
var errSecInvalidSubjectName: OSStatus { get }
var errSecUnknownQualifiedCertStatement: OSStatus { get }
var errSecMobileMeRequestQueued: OSStatus { get }
var errSecMobileMeRequestRedirected: OSStatus { get }
var errSecMobileMeServerError: OSStatus { get }
var errSecMobileMeServerNotAvailable: OSStatus { get }
var errSecMobileMeServerAlreadyExists: OSStatus { get }
var errSecMobileMeServerServiceErr: OSStatus { get }
var errSecMobileMeRequestAlreadyPending: OSStatus { get }
var errSecMobileMeNoRequestPending: OSStatus { get }
var errSecMobileMeCSRVerifyFailure: OSStatus { get }
var errSecMobileMeFailedConsistencyCheck: OSStatus { get }
var errSecNotInitialized: OSStatus { get }
var errSecInvalidHandleUsage: OSStatus { get }
var errSecPVCReferentNotFound: OSStatus { get }
var errSecFunctionIntegrityFail: OSStatus { get }
var errSecInternalError: OSStatus { get }
var errSecMemoryError: OSStatus { get }
var errSecInvalidData: OSStatus { get }
var errSecMDSError: OSStatus { get }
var errSecInvalidPointer: OSStatus { get }
var errSecSelfCheckFailed: OSStatus { get }
var errSecFunctionFailed: OSStatus { get }
var errSecModuleManifestVerifyFailed: OSStatus { get }
var errSecInvalidGUID: OSStatus { get }
var errSecInvalidHandle: OSStatus { get }
var errSecInvalidDBList: OSStatus { get }
var errSecInvalidPassthroughID: OSStatus { get }
var errSecInvalidNetworkAddress: OSStatus { get }
var errSecCRLAlreadySigned: OSStatus { get }
var errSecInvalidNumberOfFields: OSStatus { get }
var errSecVerificationFailure: OSStatus { get }
var errSecUnknownTag: OSStatus { get }
var errSecInvalidSignature: OSStatus { get }
var errSecInvalidName: OSStatus { get }
var errSecInvalidCertificateRef: OSStatus { get }
var errSecInvalidCertificateGroup: OSStatus { get }
var errSecTagNotFound: OSStatus { get }
var errSecInvalidQuery: OSStatus { get }
var errSecInvalidValue: OSStatus { get }
var errSecCallbackFailed: OSStatus { get }
var errSecACLDeleteFailed: OSStatus { get }
var errSecACLReplaceFailed: OSStatus { get }
var errSecACLAddFailed: OSStatus { get }
var errSecACLChangeFailed: OSStatus { get }
var errSecInvalidAccessCredentials: OSStatus { get }
var errSecInvalidRecord: OSStatus { get }
var errSecInvalidACL: OSStatus { get }
var errSecInvalidSampleValue: OSStatus { get }
var errSecIncompatibleVersion: OSStatus { get }
var errSecPrivilegeNotGranted: OSStatus { get }
var errSecInvalidScope: OSStatus { get }
var errSecPVCAlreadyConfigured: OSStatus { get }
var errSecInvalidPVC: OSStatus { get }
var errSecEMMLoadFailed: OSStatus { get }
var errSecEMMUnloadFailed: OSStatus { get }
var errSecAddinLoadFailed: OSStatus { get }
var errSecInvalidKeyRef: OSStatus { get }
var errSecInvalidKeyHierarchy: OSStatus { get }
var errSecAddinUnloadFailed: OSStatus { get }
var errSecLibraryReferenceNotFound: OSStatus { get }
var errSecInvalidAddinFunctionTable: OSStatus { get }
var errSecInvalidServiceMask: OSStatus { get }
var errSecModuleNotLoaded: OSStatus { get }
var errSecInvalidSubServiceID: OSStatus { get }
var errSecAttributeNotInContext: OSStatus { get }
var errSecModuleManagerInitializeFailed: OSStatus { get }
var errSecModuleManagerNotFound: OSStatus { get }
var errSecEventNotificationCallbackNotFound: OSStatus { get }
var errSecInputLengthError: OSStatus { get }
var errSecOutputLengthError: OSStatus { get }
var errSecPrivilegeNotSupported: OSStatus { get }
var errSecDeviceError: OSStatus { get }
var errSecAttachHandleBusy: OSStatus { get }
var errSecNotLoggedIn: OSStatus { get }
var errSecAlgorithmMismatch: OSStatus { get }
var errSecKeyUsageIncorrect: OSStatus { get }
var errSecKeyBlobTypeIncorrect: OSStatus { get }
var errSecKeyHeaderInconsistent: OSStatus { get }
var errSecUnsupportedKeyFormat: OSStatus { get }
var errSecUnsupportedKeySize: OSStatus { get }
var errSecInvalidKeyUsageMask: OSStatus { get }
var errSecUnsupportedKeyUsageMask: OSStatus { get }
var errSecInvalidKeyAttributeMask: OSStatus { get }
var errSecUnsupportedKeyAttributeMask: OSStatus { get }
var errSecInvalidKeyLabel: OSStatus { get }
var errSecUnsupportedKeyLabel: OSStatus { get }
var errSecInvalidKeyFormat: OSStatus { get }
var errSecUnsupportedVectorOfBuffers: OSStatus { get }
var errSecInvalidInputVector: OSStatus { get }
var errSecInvalidOutputVector: OSStatus { get }
var errSecInvalidContext: OSStatus { get }
var errSecInvalidAlgorithm: OSStatus { get }
var errSecInvalidAttributeKey: OSStatus { get }
var errSecMissingAttributeKey: OSStatus { get }
var errSecInvalidAttributeInitVector: OSStatus { get }
var errSecMissingAttributeInitVector: OSStatus { get }
var errSecInvalidAttributeSalt: OSStatus { get }
var errSecMissingAttributeSalt: OSStatus { get }
var errSecInvalidAttributePadding: OSStatus { get }
var errSecMissingAttributePadding: OSStatus { get }
var errSecInvalidAttributeRandom: OSStatus { get }
var errSecMissingAttributeRandom: OSStatus { get }
var errSecInvalidAttributeSeed: OSStatus { get }
var errSecMissingAttributeSeed: OSStatus { get }
var errSecInvalidAttributePassphrase: OSStatus { get }
var errSecMissingAttributePassphrase: OSStatus { get }
var errSecInvalidAttributeKeyLength: OSStatus { get }
var errSecMissingAttributeKeyLength: OSStatus { get }
var errSecInvalidAttributeBlockSize: OSStatus { get }
var errSecMissingAttributeBlockSize: OSStatus { get }
var errSecInvalidAttributeOutputSize: OSStatus { get }
var errSecMissingAttributeOutputSize: OSStatus { get }
var errSecInvalidAttributeRounds: OSStatus { get }
var errSecMissingAttributeRounds: OSStatus { get }
var errSecInvalidAlgorithmParms: OSStatus { get }
var errSecMissingAlgorithmParms: OSStatus { get }
var errSecInvalidAttributeLabel: OSStatus { get }
var errSecMissingAttributeLabel: OSStatus { get }
var errSecInvalidAttributeKeyType: OSStatus { get }
var errSecMissingAttributeKeyType: OSStatus { get }
var errSecInvalidAttributeMode: OSStatus { get }
var errSecMissingAttributeMode: OSStatus { get }
var errSecInvalidAttributeEffectiveBits: OSStatus { get }
var errSecMissingAttributeEffectiveBits: OSStatus { get }
var errSecInvalidAttributeStartDate: OSStatus { get }
var errSecMissingAttributeStartDate: OSStatus { get }
var errSecInvalidAttributeEndDate: OSStatus { get }
var errSecMissingAttributeEndDate: OSStatus { get }
var errSecInvalidAttributeVersion: OSStatus { get }
var errSecMissingAttributeVersion: OSStatus { get }
var errSecInvalidAttributePrime: OSStatus { get }
var errSecMissingAttributePrime: OSStatus { get }
var errSecInvalidAttributeBase: OSStatus { get }
var errSecMissingAttributeBase: OSStatus { get }
var errSecInvalidAttributeSubprime: OSStatus { get }
var errSecMissingAttributeSubprime: OSStatus { get }
var errSecInvalidAttributeIterationCount: OSStatus { get }
var errSecMissingAttributeIterationCount: OSStatus { get }
var errSecInvalidAttributeDLDBHandle: OSStatus { get }
var errSecMissingAttributeDLDBHandle: OSStatus { get }
var errSecInvalidAttributeAccessCredentials: OSStatus { get }
var errSecMissingAttributeAccessCredentials: OSStatus { get }
var errSecInvalidAttributePublicKeyFormat: OSStatus { get }
var errSecMissingAttributePublicKeyFormat: OSStatus { get }
var errSecInvalidAttributePrivateKeyFormat: OSStatus { get }
var errSecMissingAttributePrivateKeyFormat: OSStatus { get }
var errSecInvalidAttributeSymmetricKeyFormat: OSStatus { get }
var errSecMissingAttributeSymmetricKeyFormat: OSStatus { get }
var errSecInvalidAttributeWrappedKeyFormat: OSStatus { get }
var errSecMissingAttributeWrappedKeyFormat: OSStatus { get }
var errSecStagedOperationInProgress: OSStatus { get }
var errSecStagedOperationNotStarted: OSStatus { get }
var errSecVerifyFailed: OSStatus { get }
var errSecQuerySizeUnknown: OSStatus { get }
var errSecBlockSizeMismatch: OSStatus { get }
var errSecPublicKeyInconsistent: OSStatus { get }
var errSecDeviceVerifyFailed: OSStatus { get }
var errSecInvalidLoginName: OSStatus { get }
var errSecAlreadyLoggedIn: OSStatus { get }
var errSecInvalidDigestAlgorithm: OSStatus { get }
var errSecInvalidCRLGroup: OSStatus { get }
var errSecCertificateCannotOperate: OSStatus { get }
var errSecCertificateExpired: OSStatus { get }
var errSecCertificateNotValidYet: OSStatus { get }
var errSecCertificateRevoked: OSStatus { get }
var errSecCertificateSuspended: OSStatus { get }
var errSecInsufficientCredentials: OSStatus { get }
var errSecInvalidAction: OSStatus { get }
var errSecInvalidAuthority: OSStatus { get }
var errSecVerifyActionFailed: OSStatus { get }
var errSecInvalidCertAuthority: OSStatus { get }
var errSecInvaldCRLAuthority: OSStatus { get }
var errSecInvalidCRLEncoding: OSStatus { get }
var errSecInvalidCRLType: OSStatus { get }
var errSecInvalidCRL: OSStatus { get }
var errSecInvalidFormType: OSStatus { get }
var errSecInvalidID: OSStatus { get }
var errSecInvalidIdentifier: OSStatus { get }
var errSecInvalidIndex: OSStatus { get }
var errSecInvalidPolicyIdentifiers: OSStatus { get }
var errSecInvalidTimeString: OSStatus { get }
var errSecInvalidReason: OSStatus { get }
var errSecInvalidRequestInputs: OSStatus { get }
var errSecInvalidResponseVector: OSStatus { get }
var errSecInvalidStopOnPolicy: OSStatus { get }
var errSecInvalidTuple: OSStatus { get }
var errSecMultipleValuesUnsupported: OSStatus { get }
var errSecNotTrusted: OSStatus { get }
var errSecNoDefaultAuthority: OSStatus { get }
var errSecRejectedForm: OSStatus { get }
var errSecRequestLost: OSStatus { get }
var errSecRequestRejected: OSStatus { get }
var errSecUnsupportedAddressType: OSStatus { get }
var errSecUnsupportedService: OSStatus { get }
var errSecInvalidTupleGroup: OSStatus { get }
var errSecInvalidBaseACLs: OSStatus { get }
var errSecInvalidTupleCredendtials: OSStatus { get }
var errSecInvalidEncoding: OSStatus { get }
var errSecInvalidValidityPeriod: OSStatus { get }
var errSecInvalidRequestor: OSStatus { get }
var errSecRequestDescriptor: OSStatus { get }
var errSecInvalidBundleInfo: OSStatus { get }
var errSecInvalidCRLIndex: OSStatus { get }
var errSecNoFieldValues: OSStatus { get }
var errSecUnsupportedFieldFormat: OSStatus { get }
var errSecUnsupportedIndexInfo: OSStatus { get }
var errSecUnsupportedLocality: OSStatus { get }
var errSecUnsupportedNumAttributes: OSStatus { get }
var errSecUnsupportedNumIndexes: OSStatus { get }
var errSecUnsupportedNumRecordTypes: OSStatus { get }
var errSecFieldSpecifiedMultiple: OSStatus { get }
var errSecIncompatibleFieldFormat: OSStatus { get }
var errSecInvalidParsingModule: OSStatus { get }
var errSecDatabaseLocked: OSStatus { get }
var errSecDatastoreIsOpen: OSStatus { get }
var errSecMissingValue: OSStatus { get }
var errSecUnsupportedQueryLimits: OSStatus { get }
var errSecUnsupportedNumSelectionPreds: OSStatus { get }
var errSecUnsupportedOperator: OSStatus { get }
var errSecInvalidDBLocation: OSStatus { get }
var errSecInvalidAccessRequest: OSStatus { get }
var errSecInvalidIndexInfo: OSStatus { get }
var errSecInvalidNewOwner: OSStatus { get }
var errSecInvalidModifyMode: OSStatus { get }
var errSecMissingRequiredExtension: OSStatus { get }
var errSecExtendedKeyUsageNotCritical: OSStatus { get }
var errSecTimestampMissing: OSStatus { get }
var errSecTimestampInvalid: OSStatus { get }
var errSecTimestampNotTrusted: OSStatus { get }
var errSecTimestampServiceNotAvailable: OSStatus { get }
var errSecTimestampBadAlg: OSStatus { get }
var errSecTimestampBadRequest: OSStatus { get }
var errSecTimestampBadDataFormat: OSStatus { get }
var errSecTimestampTimeNotAvailable: OSStatus { get }
var errSecTimestampUnacceptedPolicy: OSStatus { get }
var errSecTimestampUnacceptedExtension: OSStatus { get }
var errSecTimestampAddInfoNotAvailable: OSStatus { get }
var errSecTimestampSystemFailure: OSStatus { get }
var errSecSigningTimeMissing: OSStatus { get }
var errSecTimestampRejection: OSStatus { get }
var errSecTimestampWaiting: OSStatus { get }
var errSecTimestampRevocationWarning: OSStatus { get }
var errSecTimestampRevocationNotification: OSStatus { get }
var kSecSubjectItemAttr: Int { get }
var kSecIssuerItemAttr: Int { get }
var kSecSerialNumberItemAttr: Int { get }
var kSecPublicKeyHashItemAttr: Int { get }
var kSecSubjectKeyIdentifierItemAttr: Int { get }
var kSecCertTypeItemAttr: Int { get }
var kSecCertEncodingItemAttr: Int { get }

/*!
	@function SecCertificateGetTypeID
	@abstract Returns the type identifier of SecCertificate instances.
	@result The CFTypeID of SecCertificate instances.
*/
@available(OSX 10.3, *)
func SecCertificateGetTypeID() -> CFTypeID

/*!
	@function SecCertificateCreateWithData
	@abstract Create a certificate reference given its DER representation as a CFData.
    @param allocator CFAllocator to allocate the certificate data. Pass NULL to use the default allocator.
    @param certificate DER encoded X.509 certificate.
	@result On return, a reference to the certificate. Returns NULL if the passed-in data is not a valid DER-encoded X.509 certificate.
*/
@available(OSX 10.6, *)
func SecCertificateCreateWithData(allocator: CFAllocator?, _ data: CFData) -> SecCertificate?

/*!
	@function SecCertificateAddToKeychain
	@abstract Adds a certificate to the specified keychain.
    @param certificate A reference to a certificate.
    @param keychain A reference to the keychain in which to add the certificate. Pass NULL to add the certificate to the default keychain.
    @result A result code. See "Security Error Codes" (SecBase.h).
	@discussion This function is successful only if the certificate was created using the SecCertificateCreateFromData or
	SecCertificateCreateWithData functions, and the certificate has not yet been added to the specified keychain.
*/
@available(OSX 10.3, *)
func SecCertificateAddToKeychain(certificate: SecCertificate, _ keychain: SecKeychain?) -> OSStatus

/*!
	@function SecCertificateCopyData
	@abstract Returns the DER representation of an X.509 certificate.
    @param certificate A reference to a certificate.
	@result On return, a data reference containing the DER encoded representation of the X.509 certificate.
 */
@available(OSX 10.6, *)
func SecCertificateCopyData(certificate: SecCertificate) -> CFData

/*!
    @function SecCertificateCopyPublicKey
    @abstract Retrieves the public key for a given certificate.
    @param certificate A reference to the certificate from which to retrieve the public key.
    @param key On return, a reference to the public key for the specified certificate. Your code must release this reference by calling the CFRelease function.
    @result A result code. See "Security Error Codes" (SecBase.h).
*/
@available(OSX 10.3, *)
func SecCertificateCopyPublicKey(certificate: SecCertificate, _ key: UnsafeMutablePointer<SecKey?>) -> OSStatus

/*!
    @function SecCertificateCopyCommonName
    @abstract Retrieves the common name of the subject of a given certificate.
    @param certificate A reference to the certificate from which to retrieve the common name.
    @param commonName On return, a reference to the common name. Your code must release this reference by calling the CFRelease function.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion All the data in this string comes from the certificate itself, and thus it's in whatever language the certificate itself is in.
	Note that the certificate's common name field may not be present, or may be inadequate to describe the certificate; for display purposes,
	you should consider using SecCertificateCopySubjectSummary instead of this function.
*/
@available(OSX 10.5, *)
func SecCertificateCopyCommonName(certificate: SecCertificate, _ commonName: UnsafeMutablePointer<CFString?>) -> OSStatus

/*!
	@function SecCertificateCopySubjectSummary
	@abstract Returns a simple string which hopefully represents a human understandable summary.
    @param certificate  A reference to the certificate from which to derive the subject summary string.
	@result On return, a reference to the subject summary string. Your code must release this reference by calling the CFRelease function.
    @discussion All the data in this string comes from the certificate itself, and thus it's in whatever language the certificate itself is in.
*/
@available(OSX 10.6, *)
func SecCertificateCopySubjectSummary(certificate: SecCertificate) -> CFString

/*!
    @function SecCertificateCopyEmailAddresses
    @abstract Returns an array of zero or more email addresses for the subject of a given certificate.
    @param certificate A reference to the certificate from which to retrieve the email addresses.
    @param emailAddresses On return, an array of zero or more CFStringRef elements corresponding to each email address found.
	Your code must release this array reference by calling the CFRelease function.
    @result A result code. See "Security Error Codes" (SecBase.h).
*/
@available(OSX 10.5, *)
func SecCertificateCopyEmailAddresses(certificate: SecCertificate, _ emailAddresses: UnsafeMutablePointer<CFArray?>) -> OSStatus

/*!
    @function SecCertificateCopyPreferred
    @abstract Returns the preferred certificate for the specified name and key usage. If a preferred certificate does not exist for the specified name and key usage, NULL is returned.
    @param name A string containing an email address (RFC822) or other name for which a preferred certificate is requested.
    @param keyUsage A CFArrayRef value, containing items defined in SecItem.h  Pass NULL to ignore this parameter. (kSecAttrCanEncrypt, kSecAttrCanDecrypt, kSecAttrCanDerive, kSecAttrCanSign, kSecAttrCanVerify, kSecAttrCanWrap, kSecAttrCanUnwrap)
    @result On return, a reference to the preferred certificate, or NULL if none was found. You are responsible for releasing this reference by calling the CFRelease function.
    @discussion This function will typically be used to obtain the preferred encryption certificate for an email recipient. If a preferred certificate has not been set
	for the supplied name, the returned reference will be NULL. Your code should then perform a search for possible certificates, using the SecItemCopyMatching API.
 */
@available(OSX 10.7, *)
func SecCertificateCopyPreferred(name: CFString, _ keyUsage: CFArray?) -> SecCertificate?

/*!
    @function SecCertificateSetPreference
    @abstract Sets the preferred certificate for a specified name, key usage, and date.
    @param certificate A reference to the certificate which will be preferred.
    @param name A string containing an email address (RFC822) or other name for which a preferred certificate will be associated.
    @param keyUsage A CSSM_KEYUSE key usage value, as defined in cssmtype.h. Pass 0 to avoid specifying a particular key usage.
    @param date (optional) A date reference. If supplied, the preferred certificate will be changed only if this date is later than the currently saved setting. Pass NULL if this preference should not be restricted by date.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion This function will typically be used to set the preferred encryption certificate for an email recipient, either manually (when encrypting email to a recipient) or automatically upon receipt of encrypted email.
	This API is deprecated in 10.7. Plese use the SecCertificateSetPreferred API instead.
*/
@available(OSX 10.5, *)
func SecCertificateSetPreference(certificate: SecCertificate, _ name: CFString, _ keyUsage: uint32, _ date: CFDate?) -> OSStatus

/*!
    @function SecCertificateSetPreferred
    @abstract Sets the preferred certificate for a specified name and optional key usage.
    @param certificate A reference to the preferred certificate. If NULL is passed, any existing preference for the specified name is cleared instead.
    @param name A string containing an email address (RFC822) or other name for which a preferred certificate will be associated.
    @param keyUsage A CFArrayRef value, containing items defined in SecItem.h  Pass NULL to ignore this parameter. (kSecAttrCanEncrypt, kSecAttrCanDecrypt, kSecAttrCanDerive, kSecAttrCanSign, kSecAttrCanVerify, kSecAttrCanWrap, kSecAttrCanUnwrap)
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion This function will typically be used to set the preferred encryption certificate for an email recipient, either manually (when encrypting email to a recipient)
	or automatically upon receipt of encrypted email.
*/
@available(OSX 10.7, *)
func SecCertificateSetPreferred(certificate: SecCertificate?, _ name: CFString, _ keyUsage: CFArray?) -> OSStatus

/*!
 @enum kSecPropertyKey
 @abstract Constants used to access dictionary entries returned by SecCertificateCopyValues
 @constant kSecPropertyKeyType The type of the entry
 @constant kSecPropertyKeyLabel The label of the entry
 @constant kSecPropertyKeyLocalizedLabel The localized label of the entry
 @constant kSecPropertyKeyValue The value of the entry
 */
@available(OSX 10.7, *)
let kSecPropertyKeyType: CFString
@available(OSX 10.7, *)
let kSecPropertyKeyLabel: CFString
@available(OSX 10.7, *)
let kSecPropertyKeyLocalizedLabel: CFString
@available(OSX 10.7, *)
let kSecPropertyKeyValue: CFString

/*!
	@enum kSecPropertyType
	@abstract Public Constants for property list values returned by SecCertificateCopyValues
	@discussion Note that kSecPropertyTypeTitle and kSecPropertyTypeError are defined in SecTrust.h
*/
@available(OSX 10.7, *)
let kSecPropertyTypeWarning: CFString
@available(OSX 10.7, *)
let kSecPropertyTypeSuccess: CFString
@available(OSX 10.7, *)
let kSecPropertyTypeSection: CFString
@available(OSX 10.7, *)
let kSecPropertyTypeData: CFString
@available(OSX 10.7, *)
let kSecPropertyTypeString: CFString
@available(OSX 10.7, *)
let kSecPropertyTypeURL: CFString
@available(OSX 10.7, *)
let kSecPropertyTypeDate: CFString

/*!
    @function SecCertificateCopyValues
	@abstract		Creates a dictionary that represents a certificate's contents.
	@param certificate The certificate from which to get values
	@param keys		An array of string OID values, or NULL. If present, this is 
					the subset of values from the certificate to return. If NULL,
					all values will be returned. Only OIDs that are top level keys
					in the returned dictionary can be specified. Unknown OIDs are
					ignored.
	@param error	An optional pointer to a CFErrorRef. This value is 
					set if an error occurred.  If not NULL the caller is 
					responsible for releasing the CFErrorRef.
	@discussion		The keys array will contain all of the keys used in the
					returned dictionary. The top level keys in the returned
					dictionary are OIDs, many of which are found in SecCertificateOIDs.h.
					Each entry that is returned is itself a dictionary with four
					entries, whose keys are kSecPropertyKeyType, kSecPropertyKeyLabel, 
					kSecPropertyKeyLocalizedLabel, kSecPropertyKeyValue. The label
					entries may contain a descriptive (localized) string, or an
					OID string. The kSecPropertyKeyType describes the type in the
					value entry. The value entry may be any CFType, although it 
					is usually a CFStringRef, CFArrayRef or a CFDictionaryRef. 
*/
@available(OSX 10.7, *)
func SecCertificateCopyValues(certificate: SecCertificate, _ keys: CFArray?, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFDictionary?

/*!
    @enum Transform  Key Value Constants
    @discussion 		Predefined values for the kSecTransformAttrCertificateUsage attribute.


	kSecCertificateUsageSigning
	kSecCertificateUsageSigningAndEncrypting
	kSecCertificateUsageDeriveAndSign
	
*/
@available(OSX 10.7, *)
let kSecCertificateUsageSigning: CFString
@available(OSX 10.7, *)
let kSecCertificateUsageSigningAndEncrypting: CFString
@available(OSX 10.7, *)
let kSecCertificateUsageDeriveAndSign: CFString

/*!
    @function 			SecCertificateCopyLongDescription
	@abstract			Return the long description of a certificate
	@param alloc 		The CFAllocator which should be used to allocate
						memory for the dictionary and its storage for values. This
						parameter may be NULL in which case the current default
						CFAllocator is used. If this reference is not a valid
						CFAllocator, the behavior is undefined.
	@param certificate	The certificate from which to retrieve the long description
	@param	error		An optional pointer to a CFErrorRef. This value is 
						set if an error occurred.  If not NULL the caller is 
						responsible for releasing the CFErrorRef.
	@result				A CFStringRef of the long description or NULL. If NULL and the error
						parameter is supplied the error will be returned in the error parameter
	@discussion			Note that the format of this string may change in the future
*/
@available(OSX 10.7, *)
func SecCertificateCopyLongDescription(alloc: CFAllocator?, _ certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFString?

/*!
    @function 			SecCertificateCopyShortDescription
	@abstract			Return the short description of a certificate
	@param alloc 		The CFAllocator which should be used to allocate
						memory for the dictionary and its storage for values. This
						parameter may be NULL in which case the current default
						CFAllocator is used. If this reference is not a valid
						CFAllocator, the behavior is undefined.
	@param certificate	The certificate from which to retrieve the short description
	@param	error		An optional pointer to a CFErrorRef. This value is 
						set if an error occurred.  If not NULL the caller is 
						responsible for releasing the CFErrorRef.
	@result				A CFStringRef of the short description or NULL. If NULL and the error
						parameter is supplied the error will be returned in the error parameter
 @discussion			Note that the format of this string may change in the future
*/
@available(OSX 10.7, *)
func SecCertificateCopyShortDescription(alloc: CFAllocator?, _ certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFString?

/*!
    @function			SecCertificateCopySerialNumber
	@abstract			Return the certificate's serial number.
	@param certificate	The certificate from which to get values
	@param	error		An optional pointer to a CFErrorRef. This value is 
						set if an error occurred.  If not NULL the caller is 
						responsible for releasing the CFErrorRef.
	@discussion			Return the content of a DER-encoded integer (without the
						tag and length fields) for this certificate's serial 
						number.   The caller must CFRelease the value returned.
*/
@available(OSX 10.7, *)
func SecCertificateCopySerialNumber(certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFData?

/*!
    @function			SecCertificateCopyNormalizedIssuerContent
	@abstract			Return the certificate's normalized issuer
	@param certificate	The certificate from which to get values
	@param error		An optional pointer to a CFErrorRef. This value is 
						set if an error occurred.  If not NULL the caller is 
						responsible for releasing the CFErrorRef.
	@discussion			The issuer is a sequence in the format used by
						SecItemCopyMatching.  The content returned is a DER-encoded
						X.509 distinguished name. For a display version of the issuer,
						call SecCertificateCopyValues. The caller must CFRelease
						the value returned.
*/
@available(OSX 10.7, *)
func SecCertificateCopyNormalizedIssuerContent(certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFData?

/*!
    @function			SecCertificateCopyNormalizedSubjectContent
	@abstract			Return the certificate's normalized subject
	@param certificate	The certificate from which to get values
	@param error		An optional pointer to a CFErrorRef. This value is 
						set if an error occurred.  If not NULL the caller is 
						responsible for releasing the CFErrorRef.
	@discussion			The subject is a sequence in the format used by
						SecItemCopyMatching. The content returned is a DER-encoded
						X.509 distinguished name. For a display version of the subject,
						call SecCertificateCopyValues. The caller must CFRelease
						the value returned.
*/
@available(OSX 10.7, *)
func SecCertificateCopyNormalizedSubjectContent(certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFData?
@available(OSX 10.7, *)
let kSecOIDADC_CERT_POLICY: CFString
@available(OSX 10.7, *)
let kSecOIDAPPLE_CERT_POLICY: CFString
@available(OSX 10.7, *)
let kSecOIDAPPLE_EKU_CODE_SIGNING: CFString
@available(OSX 10.7, *)
let kSecOIDAPPLE_EKU_CODE_SIGNING_DEV: CFString
@available(OSX 10.7, *)
let kSecOIDAPPLE_EKU_ICHAT_ENCRYPTION: CFString
@available(OSX 10.7, *)
let kSecOIDAPPLE_EKU_ICHAT_SIGNING: CFString
@available(OSX 10.7, *)
let kSecOIDAPPLE_EKU_RESOURCE_SIGNING: CFString
@available(OSX 10.7, *)
let kSecOIDAPPLE_EKU_SYSTEM_IDENTITY: CFString
@available(OSX 10.7, *)
let kSecOIDAPPLE_EXTENSION: CFString
@available(OSX 10.7, *)
let kSecOIDAPPLE_EXTENSION_ADC_APPLE_SIGNING: CFString
@available(OSX 10.7, *)
let kSecOIDAPPLE_EXTENSION_ADC_DEV_SIGNING: CFString
@available(OSX 10.7, *)
let kSecOIDAPPLE_EXTENSION_APPLE_SIGNING: CFString
@available(OSX 10.7, *)
let kSecOIDAPPLE_EXTENSION_CODE_SIGNING: CFString
@available(OSX 10.7, *)
let kSecOIDAPPLE_EXTENSION_INTERMEDIATE_MARKER: CFString
@available(OSX 10.7, *)
let kSecOIDAPPLE_EXTENSION_WWDR_INTERMEDIATE: CFString
@available(OSX 10.7, *)
let kSecOIDAPPLE_EXTENSION_ITMS_INTERMEDIATE: CFString
@available(OSX 10.7, *)
let kSecOIDAPPLE_EXTENSION_AAI_INTERMEDIATE: CFString
@available(OSX 10.7, *)
let kSecOIDAPPLE_EXTENSION_APPLEID_INTERMEDIATE: CFString
@available(OSX 10.7, *)
let kSecOIDAuthorityInfoAccess: CFString
@available(OSX 10.7, *)
let kSecOIDAuthorityKeyIdentifier: CFString
@available(OSX 10.7, *)
let kSecOIDBasicConstraints: CFString
@available(OSX 10.7, *)
let kSecOIDBiometricInfo: CFString
@available(OSX 10.7, *)
let kSecOIDCSSMKeyStruct: CFString
@available(OSX 10.7, *)
let kSecOIDCertIssuer: CFString
@available(OSX 10.7, *)
let kSecOIDCertificatePolicies: CFString
@available(OSX 10.7, *)
let kSecOIDClientAuth: CFString
@available(OSX 10.7, *)
let kSecOIDCollectiveStateProvinceName: CFString
@available(OSX 10.7, *)
let kSecOIDCollectiveStreetAddress: CFString
@available(OSX 10.7, *)
let kSecOIDCommonName: CFString
@available(OSX 10.7, *)
let kSecOIDCountryName: CFString
@available(OSX 10.7, *)
let kSecOIDCrlDistributionPoints: CFString
@available(OSX 10.7, *)
let kSecOIDCrlNumber: CFString
@available(OSX 10.7, *)
let kSecOIDCrlReason: CFString
@available(OSX 10.7, *)
let kSecOIDDOTMAC_CERT_EMAIL_ENCRYPT: CFString
@available(OSX 10.7, *)
let kSecOIDDOTMAC_CERT_EMAIL_SIGN: CFString
@available(OSX 10.7, *)
let kSecOIDDOTMAC_CERT_EXTENSION: CFString
@available(OSX 10.7, *)
let kSecOIDDOTMAC_CERT_IDENTITY: CFString
@available(OSX 10.7, *)
let kSecOIDDOTMAC_CERT_POLICY: CFString
@available(OSX 10.7, *)
let kSecOIDDeltaCrlIndicator: CFString
@available(OSX 10.7, *)
let kSecOIDDescription: CFString
@available(OSX 10.7, *)
let kSecOIDEKU_IPSec: CFString
@available(OSX 10.7, *)
let kSecOIDEmailAddress: CFString
@available(OSX 10.7, *)
let kSecOIDEmailProtection: CFString
@available(OSX 10.7, *)
let kSecOIDExtendedKeyUsage: CFString
@available(OSX 10.7, *)
let kSecOIDExtendedKeyUsageAny: CFString
@available(OSX 10.7, *)
let kSecOIDExtendedUseCodeSigning: CFString
@available(OSX 10.7, *)
let kSecOIDGivenName: CFString
@available(OSX 10.7, *)
let kSecOIDHoldInstructionCode: CFString
@available(OSX 10.7, *)
let kSecOIDInvalidityDate: CFString
@available(OSX 10.7, *)
let kSecOIDIssuerAltName: CFString
@available(OSX 10.7, *)
let kSecOIDIssuingDistributionPoint: CFString
@available(OSX 10.7, *)
let kSecOIDIssuingDistributionPoints: CFString
@available(OSX 10.7, *)
let kSecOIDKERBv5_PKINIT_KP_CLIENT_AUTH: CFString
@available(OSX 10.7, *)
let kSecOIDKERBv5_PKINIT_KP_KDC: CFString
@available(OSX 10.7, *)
let kSecOIDKeyUsage: CFString
@available(OSX 10.7, *)
let kSecOIDLocalityName: CFString
@available(OSX 10.7, *)
let kSecOIDMS_NTPrincipalName: CFString
@available(OSX 10.7, *)
let kSecOIDMicrosoftSGC: CFString
@available(OSX 10.7, *)
let kSecOIDNameConstraints: CFString
@available(OSX 10.7, *)
let kSecOIDNetscapeCertSequence: CFString
@available(OSX 10.7, *)
let kSecOIDNetscapeCertType: CFString
@available(OSX 10.7, *)
let kSecOIDNetscapeSGC: CFString
@available(OSX 10.7, *)
let kSecOIDOCSPSigning: CFString
@available(OSX 10.7, *)
let kSecOIDOrganizationName: CFString
@available(OSX 10.7, *)
let kSecOIDOrganizationalUnitName: CFString
@available(OSX 10.7, *)
let kSecOIDPolicyConstraints: CFString
@available(OSX 10.7, *)
let kSecOIDPolicyMappings: CFString
@available(OSX 10.7, *)
let kSecOIDPrivateKeyUsagePeriod: CFString
@available(OSX 10.7, *)
let kSecOIDQC_Statements: CFString
@available(OSX 10.7, *)
let kSecOIDSerialNumber: CFString
@available(OSX 10.7, *)
let kSecOIDServerAuth: CFString
@available(OSX 10.7, *)
let kSecOIDStateProvinceName: CFString
@available(OSX 10.7, *)
let kSecOIDStreetAddress: CFString
@available(OSX 10.7, *)
let kSecOIDSubjectAltName: CFString
@available(OSX 10.7, *)
let kSecOIDSubjectDirectoryAttributes: CFString
@available(OSX 10.7, *)
let kSecOIDSubjectEmailAddress: CFString
@available(OSX 10.7, *)
let kSecOIDSubjectInfoAccess: CFString
@available(OSX 10.7, *)
let kSecOIDSubjectKeyIdentifier: CFString
@available(OSX 10.7, *)
let kSecOIDSubjectPicture: CFString
@available(OSX 10.7, *)
let kSecOIDSubjectSignatureBitmap: CFString
@available(OSX 10.7, *)
let kSecOIDSurname: CFString
@available(OSX 10.7, *)
let kSecOIDTimeStamping: CFString
@available(OSX 10.7, *)
let kSecOIDTitle: CFString
@available(OSX 10.7, *)
let kSecOIDUseExemptions: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1CertificateIssuerUniqueId: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1CertificateSubjectUniqueId: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1IssuerName: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1IssuerNameCStruct: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1IssuerNameLDAP: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1IssuerNameStd: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1SerialNumber: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1Signature: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1SignatureAlgorithm: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1SignatureAlgorithmParameters: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1SignatureAlgorithmTBS: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1SignatureCStruct: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1SignatureStruct: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1SubjectName: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1SubjectNameCStruct: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1SubjectNameLDAP: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1SubjectNameStd: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1SubjectPublicKey: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1SubjectPublicKeyAlgorithm: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1SubjectPublicKeyAlgorithmParameters: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1SubjectPublicKeyCStruct: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1ValidityNotAfter: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1ValidityNotBefore: CFString
@available(OSX 10.7, *)
let kSecOIDX509V1Version: CFString
@available(OSX 10.7, *)
let kSecOIDX509V3Certificate: CFString
@available(OSX 10.7, *)
let kSecOIDX509V3CertificateCStruct: CFString
@available(OSX 10.7, *)
let kSecOIDX509V3CertificateExtensionCStruct: CFString
@available(OSX 10.7, *)
let kSecOIDX509V3CertificateExtensionCritical: CFString
@available(OSX 10.7, *)
let kSecOIDX509V3CertificateExtensionId: CFString
@available(OSX 10.7, *)
let kSecOIDX509V3CertificateExtensionStruct: CFString
@available(OSX 10.7, *)
let kSecOIDX509V3CertificateExtensionType: CFString
@available(OSX 10.7, *)
let kSecOIDX509V3CertificateExtensionValue: CFString
@available(OSX 10.7, *)
let kSecOIDX509V3CertificateExtensionsCStruct: CFString
@available(OSX 10.7, *)
let kSecOIDX509V3CertificateExtensionsStruct: CFString
@available(OSX 10.7, *)
let kSecOIDX509V3CertificateNumberOfExtensions: CFString
@available(OSX 10.7, *)
let kSecOIDX509V3SignedCertificate: CFString
@available(OSX 10.7, *)
let kSecOIDX509V3SignedCertificateCStruct: CFString
@available(OSX 10.8, *)
let kSecOIDSRVName: CFString

/*!
	@function SecCodeGetTypeID
	Returns the type identifier of all SecCode instances.
*/
func SecCodeGetTypeID() -> CFTypeID

/*!
	@function SecCodeCopySelf
	Obtains a SecCode object for the code making the call.
	The calling code is determined in a way that is subject to modification over
	time, but obeys the following rules. If it is a UNIX process, its process id (pid)
	is always used. If it is an active code host that has a dedicated guest, such a guest
	is always preferred. If it is a host that has called SecHostSelectGuest, such selection
	is considered until revoked.

	@param flags Optional flags. Pass kSecCSDefaultFlags for standard behavior.
	@param self Upon successful return, contains a SecCodeRef representing the caller.
	
	@result Upon success, errSecSuccess. Upon error, an OSStatus value documented in
	CSCommon.h or certain other Security framework headers.
 */
func SecCodeCopySelf(flags: SecCSFlags, _ self: UnsafeMutablePointer<SecCode?>) -> OSStatus
var kSecCSUseAllArchitectures: UInt32 { get }
func SecCodeCopyStaticCode(code: SecCode, _ flags: SecCSFlags, _ staticCode: UnsafeMutablePointer<SecStaticCode?>) -> OSStatus

/*!
	@function SecCodeCopyHost
	Given a SecCode object, identify the (different) SecCode object that acts
	as its host. A SecCode's host acts as a supervisor and controller,
	and is the ultimate authority on the its dynamic validity and status.
	The host relationship is securely established (absent reported errors).
	
	@param code A valid SecCode object reference representing code running
	on the system.
	@param flags Optional flags. Pass kSecCSDefaultFlags for standard behavior.
	@param host On successful return, a SecCode object reference identifying
	the code's host.
	@result Upon success, errSecSuccess. Upon error, an OSStatus value documented in
	CSCommon.h or certain other Security framework headers.
*/
func SecCodeCopyHost(guest: SecCode, _ flags: SecCSFlags, _ host: UnsafeMutablePointer<SecCode?>) -> OSStatus

/*!
	@function SecCodeCopyGuestWithAttributes
	This is the omnibus API function for obtaining dynamic code references.
	In general, it asks a particular code acting as a code host to locate
	and return a guest with given attributes. Different hosts support
	different combinations of attributes and values for guest selection. 

	Asking the NULL host invokes system default	procedures for obtaining
	any running code in the system with the	attributes given. The returned
	code may be anywhere in the system.
 
	The methods a host uses to identify, separate, and control its guests
	are specific to each type of host. This call provides a generic abstraction layer
	that allows uniform interrogation of all hosts. A SecCode that does not
	act as a host will always return errSecCSNoSuchCode. A SecCode that does
	support hosting may return itself to signify that the attribute refers to
	itself rather than one of its hosts.
	
	@param host A valid SecCode object reference representing code running
	on the system that acts as a Code Signing host. As a special case, passing
	NULL indicates that the Code Signing root of trust should be used as a starting
	point. Currently, that is the system kernel.
	@param attributes A CFDictionary containing zero or more attribute selector
	values. Each selector has a CFString key and associated CFTypeRef value.
	The key name identifies the attribute being specified; the associated value,
	whose type depends on the the key name, selects a particular value or other
	constraint on that attribute. Each host only supports particular combinations
	of keys and values,	and errors will be returned if any unsupported set is requested.
	As a special case, NULL is taken to mean an empty attribute set.
	Note that some hosts that support hosting chains (guests being hosts)
	may return sub-guests in this call. In other words, do not assume that
	a SecCodeRef returned by this call is a direct guest of the queried host
	(though it will be a proximate guest, i.e. a guest's guest some way down).
	Asking the NULL host for NULL attributes returns a code reference for the system root
	of trust (at present, the running Darwin kernel).
	@param flags Optional flags. Pass kSecCSDefaultFlags for standard behavior.
	@param guest On successful return, a SecCode object reference identifying
	the particular guest of the host that owns the attribute value(s) specified.
	This argument will not be changed if the call fails (does not return errSecSuccess).
	@result Upon success, errSecSuccess. Upon error, an OSStatus value documented in
	CSCommon.h or certain other Security framework headers. In particular:
	@error errSecCSUnsupportedGuestAttributes The host does not support the attribute
	type given by attributeType.
	@error errSecCSInvalidAttributeValues The type of value given for a guest
	attribute is not supported by the host.
	@error errSecCSNoSuchCode The host has no guest with the attribute value given
	by attributeValue, even though the value is of a supported type. This may also
	be returned if the host code does not currently act as a Code Signing host.
	@error errSecCSNotAHost The specified host cannot, in fact, act as a code
	host. (It is missing the kSecCodeSignatureHost option flag in its code
	signature.)
	@error errSecCSMultipleGuests The attributes specified do not uniquely identify
	a guest (the specification is ambiguous).
*/
let kSecGuestAttributeCanonical: CFString
let kSecGuestAttributeHash: CFString
let kSecGuestAttributeMachPort: CFString
let kSecGuestAttributePid: CFString
let kSecGuestAttributeDynamicCode: CFString
let kSecGuestAttributeDynamicCodeInfoPlist: CFString
let kSecGuestAttributeArchitecture: CFString
let kSecGuestAttributeSubarchitecture: CFString
func SecCodeCopyGuestWithAttributes(host: SecCode?, _ attributes: CFDictionary?, _ flags: SecCSFlags, _ guest: UnsafeMutablePointer<SecCode?>) -> OSStatus

/*!
	@function SecCodeCheckValidity
	Performs dynamic validation of the given SecCode object. The call obtains and
	verifies the signature on the code object. It checks the validity of only those
	sealed components required to establish identity. It checks the SecCode's
	dynamic validity status as reported by its host. It ensures that the SecCode's
	host is in turn valid. Finally, it validates the code against a SecRequirement
	if one is given. The call succeeds if all these conditions are satisfactory.
	It fails otherwise.
	
	This call is secure against attempts to modify the file system source of the
	SecCode.

	@param code The code object to be validated.
	@param flags Optional flags. Pass kSecCSDefaultFlags for standard behavior.
	@param requirement An optional code requirement specifying additional conditions
	the code object must satisfy to be considered valid. If NULL, no additional
	requirements are imposed.
	@param errors An optional pointer to a CFErrorRef variable. If the call fails
	(and something other than errSecSuccess is returned), and this argument is non-NULL,
	a CFErrorRef is stored there further describing the nature and circumstances
	of the failure. The caller must CFRelease() this error object when done with it.
	@result If validation passes, errSecSuccess. If validation fails, an OSStatus value
	documented in CSCommon.h or certain other Security framework headers.
*/
func SecCodeCheckValidity(code: SecCode, _ flags: SecCSFlags, _ requirement: SecRequirement?) -> OSStatus
func SecCodeCheckValidityWithErrors(code: SecCode, _ flags: SecCSFlags, _ requirement: SecRequirement?, _ errors: UnsafeMutablePointer<Unmanaged<CFError>?>) -> OSStatus

/*!
	@function SecCodeCopyPath
	For a given Code or StaticCode object, returns a URL to a location on disk where the
	code object can be found. For single files, the URL points to that file.
	For bundles, it points to the directory containing the entire bundle.
	
	This returns the same URL as the kSecCodeInfoMainExecutable key returned
	by SecCodeCopySigningInformation.

	@param code The Code or StaticCode object to be located. For a Code
		argument, its StaticCode is processed as per SecCodeCopyStaticCode.
	@param flags Optional flags. Pass kSecCSDefaultFlags for standard behavior.
	@param path On successful return, contains a CFURL identifying the location
	on disk of the staticCode object.
	@result On success, errSecSuccess. On error, an OSStatus value
	documented in CSCommon.h or certain other Security framework headers.
*/
func SecCodeCopyPath(staticCode: SecStaticCode, _ flags: SecCSFlags, _ path: UnsafeMutablePointer<CFURL?>) -> OSStatus

/*!
	@function SecCodeCopyDesignatedRequirement
	For a given Code or StaticCode object, determines its Designated Code Requirement.
	The Designated Requirement is the SecRequirement that the code believes
	should be used to properly identify it in the future.
	
	If the SecCode contains an explicit Designated Requirement, a copy of that
	is returned. If it does not, a SecRequirement is implicitly constructed from
	its signing authority and its embedded unique identifier. No Designated
	Requirement can be obtained from code that is unsigned. Code that is modified
	after signature, improperly signed, or has become invalid, may or may not yield
	a Designated Requirement. This call does not validate the SecStaticCode argument.
	
	@param code The Code or StaticCode object to be interrogated. For a Code
		argument, its StaticCode is processed as per SecCodeCopyStaticCode.
	@param flags Optional flags. Pass kSecCSDefaultFlags for standard behavior.
	@param requirement On successful return, contains a copy of a SecRequirement
	object representing the code's Designated Requirement. On error, unchanged.
	@result On success, errSecSuccess. On error, an OSStatus value
		documented in CSCommon.h or certain other Security framework headers.
*/
func SecCodeCopyDesignatedRequirement(code: SecStaticCode, _ flags: SecCSFlags, _ requirement: UnsafeMutablePointer<SecRequirement?>) -> OSStatus
var kSecCSInternalInformation: UInt32 { get }
var kSecCSSigningInformation: UInt32 { get }
var kSecCSRequirementInformation: UInt32 { get }
var kSecCSDynamicInformation: UInt32 { get }
var kSecCSContentInformation: UInt32 { get }
let kSecCodeInfoCertificates: CFString
let kSecCodeInfoChangedFiles: CFString
let kSecCodeInfoCMS: CFString
let kSecCodeInfoDesignatedRequirement: CFString
let kSecCodeInfoEntitlements: CFString
let kSecCodeInfoEntitlementsDict: CFString
let kSecCodeInfoFlags: CFString
let kSecCodeInfoFormat: CFString
let kSecCodeInfoDigestAlgorithm: CFString
let kSecCodeInfoPlatformIdentifier: CFString
let kSecCodeInfoIdentifier: CFString
let kSecCodeInfoImplicitDesignatedRequirement: CFString
let kSecCodeInfoMainExecutable: CFString
let kSecCodeInfoPList: CFString
let kSecCodeInfoRequirements: CFString
let kSecCodeInfoRequirementData: CFString
let kSecCodeInfoSource: CFString
let kSecCodeInfoStatus: CFString
let kSecCodeInfoTeamIdentifier: CFString
let kSecCodeInfoTime: CFString
let kSecCodeInfoTimestamp: CFString
let kSecCodeInfoTrust: CFString
let kSecCodeInfoUnique: CFString
func SecCodeCopySigningInformation(code: SecStaticCode, _ flags: SecCSFlags, _ information: UnsafeMutablePointer<CFDictionary?>) -> OSStatus
func SecCodeMapMemory(code: SecStaticCode, _ flags: SecCSFlags) -> OSStatus
var kSecCSDedicatedHost: UInt32 { get }
var kSecCSGenerateGuestHash: UInt32 { get }
func SecHostCreateGuest(host: SecGuestRef, _ status: UInt32, _ path: CFURL, _ attributes: CFDictionary?, _ flags: SecCSFlags, _ newGuest: UnsafeMutablePointer<SecGuestRef>) -> OSStatus

/*!
	@function SecHostRemoveGuest
	Announce that the guest with the given guestRef has permanently disappeared.
	It removes all memory of the guest from the hosting system. You cannot remove
	a dedicated guest.

	@param host The SecGuestRef that was used to create guest. You cannot specify
	a proximate host (host of a host) here. However, the substitution for dedicated
	guests described for SecHostCreateGuest also takes place here.
	@param guest The handle for a Guest previously created with SecHostCreateGuest
	that has not previously been destroyed. This guest is to be destroyed now.
	@param flags Optional flags. Pass kSecCSDefaultFlags for standard behavior.
	@result Upon success, errSecSuccess. Upon error, an OSStatus value documented in
	CSCommon.h or certain other Security framework headers.
*/
func SecHostRemoveGuest(host: SecGuestRef, _ guest: SecGuestRef, _ flags: SecCSFlags) -> OSStatus

/*!
	@function SecHostSelectGuest
	Tell the Code Signing host subsystem that the calling thread will now act
	on behalf of the given Guest. This must be a valid Guest previously created
	with SecHostCreateGuest.
	
	@param guestRef The handle for a Guest previously created with SecHostCreateGuest
	on whose behalf this thread will act from now on. This setting will be remembered
	until it is changed (or the thread terminates).
	To indicate that the thread will act on behalf of the Host itself (rather than
	any Guest), pass kSecNoGuest.
	@param flags Optional flags. Pass kSecCSDefaultFlags for standard behavior.
	@result Upon success, errSecSuccess. Upon error, an OSStatus value documented in
	CSCommon.h or certain other Security framework headers.
*/
func SecHostSelectGuest(guestRef: SecGuestRef, _ flags: SecCSFlags) -> OSStatus

/*!
	@function SecHostSelectedGuest
	Retrieve the handle for the Guest currently selected for the calling thread.
	
	@param flags Optional flags. Pass kSecCSDefaultFlags for standard behavior.
	@param guestRef Will be assigned the SecGuestRef currently in effect for
	the calling thread. If no Guest is active on this thread (i.e. the thread
	is acting for the Host), the return value is kSecNoGuest.
	@result Upon success, errSecSuccess. Upon error, an OSStatus value documented in
	CSCommon.h or certain other Security framework headers.
*/
func SecHostSelectedGuest(flags: SecCSFlags, _ guestRef: UnsafeMutablePointer<SecGuestRef>) -> OSStatus

/*!
	@function SecHostSetGuestStatus
	Updates the status of a particular guest.
	
	@param guestRef The handle for a Guest previously created with SecHostCreateGuest
	on whose behalf this thread will act from now on. This setting will be remembered
	until it is changed (or the thread terminates).
	@param status The new Code Signing status word for the guest. The proxy enforces
	the restrictions on changes to guest status; in particular, the kSecCodeStatusValid bit can only
	be cleared, and the kSecCodeStatusHard and kSecCodeStatusKill flags can only be set. Pass the previous
	guest status to indicate that no change is desired.
	@param attributes An optional dictionary containing attributes to be used to distinguish
	this guest from all guests of the caller. If given, it completely replaces the attributes
	specified earlier. If NULL, previously established attributes are retained.
	@param flags Optional flags. Pass kSecCSDefaultFlags for standard behavior.
	@result Upon success, errSecSuccess. Upon error, an OSStatus value documented in
	CSCommon.h or certain other Security framework headers.
 */
func SecHostSetGuestStatus(guestRef: SecGuestRef, _ status: UInt32, _ attributes: CFDictionary?, _ flags: SecCSFlags) -> OSStatus

/*!
	@function SecHostSetHostingPort
	Tells the Code Signing Hosting subsystem that the calling code will directly respond
	to hosting inquiries over the given port.
	
	This API should be the first hosting API call made. With it, the calling code takes
	direct responsibility for answering questions about its guests using the hosting IPC
	services. The SecHostCreateGuest, SecHostDestroyGuest and SecHostSetGuestStatus calls
	are not valid after this. The SecHostSelectGuest and SecHostSelectedGuest calls will
	still work, and will use whatever SecGuestRefs the caller has assigned in its internal
	data structures.
	
	This call cannot be undone; once it is made, record-and-forward facilities are
	disabled for the lifetime of the calling code.
	
	@param hostingPort A Mach message port with send rights. This port will be recorded
	and handed to parties interested in querying the host about its children.
	@param flags Optional flags. Pass kSecCSDefaultFlags for standard behavior.
	@result Upon success, errSecSuccess. Upon error, an OSStatus value documented in
	CSCommon.h or certain other Security framework headers.
 */
func SecHostSetHostingPort(hostingPort: mach_port_t, _ flags: SecCSFlags) -> OSStatus

/*!
    @enum Custom Transform Attribute Metadata
    @discussion
            Within a transform, each of its attributes is a collection of
            "metadata attributes", of which name and current value are two. The
            value is directly visible from outside; the other metadata
            attributes direct the behavior of the transform and
            its function within its group. Each attribute may be tailored by setting its metadata.

    @const kSecTransformMetaAttributeValue
            The actual value of the attribute. The attribute value has a default
            value of NULL.

    @const kSecTransformMetaAttributeName
            The name of the attribute. Attribute name is read only and may
            not be used with the SecTransformSetAttributeBlock block.

    @const kSecTransformMetaAttributeRef
            A direct reference to an attribute's value. This reference allows
            for direct access to an attribute without having to look up the
            attribute by name.  If a transform commonly uses an attribute, using
            a reference speeds up the use of that attribute. Attribute
            references are not visible or valid from outside of the particular
            transform instance.

    @const kSecTransformMetaAttributeRequired
            Specifies if an attribute must have a non NULL value set or have an
            incoming connection before the transform starts to execute. This
            metadata has a default value of true for the input attribute, but
            false for all other attributes.

    @const kSecTransformMetaAttributeRequiresOutboundConnection
            Specifies if an attribute must have an outbound connection. This
            metadata has a default value of true for the output attribute but is
            false for all other attributes.

    @const kSecTransformMetaAttributeDeferred
            Determines if the AttributeSetNotification notification or the
            ProcessData blocks are deferred until SecExecuteTransform is called.
            This metadata value has a default value of true for the input
            attribute but is false for all other attributes.

    @const kSecTransformMetaAttributeStream
            Specifies if the attribute should expect a series of values ending
            with a NULL to specify the end of the data stream. This metadata has
            a default value of true for the input and output attributes, but is
            false for all other attributes.

    @const kSecTransformMetaAttributeCanCycle
            A Transform group is a directed graph which is typically acyclic.
            Some transforms need to work with cycles. For example, a transform
            that emits a header and trailer around the data of another transform
            must create a cycle. If this metadata set to true, no error is
            returned if a cycle is detected for this attribute.

    @const kSecTransformMetaAttributeExternalize
            Specifies if this attribute should be written out when creating the
            external representation of this transform. This metadata has a
            default value of true.

    @const kSecTransformMetaAttributeHasOutboundConnections
            This metadata value is true if the attribute has an outbound
            connection. This metadata is read only.

    @const kSecTransformMetaAttributeHasInboundConnection
            This metadata value is true if the attribute has an inbound
            connection. This metadata is read only.
*/
enum SecTransformMetaAttributeType : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Value
  case Name
  case Ref
  case Required
  case RequiresOutboundConnection
  case Deferred
  case Stream
  case CanCycle
  case Externalize
  case HasOutboundConnections
  case HasInboundConnection
}

/*!
    @typedef        SecTransformAttributeRef

    @abstract       A direct reference to an attribute. Using an attribute
                    reference speeds up using an attribute's value by removing
                    the need to look
    it up by name.
*/
typealias SecTransformAttributeRef = SecTransformAttribute

/*!
    @typedef        SecTransformAttributeRef

    @abstract       A direct reference to an attribute. Using an attribute
                    reference speeds up using an attribute's value by removing
                    the need to look
    it up by name.
*/
typealias SecTransformAttribute = CFTypeRef

/*!
    @typedef        SecTransformStringOrAttributeRef

    @abstract       This type signifies that either a CFStringRef or
                    a SecTransformAttributeRef may be used.
*/
typealias SecTransformStringOrAttribute = CFTypeRef

/*!
    @typedef        SecTransformStringOrAttributeRef

    @abstract       This type signifies that either a CFStringRef or
                    a SecTransformAttributeRef may be used.
*/
typealias SecTransformStringOrAttributeRef = SecTransformStringOrAttribute

/*!
    @typedef        SecTransformActionBlock

    @abstract       A block that overrides the default behavior of a
                    custom transform.

    @result         If this block is used to overide the
                    kSecTransformActionExternalizeExtraData action then the
                    block should return a CFDictinaryRef of the custom
                    items to be exported. For all of other actions the
                    block should return NULL. If an error occurs for
                    any action, the block should return a CFErrorRef.

    @discussion     A SecTransformTransformActionBlock block is used to
                    override
                    the default behavior of a custom transform. This block is
                    associated with the SecTransformOverrideTransformAction
                    block.

                    The behaviors that can be overridden are:

                        kSecTransformActionCanExecute
                            Determine if the transform has all of the data
                            needed to run.

                        kSecTransformActionStartingExecution
                            Called just before running ProcessData.

                        kSecTransformActionFinalize
                            Called just before deleting the custom transform.

                        kSecTransformActionExternalizeExtraData
                            Called to allow for writing out custom data
                            to be exported.

                    Example:
<pre>
@textblock
                    SecTransformImplementationRef ref;
                    CFErrorRef error = NULL;

                    error = SecTransformSetTransformAction(ref, kSecTransformActionStartingExecution,
                    ^{
                        // This is where the work to initialize any data needed
                        // before running
                        CFErrorRef result = DoMyInitialization();
                        return result;
                    });

                    SecTransformTransformActionBlock actionBlock =
                    ^{
                        // This is where the work to clean up any existing data
                        // before running
                        CFErrorRef result = DoMyFinalization();
                        return result;
                    };

                    error = SecTransformSetTransformAction(ref, kSecTransformActionFinalize,
                        actionBlock);
@/textblock
</pre>
*/
typealias SecTransformActionBlock = () -> Unmanaged<AnyObject>?

/*!
    @typedef        SecTransformAttributeActionBlock

    @abstract       A block used to override the default attribute handling
                    for when an attribute is set.

    @param attribute       The attribute whose default is being overridden or NULL
                    if this is a generic notification override

    @param value    Proposed new value for the attribute.

    @result         The new value of the attribute if successful. If an
                    error occurred then a CFErrorRef is returned. If a transform
                    needs to have a CFErrorRef as the value of an attribute,
                    then the CFErrorRef needs to be placed into a container such
                    as a CFArrayRef, CFDictionaryRef etc.

    @discussion     See the example program in this header for more details.

*/
typealias SecTransformAttributeActionBlock = (SecTransformAttribute, AnyObject) -> Unmanaged<AnyObject>?

/*!
    @typedef        SecTransformDataBlock
    
    @abstract       A block used to override the default data handling 
                    for a transform.

    @param data     The data to be processed. When this block is used
                    to to implement the kSecTransformActionProcessData action,
                    the data is the input data that is to be processed into the
                    output data.  When this block is used to implement the
                    kSecTransformActionInternalizeExtraData action, the data is
                    a CFDictionaryRef that contains the data that needs to be
                    imported.

    @result         When this block is used to implment the 
                    kSecTransformActionProcessData action, the value returned
                    is to be the data that will be passed to the output
                    attribute.  If an error occured while processing the input
                    data then the block should return a CFErrorRef.

                    When this block is used to implement the
                    kSecTransformActionInternalizeExtraData action then this block
                    should return NULL or a CFErrorRef if an error occurred.

    @discussion     See the example program for more details.
*/
typealias SecTransformDataBlock = (AnyObject) -> Unmanaged<AnyObject>?

/*!
    @typedef        SecTransformInstanceBlock

    @abstract       This is the block that is returned from an 
                    implementation of a CreateTransform function.

    @result         A CFErrorRef if an error occurred or NULL.
    
    @discussion     The instance block that is returned from the
                    developers CreateTransform function, defines 
                    the behavior of a custom attribute.  Please
                    see the example at the head of this file.

*/
typealias SecTransformInstanceBlock = () -> Unmanaged<CFError>?

/*!
    @typedef        SecTransformImplementationRef

    @abstract       The SecTransformImplementationRef is a pointer to a block 
                    that implements an instance of a transform.

*/
typealias SecTransformImplementationRef = COpaquePointer

/*!
    @function       SecTransformSetAttributeAction

    @abstract       Be notified when a attribute is set. The supplied block is
                    called when the attribute is set. This can be done for a
                    specific named attribute or all attributes.

    @param ref      A SecTransformImplementationRef that is bound to an instance
                    of a custom transform.

    @param action   The behavior to be set. This can be one of the following
                    actions: 

                    kSecTransformActionAttributeNotification - add a block that
                    is called when an attribute is set. If the name is NULL,
                    then the supplied block is called for all set attributes
                    except for ones that have a specific block as a handler.

                    For example, if there is a handler for the attribute "foo"
                    and for all attributes, the "foo" handler is called when the
                    "foo" attribute is set, but all other attribute sets will
                    call the NULL handler.

                    The kSecTransformActionProcessData action is a special case
                    of a SecTransformSetAttributeAction action.  If this is
                    called on the input attribute then it will overwrite any
                    kSecTransformActionProcessData that was set.

                    kSecTransformActionAttributeValidation Add a block that is
                    called to validate the input to an attribute.

    @param attribute
                    The name of the attribute that will be handled. An attribute
                    reference may also be given here. A NULL name indicates that
                    the supplied action is for all attributes.

    @param newAction
                    A SecTransformAttributeActionBlock which implements the
                    behavior.

    @result         A CFErrorRef if an error occured NULL otherwise.

    @discussion     This function may be called multiple times for either a
                    named attribute or for all attributes when the attribute
                    parameter is NULL. Each time the API is called it overwrites
                    what was there previously.

*/
func SecTransformSetAttributeAction(ref: SecTransformImplementationRef, _ action: CFString, _ attribute: SecTransformStringOrAttribute?, _ newAction: SecTransformAttributeActionBlock) -> CFError?

/*!
    @function       SecTransformSetDataAction

    @abstract       Change the way a custom transform will do data processing.
                    When the action parameter is kSecTransformActionProcessData
                    The newAction block will change the way that input data is
                    processed to become the output data. When the action
                    parameter is kSecTransformActionInternalizeExtraData it will
                    change the way a custom transform reads in data to be
                    imported into the transform.

    @param ref      A SecTransformImplementationRef that is bound to an instance
                    of a custom transform.

    @param action   The action being overridden.  This value should be one of the
                    following:
                        kSecTransformActionProcessData
                            Change the way that input data is processed into the
                            output data. The default behavior is to simply copy
                            the input data to the output attribute.

                            The kSecTransformActionProcessData action is really
                            a special case of a SecTransformSetAttributeAction
                            action. If you call this method with
                            kSecTransformActionProcessData it would overwrite
                            any kSecTransformActionAttributeNotification action
                            that was set proviously

                        kSecTransformActionInternalizeExtraData
                            Change the way that custom externalized data is
                            imported into the transform.  The default behavior
                            is to do nothing.

    @param newAction
                    A SecTransformDataBlock which implements the behavior.

                    If the action parameter is kSecTransformActionProcessData then
                    this block will be called to process the input data into the
                    output data.

                    if the action parameter is kSecTransformActionInternalizeExtraData then
                    this block will called to input custom data into the transform.

    @result         A CFErrorRef is an error occured NULL otherwise.

    @discussion      This API may be called multiple times.  Each time the API is called 
                    it overwrites what was there previously.

*/
func SecTransformSetDataAction(ref: SecTransformImplementationRef, _ action: CFString, _ newAction: SecTransformDataBlock) -> CFError?
func SecTransformSetTransformAction(ref: SecTransformImplementationRef, _ action: CFString, _ newAction: SecTransformActionBlock) -> CFError?

/*!
 @function       SecTransformCustomGetAttribute
 
 @abstract       Allow a custom transform to get an attribute value
 
 @param ref      A SecTransformImplementationRef that is bound to an instance
 of a custom transform.
 
 @param attribute
 The name or the attribute handle of the attribute whose
 value is to be retrieved.
 
 @param type     The type of data to be retrieved for the attribute.  See the 
 discussion on SecTransformMetaAttributeType for details.
 
 @result         The value of the attribute.
 
 */
func SecTransformCustomGetAttribute(ref: SecTransformImplementationRef, _ attribute: SecTransformStringOrAttribute, _ type: SecTransformMetaAttributeType) -> AnyObject?

/*!
    @function       SecTransformCustomSetAttribute

    @abstract       Allow a custom transform to set an attribute value

    @param ref      A SecTransformImplementationRef that is bound to an instance
                    of a custom transform.

    @param attribute
                    The name or the attribute handle of the attribute whose
                    value is to be set.

    @param type     The type of data to be retrieved for the attribute.  See the
                    discussion on SecTransformMetaAttributeType for details.

    @param value    The new value for the attribute

    @result         A CFErrorRef if an error occured , NULL otherwise.

    @discussion     Unlike the SecTransformSetAttribute API this API can set 
                    attribute values while a transform is executing.  These
                    values are limited to the custom transform instance that
                    is bound to the ref parameter.

*/
func SecTransformCustomSetAttribute(ref: SecTransformImplementationRef, _ attribute: SecTransformStringOrAttribute, _ type: SecTransformMetaAttributeType, _ value: AnyObject?) -> AnyObject?

/*!
    @function       SecTransformPushbackAttribute

    @abstract       Allows for putting a single value back for a specific
                    attribute.  This will stop the flow of data into the
                    specified attribute until any attribute is changed for the
                    transform instance bound to the ref parameter.

    @param ref      A SecTransformImplementationRef that is bound to an instance
                    of a custom transform.

    @param attribute
                    The name or the attribute handle of the attribute whose
                    value is to be pushed back.

    @param value    The value being pushed back.

    @result         A CFErrorRef if an error occured , NULL otherwise.

*/
func SecTransformPushbackAttribute(ref: SecTransformImplementationRef, _ attribute: SecTransformStringOrAttribute, _ value: AnyObject) -> AnyObject?

/*!
    @typedef        SecTransformCreateFP

    @abstract       A function pointer to a function that will create a
                    new instance of a custom transform.

    @param name     The name of the new custom transform. This name MUST be
                    unique.

    @param newTransform
                    The newly created transform Ref.

    @param ref      A reference that is bound to an instance of a custom
                    transform.

    @result         A SecTransformInstanceBlock that is used to create a new
                    instance of a custom transform.

    @discussion      The CreateTransform function creates a new transform. The
                    SecTransformInstanceBlock that is returned from this
                    function provides the implementation of all of the overrides
                    necessary to create the custom transform. This returned
                    SecTransformInstanceBlock is also where the "instance"
                    variables for the custom transform may be defined. See the
                    example in the header section of this file for more detail.
*/
typealias SecTransformCreateFP = @convention(c) (CFString, SecTransform, SecTransformImplementationRef) -> SecTransformInstanceBlock

/*!
    @constant  kSecTransformActionCanExecute
                Overrides the standard behavior that checks to see if all of the
                required attributes either have been set or are connected to
                another transform.  When overriding the default behavior the
                developer can decided what the necessary data is to have for a
                transform to be considered 'ready to run'.  Returning NULL means
                that the transform is ready to be run. If the transform is NOT
                ready to run then the override should return a CFErrorRef
                stipulating the error.
 */
let kSecTransformActionCanExecute: CFString

/*!
    @constant  kSecTransformActionStartingExecution
                Overrides the standard behavior that occurs just before starting
                execution of a custom transform. This is typically overridden
                to allow for initialization. This is used with the
                SecTransformOverrideTransformAction block.
 */
let kSecTransformActionStartingExecution: CFString

/*!
    @constant kSecTransformActionFinalize
                Overrides the standard behavior that occurs just before deleting
                a custom transform. This is typically overridden to allow for
                memory clean up of a custom transform.  This is used with the
                SecTransformOverrideTransformAction block.
 */
let kSecTransformActionFinalize: CFString

/*!

    @constant kSecTransformActionExternalizeExtraData
                Allows for adding to the data that is stored using an override
                to the kSecTransformActionExternalizeExtraData block. The output
                of this override is a dictionary that contains the custom
                externalized data. A common use of this override is to write out
                a version number of a custom transform.
 */
let kSecTransformActionExternalizeExtraData: CFString

/*!
    @constant  kSecTransformActionProcessData
                Overrides the standard data processing for an attribute. This is
                almost exclusively used for processing the input attribute as
                the return value of their block sets the output attribute. This
                is used with the SecTransformOverrideAttributeAction block.
 */
let kSecTransformActionProcessData: CFString

/*!
    @constant kSecTransformActionInternalizeExtraData
                Overrides the standard processing that occurs when externalized
                data is used to create a transform.  This is closely tied to the
                kSecTransformActionExternalizeExtraData override. The 'normal'
                attributes are read into the new transform and then this is
                called to read in the items that were written out using
                kSecTransformActionExternalizeExtraData override. A common use
                of this override would be to read in the version number of the
                externalized custom transform.
 */
let kSecTransformActionInternalizeExtraData: CFString

/*!
    @constant SecTransformActionAttributeNotification
                Allows a block to be called when an attribute is set.  This
                allows for caching the value as a block variable in the instance
                block or transmogrifying the data to be set. This action is
                where a custom transform would be able to do processing outside
                of processing input to output as process data does.  One the
                data has been processed the action block can call
                SecTransformCustomSetAttribute to update and other attribute.
 */
let kSecTransformActionAttributeNotification: CFString

/*!
    @constant kSecTransformActionAttributeValidation
                Allows a block to be called to validate the new value for an
                attribute.  The default is no validation and any CFTypeRef can
                be used as the new value.  The block should return NULL if the
                value is ok to set on the attribute or a CFErrorRef otherwise.

*/
let kSecTransformActionAttributeValidation: CFString

/*!
    @function       SecTransformRegister

    @abstract       Register a new custom transform so that it may be used to 
                    process data

    @param uniqueName   
                    A unique name for this custom transform.  It is recommended
                    that a reverse DNS name be used for the name of your custom
                    transform

    @param createTransformFunction  
                    A SecTransformCreateFP function pointer. The function must
                    return a SecTransformInstanceBlock block that block_copy has
                    been called on before returning the block. Failure to call
                    block_copy will cause undefined behavior.

    @param error    This pointer is set if an error occurred.  This value 
                    may be NULL if you do not want an error returned.

    @result         True if the custom transform was registered false otherwise

*/
@available(OSX 10.7, *)
func SecTransformRegister(uniqueName: CFString, _ createTransformFunction: SecTransformCreateFP, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
     @function      SecTransformCreate

     @abstract      Creates a transform computation object.

     @param name    The type of transform to create, must have been registered
                    by SecTransformRegister, or be a system pre-defined
                    transform type.

     @param error   A pointer to a CFErrorRef.  This pointer is set if an error
                    occurred.  This value may be NULL if you do not want an
                    error returned.

     @result        A pointer to a SecTransformRef object.  This object must be
                    released with CFRelease when you are done with it.  This
                    function returns NULL if an error occurred.
 */
@available(OSX 10.7, *)
func SecTransformCreate(name: CFString, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform?

/*!
    @Function       SecTransformNoData

    @abstract       Returns back A CFTypeRef from inside a processData
                    override that says that while no data is being returned
                    the transform is still active and awaiting data.

    @result         A 'special' value that allows that specifies that the
                    transform is still active and awaiting data.

    @discussion      The standard behavior for the ProcessData override is that
                    it will receive a CFDataRef and it processes that data and
                    returns a CFDataRef that contains the processed data. When
                    there is no more data to process the ProcessData override
                    block is called one last time with a NULL CFDataRef.  The
                    ProcessData block should/must return the NULL CFDataRef to
                    complete the processing.  This model does not work well for
                    some transforms. For example a digest transform needs to see
                    ALL of the data that is being digested before it can send
                    out the digest value.
                    
                    If a ProcessData block has no data to return, it can return
                    SecTransformNoData(), which informs the transform system
                    that there is no data to pass on to the next transform.


*/
func SecTransformNoData() -> AnyObject

/*!
	 @constant kSecDecodeTypeAttribute
	 Used with SecTransformGetAttribute to query the attribute type.
	 Returns one of the strings defined in the previous section.
	 */
let kSecDecodeTypeAttribute: CFString

/*!
	 @function SecDecodeTransformCreate
	 @abstract			Creates an decode computation object.
	 @param DecodeType	The type of digest to decode.  You may pass NULL
	 for this parameter, in which case an appropriate
	 algorithm will be chosen for you.
	 @param error		A pointer to a CFErrorRef.  This pointer will be set
	 if an error occurred.  This value may be NULL if you
	 do not want an error returned.
	 @result				A pointer to a SecTransformRef object.  This object must
	 be released with CFRelease when you are done with
	 it.  This function will return NULL if an error
	 occurred.
	 @discussion			This function creates a transform which computes a
	 decode.
	 */
@available(OSX 10.7, *)
func SecDecodeTransformCreate(DecodeType: AnyObject, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform?

/*!
	@abstract
		Specifies an MD2 digest
*/
let kSecDigestMD2: CFString

/*!
	@abstract
		Specifies an MD4 digest
 */
let kSecDigestMD4: CFString

/*!
	@abstract
		Specifies an MD5 digest
 */
let kSecDigestMD5: CFString

/*!
	@abstract
		Specifies a SHA1 digest
 */
let kSecDigestSHA1: CFString

/*!
	@abstract
		Specifies a SHA2 digest.
 */
let kSecDigestSHA2: CFString

/*!
	@abstract
		Specifies an HMAC using the MD5 digest algorithm.
 */
let kSecDigestHMACMD5: CFString

/*!
	@abstract
		Specifies an HMAC using the SHA1 digest algorithm.
 */
let kSecDigestHMACSHA1: CFString

/*!
	@abstract
		Specifies an HMAC using one of the SHA2 digest algorithms.
 */
let kSecDigestHMACSHA2: CFString

/*!
	@constant kSecDigestTypeAttribute
		Used with SecTransformGetAttribute to query the attribute type.
		Returns one of the strings defined in the previous section.
 */
let kSecDigestTypeAttribute: CFString

/*!
	@constant kSecDigestLengthAttribute
		Used with SecTransformGetAttribute to query the length attribute.
		Returns a CFNumberRef that contains the length.
 */
let kSecDigestLengthAttribute: CFString

/*!
	@constant kSecDigestHMACKeyAttribute
		When set and used with one of the HMAC digest types, sets the key
		for the HMAC operation.  The data type for this attribute must be
		a CFDataRef.  If this value is not set, the transform will assume
		a zero length key.
*/
let kSecDigestHMACKeyAttribute: CFString

/*!
	@function SecDigestTransformCreate
	@abstract			Creates a digest computation object.
	@param digestType	The type of digest to compute.  You may pass NULL
						for this parameter, in which case an appropriate
						algorithm will be chosen for you.
	@param digestLength	The desired digest length.  Note that certain
						algorithms may only support certain sizes. You may
						pass 0 for this parameter, in which case an
						appropriate length will be chosen for you.
	@param error		A pointer to a CFErrorRef.  This pointer will be set
						if an error occurred.  This value may be NULL if you
						do not want an error returned.
	@result				A pointer to a SecTransformRef object.  This object must
						be released with CFRelease when you are done with
						it.  This function will return NULL if an error
						occurred.
	@discussion			This function creates a transform which computes a
						cryptographic digest.
*/
@available(OSX 10.7, *)
func SecDigestTransformCreate(digestType: AnyObject?, _ digestLength: CFIndex, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform

/*!
	@function SecDigestTransformGetTypeID
	@abstract			Return the CFTypeID of a SecDigestTransform
	@result			The CFTypeID
*/
@available(OSX 10.7, *)
func SecDigestTransformGetTypeID() -> CFTypeID

/*!
    @abstract Specifies a base 64 encoding
 */
let kSecBase64Encoding: CFString

/*!
    @abstract Specifies a base 32 encoding
 */
let kSecBase32Encoding: CFString

/*!
    @abstract Specifies a compressed encoding.
 */
let kSecZLibEncoding: CFString

/*!
 @constant kSecEncodeTypeAttribute
 Used with SecTransformGetAttribute to query the attribute type.
 Returns one of the strings defined in the previous section.
 */
let kSecEncodeTypeAttribute: CFString
let kSecLineLength64: CFString
let kSecLineLength76: CFString

/*!
 @constant kSecEncodeLineLengthAttribute
 Used with SecTransformSetAttribute to set the length
 of encoded Base32 or Base64 lines.   Some systems will
 not decode or otherwise deal with excessively long lines,
 or may be defined to limit lines to specific lengths
 (for example RFC1421 - 64, and RFC2045 - 76).

 The LineLengthAttribute may be set to any positive
 value (via a CFNumberRef) to limit to a specific
 length (values smaller then X for Base32 or Y for Base64
 are assume to be X or Y), or to zero for no specific
 limit.   Either of the string constants kSecLineLength64
 (RFC1421), or kSecLineLength76 (RFC2045) may be used to
 set line lengths of 64 or 76 bytes.
 */
let kSecEncodeLineLengthAttribute: CFString
let kSecCompressionRatio: CFString

/*!
 @function SecEncodeTransformCreate
 @abstract			Creates an encode computation object.
 @param encodeType	The type of digest to compute.  You may pass NULL
 for this parameter, in which case an appropriate
 algorithm will be chosen for you.
 @param error		A pointer to a CFErrorRef.  This pointer will be set
 if an error occurred.  This value may be NULL if you
 do not want an error returned.
 @result				A pointer to a SecTransformRef object.  This object must
 be released with CFRelease when you are done with
 it.  This function will return NULL if an error
 occurred.
 @discussion			This function creates a transform which computes an
 encode.
 */
@available(OSX 10.7, *)
func SecEncodeTransformCreate(encodeType: AnyObject, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform?

/*! @abstract Indicates that no padding will be used when encrypting or decrypting. */
let kSecPaddingNoneKey: CFString

/*! Indicates that PKCS1 padding will be used when encrypting or decrypting. */
let kSecPaddingPKCS1Key: CFString

/*! Indicates that PKCS5 padding will be used when encrypting or decrypting. */
let kSecPaddingPKCS5Key: CFString

/*! Indicates that PKCS7 padding will be used when encrypting or decrypting. */
let kSecPaddingPKCS7Key: CFString

/*! Indicates that PKCS7 padding will be used when encrypting or decrypting. */
@available(OSX 10.8, *)
let kSecPaddingOAEPKey: CFString

/*! Indicates that no mode will be used when encrypting or decrypting. */
let kSecModeNoneKey: CFString

/*! Indicates that ECB mode will be used when encrypting or decrypting. */
let kSecModeECBKey: CFString

/*! Indicates that CBC mode will be used when encrypting or decrypting. */
let kSecModeCBCKey: CFString

/*! Indicates that CFB mode will be used when encrypting or decrypting. */
let kSecModeCFBKey: CFString

/*! Indicates that OFB mode will be used when encrypting or decrypting. */
let kSecModeOFBKey: CFString

/*!
	    @abstract
		This attribute holds the encryption key for the transform. (ReadOnly)
	 */
let kSecEncryptKey: CFString

/*!
	    @abstract
		Key for setting padding.
	    @discussion
		This key is optional.  If you do not supply a value for this key,
	 	an appropriate value will be supplied for you.
	*/
let kSecPaddingKey: CFString

/*!
	    @abstract
		Key for setting an initialization vector.
	    @discussion
		This key is optional.  If you do not supply a
	 	value for this key, an appropriate value will be supplied for you.
	*/
let kSecIVKey: CFString

/*!
    @abstract
    Specifies the encryption mode.
    @discussion
    This key is optional.  If you do not supply this key,
    an appropriate value will be supplied for you.
    */
let kSecEncryptionMode: CFString

/*!
    @abstract
    Specifies the OAEP message length.
    @discussion
    This should be set to a CFNumberRef when the padding is set to OAEP,
    and a specific messages size is desired.   If unset the minimum padding
    will be added.   It is ignored when the padding mode is not OAEP.
    */
@available(OSX 10.8, *)
let kSecOAEPMessageLengthAttributeName: CFString

/*!
    @abstract
    Specifies the OAEP encoding paramaters
    @discussion
    This should be set to a CFDataRef when the padding is set to OAEP.
    If unset a zero length CFDataRef is used.   It is ignored by non
    OAEP padding modes.
    */
@available(OSX 10.8, *)
let kSecOAEPEncodingParametersAttributeName: CFString

/*!
    @abstract
    Specifies the OAEP MGF1 digest algorithm.
    @discussion
    This should be set to a digest algorithm when the padding is set to OAEP.
    If unset SHA1 is used.   It is ifnored by non OAEP padding modes.
    */
@available(OSX 10.8, *)
let kSecOAEPMGF1DigestAlgorithmAttributeName: CFString

/*!
	 @function SecEncryptTransformCreate
	 @abstract			Creates an encryption SecTransform  object.
	 @param keyRef			The key for the encryption operation
	 @param error		A pointer to a CFErrorRef.  This pointer will be set
	 if an error occurred.  This value may be NULL if you
	 do not want an error returned.
	 @result				A pointer to a SecTransformRef object.  This object must
	 be released with CFRelease when you are done with
	 it.  This function will return NULL if an error
	 occurred.
	 @discussion			This function creates a transform which encrypts data.
	 */
@available(OSX 10.7, *)
func SecEncryptTransformCreate(keyRef: SecKey, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform

/*!
	 @function SecDecryptTransformCreate
	 @abstract			Creates an encryption SecTransform  object.
	 @param keyRef			The key for the operation
	 @param error		A pointer to a CFErrorRef.  This pointer will be set
	 if an error occurred.  This value may be NULL if you
	 do not want an error returned.
	 @result				A pointer to a SecTransformRef object.  This object must
	 be released with CFRelease when you are done with
	 it.  This function will return NULL if an error
	 occurred.
	 @discussion			This function creates a transform which encrypts data.
	 */
@available(OSX 10.7, *)
func SecDecryptTransformCreate(keyRef: SecKey, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform

/*!
	@function SecDecryptTransformGetTypeID
	@abstract			Returns the CFTypeID for a decrypt transform.
	@return			the CFTypeID
*/
@available(OSX 10.7, *)
func SecDecryptTransformGetTypeID() -> CFTypeID

/*!
	@function SecEncryptTransformGetTypeID
	@abstract			Returns the CFTypeID for a decrypt transform.
	@return			the CFTypeID
*/
@available(OSX 10.7, *)
func SecEncryptTransformGetTypeID() -> CFTypeID

/*!
	@function SecIdentityGetTypeID
	@abstract Returns the type identifier of SecIdentity instances.
	@result The CFTypeID of SecIdentity instances.
*/
@available(OSX 10.3, *)
func SecIdentityGetTypeID() -> CFTypeID

/*!
	@function SecIdentityCreateWithCertificate
    @abstract Creates a new identity reference for the given certificate, assuming the associated private key is in one of the specified keychains.
    @param keychainOrArray A reference to an array of keychains to search, a single keychain, or NULL to search the user's default keychain search list.
	@param certificateRef A certificate reference.
    @param identityRef On return, an identity reference. You are responsible for releasing this reference by calling the CFRelease function.
    @result A result code. See "Security Error Codes" (SecBase.h).
*/
@available(OSX 10.5, *)
func SecIdentityCreateWithCertificate(keychainOrArray: AnyObject?, _ certificateRef: SecCertificate, _ identityRef: UnsafeMutablePointer<SecIdentity?>) -> OSStatus

/*!
	@function SecIdentityCopyCertificate
    @abstract Returns a reference to a certificate for the given identity reference.
    @param identityRef An identity reference.
	@param certificateRef On return, a reference to the found certificate. You are responsible for releasing this reference by calling the CFRelease function.
    @result A result code. See "Security Error Codes" (SecBase.h).
*/
@available(OSX 10.3, *)
func SecIdentityCopyCertificate(identityRef: SecIdentity, _ certificateRef: UnsafeMutablePointer<SecCertificate?>) -> OSStatus

/*!
	@function SecIdentityCopyPrivateKey
    @abstract Returns the private key associated with an identity.
    @param identityRef An identity reference.
	@param privateKeyRef On return, a reference to the private key for the given identity. You are responsible for releasing this reference by calling the CFRelease function.
    @result A result code. See "Security Error Codes" (SecBase.h).
*/
@available(OSX 10.3, *)
func SecIdentityCopyPrivateKey(identityRef: SecIdentity, _ privateKeyRef: UnsafeMutablePointer<SecKey?>) -> OSStatus

/*!
    @function SecIdentityCopyPreferred
    @abstract Returns the preferred identity for the specified name and key usage, optionally limiting the result to an identity issued by a certificate whose subject is one of the distinguished names in validIssuers. If a preferred identity does not exist, NULL is returned.
    @param name A string containing a URI, RFC822 email address, DNS hostname, or other name which uniquely identifies the service requiring an identity.
    @param keyUsage A CFArrayRef value, containing items defined in SecItem.h  Pass NULL to ignore this parameter. (kSecAttrCanEncrypt, kSecAttrCanDecrypt, kSecAttrCanDerive, kSecAttrCanSign, kSecAttrCanVerify, kSecAttrCanWrap, kSecAttrCanUnwrap)
    @param validIssuers (optional) An array of CFDataRef instances whose contents are the subject names of allowable issuers, as returned by a call to SSLCopyDistinguishedNames (SecureTransport.h). Pass NULL if any issuer is allowed.
    @param identity On return, a reference to the preferred identity, or NULL if none was found. You are responsible for releasing this reference by calling the CFRelease function.
    @result An identity or NULL. if the preferred identity has not been set. Your code should then typically perform a search for possible identities using the SecItem APIs.
    @discussion If a preferred identity has not been set for the supplied name, the returned identity reference will be NULL. Your code should then perform a search for possible identities, using the SecItemCopyMatching API.
*/
@available(OSX 10.7, *)
func SecIdentityCopyPreferred(name: CFString, _ keyUsage: CFArray?, _ validIssuers: CFArray?) -> SecIdentity?

/*!
    @function SecIdentitySetPreferred
    @abstract Sets the preferred identity for the specified name and key usage.
    @param identity A reference to the identity which will be preferred. If NULL is passed, any existing preference for the specified name is cleared instead.
    @param name A string containing a URI, RFC822 email address, DNS hostname, or other name which uniquely identifies a service requiring this identity.
    @param keyUsage A CFArrayRef value, containing items defined in SecItem.h  Pass NULL to specify any key usage. (kSecAttrCanEncrypt, kSecAttrCanDecrypt, kSecAttrCanDerive, kSecAttrCanSign, kSecAttrCanVerify, kSecAttrCanWrap, kSecAttrCanUnwrap)
    @result A result code. See "Security Error Codes" (SecBase.h).
*/
@available(OSX 10.7, *)
func SecIdentitySetPreferred(identity: SecIdentity?, _ name: CFString, _ keyUsage: CFArray?) -> OSStatus

/*!
	@function	SecIdentityCopySystemIdentity
	@abstract	Obtain the system-wide SecIdentityRef associated with 
				a specified domain.
	@param		domain  Identifies the SecIdentityRef to be obtained, typically
						in the form "com.apple.subdomain...". 
	@param		idRef	On return, the system SecIdentityRef assicated with 
						the specified domain. Caller must CFRelease this when 
						finished with it.	
	@param		actualDomain (optional) The actual domain name of the 
						the returned identity is returned here. This
						may be different from the requested domain. 
    @result		A result code.  See "Security Error Codes" (SecBase.h).
	@discussion	If no system SecIdentityRef exists for the specified
				domain, a domain-specific alternate may be returned
				instead, typically (but not exclusively) the 
				kSecIdentityDomainDefault SecIdentityRef. 
 */
@available(OSX 10.5, *)
func SecIdentityCopySystemIdentity(domain: CFString, _ idRef: UnsafeMutablePointer<SecIdentity?>, _ actualDomain: UnsafeMutablePointer<CFString?>) -> OSStatus

/*!
	@function	SecIdentitySetSystemIdentity
	@abstract	Assign the supplied SecIdentityRef to the specified
				domain.
	@param		domain Identifies the domain to which the specified 
				SecIdentityRef will be assigned.
	@param		idRef (optional) The identity to be assigned to the specified 
				domain. Pass NULL to delete a possible entry for the specified
				domain; in this case, it is not an error if no identity
				exists for the specified domain. 
    @result		A result code.  See "Security Error Codes" (SecBase.h).
	@discussion	The caller must be running as root.
*/
@available(OSX 10.5, *)
func SecIdentitySetSystemIdentity(domain: CFString, _ idRef: SecIdentity?) -> OSStatus

/*!
	@const kSecIdentityDomainDefault The system-wide default identity.
 */
@available(OSX 10.5, *)
let kSecIdentityDomainDefault: CFString

/*!
	@const kSecIdentityDomainKerberosKDC Kerberos KDC identity.
*/
@available(OSX 10.5, *)
let kSecIdentityDomainKerberosKDC: CFString

/*!
    @typedef SecIdentitySearchRef
    @abstract Contains information about an identity search.
*/
class SecIdentitySearch {
}

/*!
    @typedef SecIdentitySearchRef
    @abstract Contains information about an identity search.
*/
typealias SecIdentitySearchRef = SecIdentitySearch
enum SecExternalFormat : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case FormatUnknown
  case FormatOpenSSL
  case FormatSSH
  case FormatBSAFE
  case FormatRawKey
  case FormatWrappedPKCS8
  case FormatWrappedOpenSSL
  case FormatWrappedSSH
  case FormatWrappedLSH
  case FormatX509Cert
  case FormatPEMSequence
  case FormatPKCS7
  case FormatPKCS12
  case FormatNetscapeCertSequence
  case FormatSSHv2
}
enum SecExternalItemType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case ItemTypeUnknown
  case ItemTypePrivateKey
  case ItemTypePublicKey
  case ItemTypeSessionKey
  case ItemTypeCertificate
  case ItemTypeAggregate
}
struct SecItemImportExportFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var PemArmour: SecItemImportExportFlags { get }
}
struct SecKeyImportExportFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var ImportOnlyOne: SecKeyImportExportFlags { get }
  static var SecurePassphrase: SecKeyImportExportFlags { get }
  static var NoAccessControl: SecKeyImportExportFlags { get }
}
var SEC_KEY_IMPORT_EXPORT_PARAMS_VERSION: Int32 { get }
struct SecKeyImportExportParameters {
  var version: UInt32
  var flags: SecKeyImportExportFlags
  var passphrase: Unmanaged<AnyObject>
  var alertTitle: Unmanaged<CFString>
  var alertPrompt: Unmanaged<CFString>
  var accessRef: Unmanaged<SecAccess>?
  var keyUsage: CSSM_KEYUSE
  var keyAttributes: CSSM_KEYATTR_FLAGS
}
struct SecItemImportExportKeyParameters {
  var version: UInt32
  var flags: SecKeyImportExportFlags
  var passphrase: Unmanaged<AnyObject>
  var alertTitle: Unmanaged<CFString>
  var alertPrompt: Unmanaged<CFString>
  var accessRef: Unmanaged<SecAccess>?
  var keyUsage: Unmanaged<CFArray>?
  var keyAttributes: Unmanaged<CFArray>?
}
@available(OSX 10.7, *)
func SecItemExport(secItemOrArray: AnyObject, _ outputFormat: SecExternalFormat, _ flags: SecItemImportExportFlags, _ keyParams: UnsafePointer<SecItemImportExportKeyParameters>, _ exportedData: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(OSX 10.7, *)
func SecItemImport(importedData: CFData, _ fileNameOrExtension: CFString?, _ inputFormat: UnsafeMutablePointer<SecExternalFormat>, _ itemType: UnsafeMutablePointer<SecExternalItemType>, _ flags: SecItemImportExportFlags, _ keyParams: UnsafePointer<SecItemImportExportKeyParameters>, _ importKeychain: SecKeychain?, _ outItems: UnsafeMutablePointer<CFArray?>) -> OSStatus

/*!
    @enum Import/Export options
    @discussion Predefined key constants used when passing dictionary-based arguments to import/export functions.
    @constant kSecImportExportPassphrase Specifies a passphrase represented by a CFStringRef to be used when exporting to (or importing from) PKCS#12 format.
	@constant kSecImportExportKeychain Specifies a keychain represented by a SecKeychainRef to be used as the target when importing from PKCS#12 format.
	@constant kSecImportExportAccess Specifies an access represented by a SecAccessRef for the initial access (ACL) of a key imported from PKCS#12 format.
*/
let kSecImportExportPassphrase: CFString
let kSecImportExportKeychain: CFString
let kSecImportExportAccess: CFString

/*!
    @enum Import/Export item description
    @discussion Predefined key constants used by functions which return a CFArray with a CFDictionary per item.
    @constant kSecImportItemLabel A CFStringRef representing the item label. This implementation specific identifier cannot be expected to have any format.
    @constant kSecImportItemKeyID A CFDataRef representing the key id. Typically this is the SHA-1 digest of the public key.
    @constant kSecImportItemIdentity A SecIdentityRef representing the identity.
    @constant kSecImportItemTrust A SecTrustRef set up with all relevant certificates. Not guaranteed to succesfully evaluate.
    @constant kSecImportItemCertChain A CFArrayRef holding all relevant certificates for this item's identity.
*/
let kSecImportItemLabel: CFString
let kSecImportItemKeyID: CFString
let kSecImportItemTrust: CFString
let kSecImportItemCertChain: CFString
let kSecImportItemIdentity: CFString

/*!
	@function SecPKCS12Import
	@abstract Imports the contents of a PKCS12 formatted blob.
    @param pkcs12_data The PKCS12 data to be imported.
    @param options A dictionary containing import options. A kSecImportExportPassphrase entry is required at minimum. Only password-based PKCS12 blobs are currently supported.
    @param items On return, an array containing a dictionary for every item extracted. Use kSecImportItem constants to access specific elements of these dictionaries. Your code must CFRelease the array when it is no longer needed.
	@result errSecSuccess in case of success. errSecDecode means either the blob can't be read or it is malformed.
		errSecAuthFailed means an incorrect password was supplied, or data in the container is damaged.
*/
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
@available(OSX 10.6, *)
let kSecClass: CFString

/*!
	 @enum Class Value Constants
	 @discussion Predefined item class constants used to get or set values in
	 a dictionary. The kSecClass constant is the key and its value is one
	 of the constants defined here. Note: on Mac OS X 10.6, only items
	 of class kSecClassInternetPassword are supported.
	 @constant kSecClassInternetPassword Specifies Internet password items.
	 @constant kSecClassGenericPassword Specifies generic password items.
	 @constant kSecClassCertificate Specifies certificate items.
	 @constant kSecClassKey Specifies key items.
	 @constant kSecClassIdentity Specifies identity items.
*/
@available(OSX 10.6, *)
let kSecClassInternetPassword: CFString
@available(OSX 10.7, *)
let kSecClassGenericPassword: CFString
@available(OSX 10.7, *)
let kSecClassCertificate: CFString
@available(OSX 10.7, *)
let kSecClassKey: CFString
@available(OSX 10.7, *)
let kSecClassIdentity: CFString

/*!
	 @enum Attribute Key Constants
	 @discussion Predefined item attribute keys used to get or set values in a
	 dictionary. Not all attributes apply to each item class. The table
	 below lists the currently defined attributes for each item class:

	 kSecClassGenericPassword item attributes:
	 kSecAttrAccess (OS X only)
	 kSecAttrAccessControl
	 kSecAttrAccessGroup (iOS; also OS X if kSecAttrSynchronizable specified)
	 kSecAttrAccessible (iOS; also OS X if kSecAttrSynchronizable specified)
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

	 kSecClassInternetPassword item attributes:
	 kSecAttrAccess (OS X only)
	 kSecAttrAccessGroup (iOS; also OS X if kSecAttrSynchronizable specified)
	 kSecAttrAccessible (iOS; also OS X if kSecAttrSynchronizable specified)
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

	 kSecClassCertificate item attributes:
	 kSecAttrCertificateType
	 kSecAttrCertificateEncoding
	 kSecAttrLabel
	 kSecAttrSubject
	 kSecAttrIssuer
	 kSecAttrSerialNumber
	 kSecAttrSubjectKeyID
	 kSecAttrPublicKeyHash

	 kSecClassKey item attributes:
	 kSecAttrAccess (OS X only)
	 kSecAttrAccessGroup (iOS only)
	 kSecAttrAccessible (iOS only)
	 kSecAttrKeyClass
	 kSecAttrLabel
	 kSecAttrApplicationLabel
	 kSecAttrIsPermanent
	 kSecAttrApplicationTag
	 kSecAttrKeyType
	 kSecAttrPRF
	 kSecAttrSalt
	 kSecAttrRounds
	 kSecAttrKeySizeInBits
	 kSecAttrEffectiveKeySize
	 kSecAttrCanEncrypt
	 kSecAttrCanDecrypt
	 kSecAttrCanDerive
	 kSecAttrCanSign
	 kSecAttrCanVerify
	 kSecAttrCanWrap
	 kSecAttrCanUnwrap

	 Note that the attributes kSecAttrCan* describe attributes of the
	 key itself at relatively high level. Some of these attributes are
	 mathematical -- for example, a DSA key cannot encrypt. Others are
	 key-level policy issues -- for example, it is good cryptographic
	 hygiene to use an RSA key either for encryption or signing but not
	 both. Compare these to the certificate-level policy values in
	 SecPolicy.h.

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
     IMPORTANT: This attribute is mutually exclusive with kSecAttrAccess
     attribute.

     @constant kSecAttrAccess Specifies a dictionary key whose value
     is a SecAccessRef describing the access control settings for this item.
     This key is available on OS X only.

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

     @constant kSecAttrSynchronizableAny Specifies that both synchronizable and
     non-synchronizable results should be returned from this query. This may be
     used as a value for the kSecAttrSynchronizable dictionary key in a call to
     SecItemCopyMatching, SecItemUpdate, or SecItemDelete.

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
	 a value of type CFNumberRef that denotes the certificate type (see the
	 CSSM_CERT_TYPE enum in cssmtype.h). (Items of class
	 kSecClassCertificate have this attribute.)
	 @constant kSecAttrCertificateEncoding (read-only) Specifies a dictionary
	 key whose value is the item's certificate encoding. You use this key
	 to get a value of type CFNumberRef that denotes the certificate
	 encoding (see the CSSM_CERT_ENCODING enum in cssmtype.h). (Items of
	 class kSecClassCertificate have this attribute.)
	 @constant kSecAttrKeyClass (read only) Specifies a dictionary key whose
	 value is one of kSecAttrKeyClassPublic, kSecAttrKeyClassPrivate or
	 kSecAttrKeyClassSymmetric.
	 @constant kSecAttrApplicationLabel Specifies a dictionary key whose value
	 is the key's application label attribute. This is different from the
	 kSecAttrLabel (which is intended to be human-readable). This attribute
	 is used to look up a key programmatically; in particular, for keys of
	 class kSecAttrKeyClassPublic and kSecAttrKeyClassPrivate, the value of
	 this attribute is the hash of the public key. This item is a type of CFDataRef.
	 Legacy keys may contain a UUID in this field as a CFStringRef.
	 @constant kSecAttrIsPermanent Specifies a dictionary key whose value is a
	 CFBooleanRef indicating whether the key in question will be stored
	 permanently.
	 @constant kSecAttrIsSensitive Specifies a dictionary key whose value is a
	 CFBooleanRef indicating that the key in question can only be exported
	 in a wrapped (encrypted) format.
	 @constant kSecAttrIsExtractable Specifies a dictionary key whose value is a
	 CFBooleanRef indicating whether the key in question can be exported from
	 its keychain container.
	 @constant kSecAttrApplicationTag Specifies a dictionary key whose value is a
	 CFDataRef containing private tag data.
	 @constant kSecAttrKeyType Specifies a dictionary key whose value is a
	 CFNumberRef indicating the algorithm associated with this key (see the
	 CSSM_ALGORITHMS enum in cssmtype.h).
	 @constant kSecAttrPRF Specifies a dictionary key whose value is the PRF
	 (pseudo-random function) for this key (see "kSecAttrPRF Value Constants".)
	 @constant kSecAttrSalt Specifies a dictionary key whose value is a
	 CFData containing the salt to use for this key.
	 @constant kSecAttrRounds Specifies a dictionary key whose value is the
	 number of rounds for the pseudo-random function specified by kSecAttrPRF.
	 @constant kSecAttrKeySizeInBits Specifies a dictionary key whose value
	 is a CFNumberRef indicating the number of bits in this key.
	 @constant kSecAttrEffectiveKeySize Specifies a dictionary key whose value
	 is a CFNumberRef indicating the effective number of bits in this key.
	 For example, a DES key has a kSecAttrKeySizeInBits of 64, but a
	 kSecAttrEffectiveKeySize of 56 bits.
	 @constant kSecAttrCanEncrypt Specifies a dictionary key whole value is a
	 CFBooleanRef indicating whether the key in question can be used to
	 encrypt data.
	 @constant kSecAttrCanDecrypt Specifies a dictionary key whole value is a
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
*/
@available(OSX 10.9, *)
let kSecAttrAccessible: CFString
@available(OSX 10.7, *)
let kSecAttrAccess: CFString
@available(OSX 10.10, *)
let kSecAttrAccessControl: CFString
@available(OSX 10.9, *)
let kSecAttrAccessGroup: CFString
@available(OSX 10.9, *)
let kSecAttrSynchronizable: CFString
@available(OSX 10.9, *)
let kSecAttrSynchronizableAny: CFString
@available(OSX 10.6, *)
let kSecAttrCreationDate: CFString
@available(OSX 10.6, *)
let kSecAttrModificationDate: CFString
@available(OSX 10.6, *)
let kSecAttrDescription: CFString
@available(OSX 10.6, *)
let kSecAttrComment: CFString
@available(OSX 10.6, *)
let kSecAttrCreator: CFString
@available(OSX 10.6, *)
let kSecAttrType: CFString
@available(OSX 10.6, *)
let kSecAttrLabel: CFString
@available(OSX 10.6, *)
let kSecAttrIsInvisible: CFString
@available(OSX 10.6, *)
let kSecAttrIsNegative: CFString
@available(OSX 10.6, *)
let kSecAttrAccount: CFString
@available(OSX 10.6, *)
let kSecAttrService: CFString
@available(OSX 10.6, *)
let kSecAttrGeneric: CFString
@available(OSX 10.6, *)
let kSecAttrSecurityDomain: CFString
@available(OSX 10.6, *)
let kSecAttrServer: CFString
@available(OSX 10.6, *)
let kSecAttrProtocol: CFString
@available(OSX 10.6, *)
let kSecAttrAuthenticationType: CFString
@available(OSX 10.6, *)
let kSecAttrPort: CFString
@available(OSX 10.6, *)
let kSecAttrPath: CFString
@available(OSX 10.6, *)
let kSecAttrSubject: CFString
@available(OSX 10.6, *)
let kSecAttrIssuer: CFString
@available(OSX 10.6, *)
let kSecAttrSerialNumber: CFString
@available(OSX 10.6, *)
let kSecAttrSubjectKeyID: CFString
@available(OSX 10.6, *)
let kSecAttrPublicKeyHash: CFString
@available(OSX 10.6, *)
let kSecAttrCertificateType: CFString
@available(OSX 10.6, *)
let kSecAttrCertificateEncoding: CFString
@available(OSX 10.6, *)
let kSecAttrKeyClass: CFString
@available(OSX 10.6, *)
let kSecAttrApplicationLabel: CFString
@available(OSX 10.6, *)
let kSecAttrIsPermanent: CFString
@available(OSX 10.6, *)
let kSecAttrIsSensitive: CFString
@available(OSX 10.6, *)
let kSecAttrIsExtractable: CFString
@available(OSX 10.6, *)
let kSecAttrApplicationTag: CFString
@available(OSX 10.6, *)
let kSecAttrKeyType: CFString
@available(OSX 10.7, *)
let kSecAttrPRF: CFString
@available(OSX 10.7, *)
let kSecAttrSalt: CFString
@available(OSX 10.7, *)
let kSecAttrRounds: CFString
@available(OSX 10.6, *)
let kSecAttrKeySizeInBits: CFString
@available(OSX 10.6, *)
let kSecAttrEffectiveKeySize: CFString
@available(OSX 10.6, *)
let kSecAttrCanEncrypt: CFString
@available(OSX 10.6, *)
let kSecAttrCanDecrypt: CFString
@available(OSX 10.6, *)
let kSecAttrCanDerive: CFString
@available(OSX 10.6, *)
let kSecAttrCanSign: CFString
@available(OSX 10.6, *)
let kSecAttrCanVerify: CFString
@available(OSX 10.6, *)
let kSecAttrCanWrap: CFString
@available(OSX 10.6, *)
let kSecAttrCanUnwrap: CFString

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
        only be accessed while the device is unlocked. This is recommended for
        items that only need to be accessible while the application is in the
        foreground and requires a passcode to be set on the device. Items with
        this attribute will never migrate to a new device, so after a backup
        is restored to a new device, these items will be missing. This
        attribute will not be available on devices without a passcode. Disabling
        the device passcode will cause all previously protected items to
        be deleted.
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
@available(OSX 10.9, *)
let kSecAttrAccessibleWhenUnlocked: CFString
@available(OSX 10.9, *)
let kSecAttrAccessibleAfterFirstUnlock: CFString
@available(OSX 10.9, *)
let kSecAttrAccessibleAlways: CFString
@available(OSX 10.10, *)
let kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly: CFString
@available(OSX 10.9, *)
let kSecAttrAccessibleWhenUnlockedThisDeviceOnly: CFString
@available(OSX 10.9, *)
let kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly: CFString
@available(OSX 10.9, *)
let kSecAttrAccessibleAlwaysThisDeviceOnly: CFString

/*!
	 @enum kSecAttrProtocol Value Constants
	 @discussion Predefined item attribute constants used to get or set values
	 in a dictionary. The kSecAttrProtocol constant is the key and its
	 value is one of the constants defined here.
	 @constant kSecAttrProtocolFTP
	 @constant kSecAttrProtocolFTPAccount
	 @constant kSecAttrProtocolHTTP
	 @constant kSecAttrProtocolIRC
	 @constant kSecAttrProtocolNNTP
	 @constant kSecAttrProtocolPOP3
	 @constant kSecAttrProtocolSMTP
	 @constant kSecAttrProtocolSOCKS
	 @constant kSecAttrProtocolIMAP
	 @constant kSecAttrProtocolLDAP
	 @constant kSecAttrProtocolAppleTalk
	 @constant kSecAttrProtocolAFP
	 @constant kSecAttrProtocolTelnet
	 @constant kSecAttrProtocolSSH
	 @constant kSecAttrProtocolFTPS
	 @constant kSecAttrProtocolHTTPS
	 @constant kSecAttrProtocolHTTPProxy
	 @constant kSecAttrProtocolHTTPSProxy
	 @constant kSecAttrProtocolFTPProxy
	 @constant kSecAttrProtocolSMB
	 @constant kSecAttrProtocolRTSP
	 @constant kSecAttrProtocolRTSPProxy
	 @constant kSecAttrProtocolDAAP
	 @constant kSecAttrProtocolEPPC
	 @constant kSecAttrProtocolIPP
	 @constant kSecAttrProtocolNNTPS
	 @constant kSecAttrProtocolLDAPS
	 @constant kSecAttrProtocolTelnetS
	 @constant kSecAttrProtocolIMAPS
	 @constant kSecAttrProtocolIRCS
	 @constant kSecAttrProtocolPOP3S
*/
@available(OSX 10.6, *)
let kSecAttrProtocolFTP: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolFTPAccount: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolHTTP: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolIRC: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolNNTP: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolPOP3: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolSMTP: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolSOCKS: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolIMAP: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolLDAP: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolAppleTalk: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolAFP: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolTelnet: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolSSH: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolFTPS: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolHTTPS: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolHTTPProxy: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolHTTPSProxy: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolFTPProxy: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolSMB: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolRTSP: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolRTSPProxy: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolDAAP: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolEPPC: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolIPP: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolNNTPS: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolLDAPS: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolTelnetS: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolIMAPS: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolIRCS: CFString
@available(OSX 10.6, *)
let kSecAttrProtocolPOP3S: CFString

/*!
	 @enum kSecAttrAuthenticationType Value Constants
	 @discussion Predefined item attribute constants used to get or set values
	 in a dictionary. The kSecAttrAuthenticationType constant is the key
	 and its value is one of the constants defined here.
	 @constant kSecAttrAuthenticationTypeNTLM
	 @constant kSecAttrAuthenticationTypeMSN
	 @constant kSecAttrAuthenticationTypeDPA
	 @constant kSecAttrAuthenticationTypeRPA
	 @constant kSecAttrAuthenticationTypeHTTPBasic
	 @constant kSecAttrAuthenticationTypeHTTPDigest
	 @constant kSecAttrAuthenticationTypeHTMLForm
	 @constant kSecAttrAuthenticationTypeDefault
*/
@available(OSX 10.6, *)
let kSecAttrAuthenticationTypeNTLM: CFString
@available(OSX 10.6, *)
let kSecAttrAuthenticationTypeMSN: CFString
@available(OSX 10.6, *)
let kSecAttrAuthenticationTypeDPA: CFString
@available(OSX 10.6, *)
let kSecAttrAuthenticationTypeRPA: CFString
@available(OSX 10.6, *)
let kSecAttrAuthenticationTypeHTTPBasic: CFString
@available(OSX 10.6, *)
let kSecAttrAuthenticationTypeHTTPDigest: CFString
@available(OSX 10.6, *)
let kSecAttrAuthenticationTypeHTMLForm: CFString
@available(OSX 10.6, *)
let kSecAttrAuthenticationTypeDefault: CFString

/*!
	 @enum kSecAttrKeyClass Value Constants
	 @discussion Predefined item attribute constants used to get or set values
	 in a dictionary. The kSecAttrKeyClass constant is the key
	 and its value is one of the constants defined here.
	 @constant kSecAttrKeyClassPublic
	 @constant kSecAttrKeyClassPrivate
	 @constant kSecAttrKeyClassSymmetric
*/
@available(OSX 10.7, *)
let kSecAttrKeyClassPublic: CFString
@available(OSX 10.7, *)
let kSecAttrKeyClassPrivate: CFString
@available(OSX 10.7, *)
let kSecAttrKeyClassSymmetric: CFString

/*!
	 @enum kSecAttrKeyType Value Constants
	 @discussion Predefined item attribute constants used to get or set values
	 in a dictionary. The kSecAttrKeyType constant is the key
	 and its value is one of the constants defined here.
	 @constant kSecAttrKeyTypeRSA
	 @constant kSecAttrKeyTypeDSA
	 @constant kSecAttrKeyTypeAES
	 @constant kSecAttrKeyType3DES
	 @constant kSecAttrKeyTypeRC4
	 @constant kSecAttrKeyTypeRC2
	 @constant kSecAttrKeyTypeCAST
     @constant kSecAttrKeyTypeECDSA (deprecated; use kSecAttrKeyTypeEC instead.)
     @constant kSecAttrKeyTypeEC
*/
@available(OSX 10.7, *)
let kSecAttrKeyTypeRSA: CFString
@available(OSX 10.7, *)
let kSecAttrKeyTypeDSA: CFString
@available(OSX 10.7, *)
let kSecAttrKeyTypeAES: CFString
@available(OSX 10.7, *)
let kSecAttrKeyTypeDES: CFString
@available(OSX 10.7, *)
let kSecAttrKeyType3DES: CFString
@available(OSX 10.7, *)
let kSecAttrKeyTypeRC4: CFString
@available(OSX 10.7, *)
let kSecAttrKeyTypeRC2: CFString
@available(OSX 10.7, *)
let kSecAttrKeyTypeCAST: CFString
@available(OSX 10.7, *)
let kSecAttrKeyTypeECDSA: CFString
@available(OSX 10.9, *)
let kSecAttrKeyTypeEC: CFString

/*!
	 @enum kSecAttrPRF Value Constants
	 @discussion Predefined item attribute constants used to specify the PRF
     to use with SecKeyDeriveFromPassword.
	 @constant kSecAttrPRFHmacAlgSHA1
     @constant kSecAttrPRFHmacAlgSHA224
     @constant kSecAttrPRFHmacAlgSHA256
     @constant kSecAttrPRFHmacAlgSHA384
     @constant kSecAttrPRFHmacAlgSHA512
*/
@available(OSX 10.7, *)
let kSecAttrPRFHmacAlgSHA1: CFString
@available(OSX 10.7, *)
let kSecAttrPRFHmacAlgSHA224: CFString
@available(OSX 10.7, *)
let kSecAttrPRFHmacAlgSHA256: CFString
@available(OSX 10.7, *)
let kSecAttrPRFHmacAlgSHA384: CFString
@available(OSX 10.7, *)
let kSecAttrPRFHmacAlgSHA512: CFString

/*!
	 @enum Search Constants
	 @discussion Predefined search constants used to set values in a query
	 dictionary. You can specify a combination of search attributes and
	 item attributes when looking for matching items with the
	 SecItemCopyMatching function.
	 @constant kSecMatchPolicy Specifies a dictionary key whose value is a
	 SecPolicyRef. If provided, returned certificates or identities must
	 verify with this policy.
	 @constant kSecMatchItemList Specifies a dictionary key whose value is a
	 CFArray of SecKeychainItemRef items. If provided, returned items will be
	 limited to the subset which are contained in this list.
	 @constant kSecMatchSearchList Specifies a dictionary key whose value is a
	 CFArray of SecKeychainRef items. If provided, the search will be limited
	 to the keychains contained in this list.
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
	 @constant kSecMatchSubjectStartsWith Specifies a dictionary key whose value
	 is a CFStringRef. If provided, returned certificates or identities
	 will be limited to those with subject names that start with this string.
	 @constant kSecMatchSubjectEndsWith Specifies a dictionary key whose value
	 is a CFStringRef. If provided, returned certificates or identities
	 will be limited to those with subject names that end with this string.
	 @constant kSecMatchSubjectWholeString Specifies a dictionary key whose
	 value is a CFStringRef. If provided, returned certificates or identities
	 will be limited to those matching this string exactly in the subject.
	 @constant kSecMatchCaseInsensitive Specifies a dictionary key whose value
	 is a CFBooleanRef. If this value is kCFBooleanFalse, or is not
	 provided, then case-sensitive string matching is performed.
	 @constant kSecMatchDiacriticInsensitive Specifies a dictionary key whose
	 value is a CFBooleanRef. If this value is kCFBooleanFalse, or is not
	 provided, then diacritic-sensitive string matching is performed.
	 @constant kSecMatchWidthInsensitive Specifies a dictionary key whose
	 value is a CFBooleanRef. If this value is kCFBooleanFalse, or is not
	 provided, then string matching is width-sensitive (e.g. 'a' != 0xFF41).
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
@available(OSX 10.6, *)
let kSecMatchPolicy: CFString
@available(OSX 10.6, *)
let kSecMatchItemList: CFString
@available(OSX 10.6, *)
let kSecMatchSearchList: CFString
@available(OSX 10.6, *)
let kSecMatchIssuers: CFString
@available(OSX 10.6, *)
let kSecMatchEmailAddressIfPresent: CFString
@available(OSX 10.6, *)
let kSecMatchSubjectContains: CFString
@available(OSX 10.7, *)
let kSecMatchSubjectStartsWith: CFString
@available(OSX 10.7, *)
let kSecMatchSubjectEndsWith: CFString
@available(OSX 10.7, *)
let kSecMatchSubjectWholeString: CFString
@available(OSX 10.6, *)
let kSecMatchCaseInsensitive: CFString
@available(OSX 10.7, *)
let kSecMatchDiacriticInsensitive: CFString
@available(OSX 10.7, *)
let kSecMatchWidthInsensitive: CFString
@available(OSX 10.6, *)
let kSecMatchTrustedOnly: CFString
@available(OSX 10.6, *)
let kSecMatchValidOnDate: CFString
@available(OSX 10.6, *)
let kSecMatchLimit: CFString
@available(OSX 10.6, *)
let kSecMatchLimitOne: CFString
@available(OSX 10.6, *)
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
	 (non-encrypted) attributes of an item (in a CFDictionaryRef) should be
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
@available(OSX 10.6, *)
let kSecReturnData: CFString
@available(OSX 10.6, *)
let kSecReturnAttributes: CFString
@available(OSX 10.6, *)
let kSecReturnRef: CFString
@available(OSX 10.6, *)
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
@available(OSX 10.6, *)
let kSecValueData: CFString
@available(OSX 10.6, *)
let kSecValueRef: CFString
@available(OSX 10.6, *)
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
	 @constant kSecUseKeychain Specifies a dictionary key whose value is a
	 keychain reference. You use this key to specify a value of type
	 SecKeychainRef to which SecItemAdd will add the provided item(s).
	 @constant kSecUseOperationPrompt Specifies a dictionary key whose value
	 is a CFStringRef that represents a user-visible string describing
	 the operation for which the application is attempting to authenticate.
	 The application is responsible for the text localization.
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
@available(OSX 10.6, *)
let kSecUseItemList: CFString
@available(OSX 10.7, *)
let kSecUseKeychain: CFString
@available(OSX 10.10, *)
let kSecUseOperationPrompt: CFString
@available(OSX 10.11, *)
let kSecUseAuthenticationUI: CFString
@available(OSX 10.11, *)
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
@available(OSX 10.11, *)
let kSecUseAuthenticationUIAllow: CFString
@available(OSX 10.11, *)
let kSecUseAuthenticationUIFail: CFString
@available(OSX 10.11, *)
let kSecUseAuthenticationUISkip: CFString

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

	 By default, this function returns only the first match found. To obtain
	 more than one matching item at a time, specify kSecMatchLimit with a value
	 greater than 1. The result will be a CFArrayRef containing up to that
	 number of matching items; the items' types are described above.

	 To filter a provided list of items down to those matching the query,
	 specify a kSecMatchItemList whose value is a CFArray of SecKeychainItemRef,
	 SecKeyRef, SecCertificateRef, or SecIdentityRef items. The objects in the
	 provided array must be of the same type.

	 To convert from persistent item references to normal item references,
	 specify a kSecMatchItemList whose value is a CFArray containing one or
	 more CFDataRef elements (the persistent reference), and a kSecReturnRef
	 whose value is kCFBooleanTrue. The objects in the provided array must be
	 of the same type.
*/
@available(OSX 10.6, *)
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
	 This is currently only supported for non password items.  To add an item
	 to a particular keychain, supply kSecUseKeychain with a SecKeychainRef as
	 its value.

	 Result types are specified as follows:

	 * To obtain the data of the added item (CFDataRef), specify
	 kSecReturnData with a value of kCFBooleanTrue.
	 * To obtain all the attributes of the added item (CFDictionaryRef),
	 specify kSecReturnAttributes with a value of kCFBooleanTrue.
	 * To obtain a reference to the added item (SecKeychainItemRef, SecKeyRef,
	 SecCertificateRef, or SecIdentityRef), specify kSecReturnRef with a
	 value of kCFBooleanTrue. This is the default behavior if a result
	 type is not explicitly specified.
	 * To obtain a persistent reference to the added item (CFDataRef), specify
	 kSecReturnPersistentRef with a value of kCFBooleanTrue. Note that
	 unlike normal references, a persistent reference may be stored on disk
	 or passed between processes.
	 * If more than one of these result types is specified, the result is
	 returned as a CFDictionaryRef containing all the requested data.
*/
@available(OSX 10.6, *)
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
@available(OSX 10.6, *)
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
	 kSecMatchItemList with a reference returned by using the kSecReturnRef
	 key in a previous call to SecItemCopyMatching or SecItemAdd.
	 * To delete an item identified by a persistent reference, specify
	 kSecMatchItemList with a persistent reference returned by using the
	 kSecReturnPersistentRef key to SecItemCopyMatching or SecItemAdd.
	 * If more than one of these result keys is specified, the behavior is
	 undefined.
*/
@available(OSX 10.6, *)
func SecItemDelete(query: CFDictionary) -> OSStatus
var kSecKeyKeyClass: Int32 { get }
var kSecKeyPrintName: Int32 { get }
var kSecKeyAlias: Int32 { get }
var kSecKeyPermanent: Int32 { get }
var kSecKeyPrivate: Int32 { get }
var kSecKeyModifiable: Int32 { get }
var kSecKeyLabel: Int32 { get }
var kSecKeyApplicationTag: Int32 { get }
var kSecKeyKeyCreator: Int32 { get }
var kSecKeyKeyType: Int32 { get }
var kSecKeyKeySizeInBits: Int32 { get }
var kSecKeyEffectiveKeySize: Int32 { get }
var kSecKeyStartDate: Int32 { get }
var kSecKeyEndDate: Int32 { get }
var kSecKeySensitive: Int32 { get }
var kSecKeyAlwaysSensitive: Int32 { get }
var kSecKeyExtractable: Int32 { get }
var kSecKeyNeverExtractable: Int32 { get }
var kSecKeyEncrypt: Int32 { get }
var kSecKeyDecrypt: Int32 { get }
var kSecKeyDerive: Int32 { get }
var kSecKeySign: Int32 { get }
var kSecKeyVerify: Int32 { get }
var kSecKeySignRecover: Int32 { get }
var kSecKeyVerifyRecover: Int32 { get }
var kSecKeyWrap: Int32 { get }
var kSecKeyUnwrap: Int32 { get }

/*!
    @enum SecCredentialType
    @abstract Determines the type of credential returned by SecKeyGetCredentials.
    @constant kSecCredentialTypeWithUI Operations with this key are allowed to present UI if required.
    @constant kSecCredentialTypeNoUI Operations with this key are not allowed to present UI, and will fail if UI is required.
    @constant kSecCredentialTypeDefault The default setting for determining whether to present UI is used. This setting can be changed with a call to SecKeychainSetUserInteractionAllowed.
*/
enum SecCredentialType : uint32 {
  init?(rawValue: uint32)
  var rawValue: uint32 { get }
  case Default
  case WithUI
  case NoUI
}

/*!
    @typedef SecPadding
    @abstract Supported padding types.
*/
enum SecPadding : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case PKCS1
  case SigRaw
  case PKCS1MD2
  case PKCS1MD5
  case PKCS1SHA1
}

/*!
    @typedef SecKeySizes
    @abstract Supported key lengths.
*/
enum SecKeySizes : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case SecDefaultKeySize
  case Sec3DES192
  case SecAES128
  static var SecAES192: SecKeySizes { get }
  case SecAES256
  static var Secp192r1: SecKeySizes { get }
  static var Secp256r1: SecKeySizes { get }
  case Secp384r1
  case Secp521r1
  case SecRSAMin
  case SecRSAMax
}

/*!
	@enum Key Parameter Constants
	@discussion Predefined key constants used to get or set values in a dictionary.
	These are used to provide explicit parameters to key generation functions
	when non-default values are desired. See the description of the
	SecKeyGeneratePair API for usage information.
	@constant kSecPrivateKeyAttrs The value for this key is a CFDictionaryRef
	 containing attributes specific for the private key to be generated.
	@constant kSecPublicKeyAttrs The value for this key is a CFDictionaryRef
	 containing attributes specific for the public key to be generated.
*/
@available(OSX 10.8, *)
let kSecPrivateKeyAttrs: CFString
@available(OSX 10.8, *)
let kSecPublicKeyAttrs: CFString

/*!
	@function SecKeyGetTypeID
	@abstract Returns the type identifier of SecKey instances.
	@result The CFTypeID of SecKey instances.
*/
@available(OSX 10.3, *)
func SecKeyGetTypeID() -> CFTypeID

/*!
    @function SecKeyGetBlockSize
    @abstract Decrypt a block of ciphertext.
    @param key The key for which the block length is requested.
    @result The block length of the key in bytes.
    @discussion If for example key is an RSA key the value returned by
    this function is the size of the modulus.
 */
@available(OSX 10.6, *)
func SecKeyGetBlockSize(key: SecKey) -> Int

/*!
 @function	SecKeyGenerateSymmetric
 @abstract	Generates a random symmetric key with the specified length
 and algorithm type.

 @param parameters A dictionary containing one or more key-value pairs.
 See the discussion sections below for a complete overview of options.
 @param error An optional pointer to a CFErrorRef. This value is set
 if an error occurred. If not NULL, the caller is responsible for
 releasing the CFErrorRef.
 @result On return, a SecKeyRef reference to the symmetric key, or
 NULL if the key could not be created.

 @discussion In order to generate a symmetric key, the parameters dictionary
 must at least contain the following keys:

 * kSecAttrKeyType with a value of kSecAttrKeyTypeAES or any other
 kSecAttrKeyType defined in SecItem.h
 * kSecAttrKeySizeInBits with a value being a CFNumberRef containing
 the requested key size in bits.  Example sizes for AES keys are:
 128, 192, 256, 512.

 To store the generated symmetric key in a keychain, set these keys:
 * kSecUseKeychain (value is a SecKeychainRef)
 * kSecAttrLabel (a user-visible label whose value is a CFStringRef,
 e.g. "My App's Encryption Key")
 * kSecAttrApplicationLabel (a label defined by your application, whose
 value is a CFStringRef and which can be used to find this key in a
 subsequent call to SecItemCopyMatching, e.g. "ID-1234567890-9876-0151")

 To specify the generated key's access control settings, set this key:
 * kSecAttrAccess (value is a SecAccessRef)

 The keys below may be optionally set in the parameters dictionary
 (with a CFBooleanRef value) to override the default usage values:

 * kSecAttrCanEncrypt (defaults to true if not explicitly specified)
 * kSecAttrCanDecrypt (defaults to true if not explicitly specified)
 * kSecAttrCanWrap (defaults to true if not explicitly specified)
 * kSecAttrCanUnwrap (defaults to true if not explicitly specified)

*/
@available(OSX 10.7, *)
func SecKeyGenerateSymmetric(parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecKey?

/*!
 @function SecKeyCreateFromData
 @abstract Creates a symmetric key with the given data and sets the
 algorithm type specified.

 @param parameters A dictionary containing one or more key-value pairs.
 See the discussion sections below for a complete overview of options.
 @result On return, a SecKeyRef reference to the symmetric key.

 @discussion In order to generate a symmetric key the parameters dictionary must
 at least contain the following keys:

 * kSecAttrKeyType with a value of kSecAttrKeyTypeAES or any other
 kSecAttrKeyType defined in SecItem.h

 The keys below may be optionally set in the parameters dictionary
 (with a CFBooleanRef value) to override the default usage values:

 * kSecAttrCanEncrypt (defaults to true if not explicitly specified)
 * kSecAttrCanDecrypt (defaults to true if not explicitly specified)
 * kSecAttrCanWrap (defaults to true if not explicitly specified)
 * kSecAttrCanUnwrap (defaults to true if not explicitly specified)

*/
@available(OSX 10.7, *)
func SecKeyCreateFromData(parameters: CFDictionary, _ keyData: CFData, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecKey?

/*!
 @function SecKeyGeneratePair
 @abstract Generate a private/public keypair.
 @param parameters A dictionary containing one or more key-value pairs.
 @result A result code. See "Security Error Codes" (SecBase.h). On success,
 the result code will be errSecSuccess, and the output parameters will
 contain the public SecKeyRef and private SecKeyRef. It is the caller's
 responsibility to CFRelease these key references when finished with them.

 @discussion In order to generate a keypair the parameters dictionary must
 at least contain the following keys:

 * kSecAttrKeyType with a value of kSecAttrKeyTypeRSA or any other
 kSecAttrKeyType defined in SecItem.h
 * kSecAttrKeySizeInBits with a value being a CFNumberRef containing
 the requested key size in bits.  Example sizes for RSA keys are:
 512, 768, 1024, 2048.

 The values below may be set either in the top-level dictionary or in a
 dictionary that is the value of the kSecPrivateKeyAttrs or
 kSecPublicKeyAttrs key in the top-level dictionary.  Setting these
 attributes explicitly will override the defaults below.  See SecItem.h
 for detailed information on these attributes including the types of
 the values.

 * kSecAttrLabel default NULL
 * kSecUseKeychain default NULL, which specifies the default keychain
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
@available(OSX 10.7, *)
func SecKeyGeneratePair(parameters: CFDictionary, _ publicKey: UnsafeMutablePointer<SecKey?>, _ privateKey: UnsafeMutablePointer<SecKey?>) -> OSStatus
typealias SecKeyGeneratePairBlock = (SecKey, SecKey, CFError) -> Void

/*!
 @function SecKeyGeneratePairAsync
 @abstract Generate a private/public keypair returning the values in a callback.
 @param parameters A dictionary containing one or more key-value pairs.
 @param deliveryQueue A dispatch queue to be used to deliver the results.
 @param result A callback function to result when the operation has completed.
 @result On success the function returns NULL.

 @discussion In order to generate a keypair the parameters dictionary must
 at least contain the following keys:

 * kSecAttrKeyType with a value being kSecAttrKeyTypeRSA or any other
 kSecAttrKeyType defined in SecItem.h
 * kSecAttrKeySizeInBits with a value being a CFNumberRef or CFStringRef
 containing the requested key size in bits.  Example sizes for RSA
 keys are: 512, 768, 1024, 2048.

 Setting the following attributes explicitly will override the defaults below.
 See SecItem.h for detailed information on these attributes including the types
 of the values.

 * kSecAttrLabel default NULL
 * kSecAttrIsPermanent if this key is present and has a Boolean
 value of true, the key or key pair will be added to the default
 keychain.
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
@available(OSX 10.7, *)
func SecKeyGeneratePairAsync(parameters: CFDictionary, _ deliveryQueue: dispatch_queue_t, _ result: SecKeyGeneratePairBlock)

/*!
 @function SecKeyDeriveFromPassword
 @abstract Derives a symmetric key from a password.

 @param password The password from which the keyis to be derived.
 @param parameters A dictionary containing one or more key-value pairs.
 @param error If the call fails this will contain the error code.

 @discussion In order to derive a key the parameters dictionary must contain at least contain the following keys:
 * kSecAttrSalt	- a CFData for the salt value for mixing in the pseudo-random rounds.
 * kSecAttrPRF - the algorithm to use for the pseudo-random-function.
   If 0, this defaults to kSecAttrPRFHmacAlgSHA1. Possible values are:

 * kSecAttrPRFHmacAlgSHA1
 * kSecAttrPRFHmacAlgSHA224
 * kSecAttrPRFHmacAlgSHA256
 * kSecAttrPRFHmacAlgSHA384
 * kSecAttrPRFHmacAlgSHA512

 * kSecAttrRounds - the number of rounds to call the pseudo random function.
   If 0, a count will be computed to average 1/10 of a second.
 * kSecAttrKeySizeInBits with a value being a CFNumberRef
   containing the requested key size in bits.  Example sizes for RSA keys are:
   512, 768, 1024, 2048.

 @result On success a SecKeyRef is returned.  On failure this result is NULL and the
 error parameter contains the reason.

*/
@available(OSX 10.7, *)
func SecKeyDeriveFromPassword(password: CFString, _ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecKey?

/*!
 @function SecKeyWrapSymmetric
 @abstract Wraps a symmetric key with a symmetric key.

 @param keyToWrap The key which is to be wrapped.
 @param wrappingKey The key wrapping key.
 @param parameters The parameter list to use for wrapping the key.
 @param error If the call fails this will contain the error code.

 @result On success a CFDataRef is returned.  On failure this result is NULL and the
 error parameter contains the reason.

 @discussion In order to wrap a key the parameters dictionary may contain the following key:
 * kSecSalt	- a CFData for the salt value for the encrypt.

*/
@available(OSX 10.7, *)
func SecKeyWrapSymmetric(keyToWrap: SecKey, _ wrappingKey: SecKey, _ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFData?

/*!
 @function SecKeyUnwrapSymmetric
 @abstract Unwrap a wrapped symmetric key.

 @param keyToUnwrap The wrapped key to unwrap.
 @param unwrappingKey The key unwrapping key.
 @param parameters The parameter list to use for unwrapping the key.
 @param error If the call fails this will contain the error code.

 @result On success a SecKeyRef is returned.  On failure this result is NULL and the
 error parameter contains the reason.

 @discussion In order to unwrap a key the parameters dictionary may contain the following key:
 * kSecSalt	- a CFData for the salt value for the decrypt.

*/
@available(OSX 10.7, *)
func SecKeyUnwrapSymmetric(keyToUnwrap: UnsafeMutablePointer<Unmanaged<CFData>?>, _ unwrappingKey: SecKey, _ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecKey?
var kSecUnlockStateStatus: UInt32 { get }
var kSecReadPermStatus: UInt32 { get }
var kSecWritePermStatus: UInt32 { get }
var SEC_KEYCHAIN_SETTINGS_VERS1: Int32 { get }

/*!
	@typedef SecKeychainSettings
	@abstract Contains keychain settings.
	@field version An unsigned 32-bit integer representing the keychain version.
	@field lockOnSleep A boolean value indicating whether the keychain locks when the system sleeps.
	@field useLockInterval A boolean value indicating whether the keychain automatically locks after a certain period of time.
	@field lockInterval An unsigned 32-bit integer representing the number of seconds before the keychain locks.
*/
struct SecKeychainSettings {
  var version: UInt32
  var lockOnSleep: DarwinBoolean
  var useLockInterval: DarwinBoolean
  var lockInterval: UInt32
  init()
  init(version: UInt32, lockOnSleep: DarwinBoolean, useLockInterval: DarwinBoolean, lockInterval: UInt32)
}
enum SecAuthenticationType : FourCharCode {
  init?(rawValue: FourCharCode)
  var rawValue: FourCharCode { get }
  case NTLM
  case MSN
  case DPA
  case RPA
  case HTTPBasic
  case HTTPDigest
  case HTMLForm
  case Default
  case Any
}

/*!
	@enum ProtocolTypeConstants
	@abstract Defines the protocol type associated with an AppleShare or Internet password.
	@constant kSecProtocolTypeFTP Indicates FTP.
	@constant kSecProtocolTypeFTPAccount Indicates FTP Account (client side), usage deprecated.
	@constant kSecProtocolTypeHTTP Indicates HTTP. 
	@constant kSecProtocolTypeIRC Indicates IRC.
	@constant kSecProtocolTypeNNTP Indicates NNTP.
	@constant kSecProtocolTypePOP3 Indicates POP3.
	@constant kSecProtocolTypeSMTP Indicates SMTP.
	@constant kSecProtocolTypeSOCKS Indicates SOCKS.
	@constant kSecProtocolTypeIMAP Indicates IMAP.
	@constant kSecProtocolTypeLDAP Indicates LDAP.
	@constant kSecProtocolTypeAppleTalk Indicates AFP over AppleTalk.
	@constant kSecProtocolTypeAFP Indicates AFP over TCP.
	@constant kSecProtocolTypeTelnet Indicates Telnet.
	@constant kSecProtocolTypeSSH Indicates SSH.
	@constant kSecProtocolTypeFTPS Indicates FTPS (FTP over TLS/SSL).
	@constant kSecProtocolTypeHTTPS Indicates HTTPS (HTTP over TLS/SSL).
	@constant kSecProtocolTypeHTTPProxy Indicates HTTP proxy.
	@constant kSecProtocolTypeHTTPSProxy Indicates HTTPS proxy.
	@constant kSecProtocolTypeFTPProxy Indicates FTP proxy.
	@constant kSecProtocolTypeSMB Indicates SMB.
	@constant kSecProtocolTypeRTSP Indicates RTSP.
	@constant kSecProtocolTypeRTSPProxy Indicates RTSP proxy.
	@constant kSecProtocolTypeDAAP Indicates DAAP.
	@constant kSecProtocolTypeEPPC Indicates EPPC (Remote Apple Events).
	@constant kSecProtocolTypeIPP Indicates IPP.
	@constant kSecProtocolTypeNNTPS Indicates NNTPS (NNTP over TLS/SSL).
	@constant kSecProtocolTypeLDAPS Indicates LDAPS (LDAP over TLS/SSL).
	@constant kSecProtocolTypeTelnetS Indicates Telnet over TLS/SSL.
	@constant kSecProtocolTypeIMAPS Indicates IMAPS (IMAP4 over TLS/SSL).
	@constant kSecProtocolTypeIRCS Indicates IRCS (IRC over TLS/SSL).
	@constant kSecProtocolTypePOP3S Indicates POP3S (POP3 over TLS/SSL).
	@constant kSecProtocolTypeCVSpserver Indicates CVS pserver.
	@constant kSecProtocolTypeSVN Indicates Subversion.
	@constant kSecProtocolTypeAny Indicates that any protocol is acceptable. When performing a search, use this constant to avoid constraining your search results to a particular protocol.
*/
enum SecProtocolType : FourCharCode {
  init?(rawValue: FourCharCode)
  var rawValue: FourCharCode { get }
  case FTP
  case FTPAccount
  case HTTP
  case IRC
  case NNTP
  case POP3
  case SMTP
  case SOCKS
  case IMAP
  case LDAP
  case AppleTalk
  case AFP
  case Telnet
  case SSH
  case FTPS
  case HTTPS
  case HTTPProxy
  case HTTPSProxy
  case FTPProxy
  case CIFS
  case SMB
  case RTSP
  case RTSPProxy
  case DAAP
  case EPPC
  case IPP
  case NNTPS
  case LDAPS
  case TelnetS
  case IMAPS
  case IRCS
  case POP3S
  case CVSpserver
  case SVN
  case Any
}

/*!
	@enum KeychainEventConstants
	@abstract Defines the keychain-related event.
	@constant kSecLockEvent Indicates a keychain was locked.
	@constant kSecUnlockEvent Indicates a keychain was unlocked.
	@constant kSecAddEvent Indicates an item was added to a keychain.
	@constant kSecDeleteEvent Indicates an item was deleted from a keychain.
	@constant kSecUpdateEvent Indicates a keychain item was updated.
	@constant kSecPasswordChangedEvent Indicates the keychain password was changed.
	@constant kSecDefaultChangedEvent Indicates that a different keychain was specified as the default.
	@constant kSecDataAccessEvent Indicates a process has accessed a keychain item's data.
	@constant kSecKeychainListChangedEvent Indicates the list of keychains has changed.
	@constant kSecTrustSettingsChangedEvent Indicates Trust Settings changed.
*/
enum SecKeychainEvent : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case LockEvent
  case UnlockEvent
  case AddEvent
  case DeleteEvent
  case UpdateEvent
  case PasswordChangedEvent
  case DefaultChangedEvent
  case DataAccessEvent
  case KeychainListChangedEvent
  case TrustSettingsChangedEvent
}

/*!
	@enum KeychainEventConstants
	@abstract Defines keychain event constants
	@constant kSecLockEventMask If the bit specified by this mask is set, your callback function will be invoked when a keychain is locked.
	@constant kSecUnlockEventMask If the bit specified by this mask is set, your callback function will be invoked when a keychain is unlocked.
	@constant kSecAddEventMask If the bit specified by this mask is set, your callback function will be invoked when an item is added to a keychain.
	@constant kSecDeleteEventMask If the bit specified by this mask is set, your callback function will be invoked when an item is deleted from a keychain.
	@constant kSecUpdateEventMask If the bit specified by this mask is set, your callback function will be invoked when a keychain item is updated.
	@constant kSecPasswordChangedEventMask If the bit specified by this mask is set, your callback function will be invoked when the keychain password is changed.
	@constant kSecDefaultChangedEventMask If the bit specified by this mask is set, your callback function will be invoked when a different keychain is specified as the default.
	@constant kSecDataAccessEventMask If the bit specified by this mask is set, your callback function will be invoked when a process accesses a keychain item's data.
	@constant kSecTrustSettingsChangedEvent If the bit specified by this mask is set, your callback function will be invoked when there is a change in certificate Trust Settings. 
	@constant kSecEveryEventMask If all the bits are set, your callback function will be invoked whenever any event occurs.
*/
struct SecKeychainEventMask : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var LockEventMask: SecKeychainEventMask { get }
  static var UnlockEventMask: SecKeychainEventMask { get }
  static var AddEventMask: SecKeychainEventMask { get }
  static var DeleteEventMask: SecKeychainEventMask { get }
  static var UpdateEventMask: SecKeychainEventMask { get }
  static var PasswordChangedEventMask: SecKeychainEventMask { get }
  static var DefaultChangedEventMask: SecKeychainEventMask { get }
  static var DataAccessEventMask: SecKeychainEventMask { get }
  static var KeychainListChangedMask: SecKeychainEventMask { get }
  static var TrustSettingsChangedEventMask: SecKeychainEventMask { get }
  static var EveryEventMask: SecKeychainEventMask { get }
}

/*!
	@typedef SecKeychainCallbackInfo
	@abstract Contains information about a keychain event. 
	@field version The version of this structure.
	@field item A reference to the keychain item associated with this event, if any. Note that some events do not involve a particular keychain item.
	@field keychain A reference to the keychain in which the event occurred.
	@field pid The id of the process that generated this event.
	@discussion The SecKeychainCallbackInfo type represents a structure that contains information about the keychain event for which your application is being notified. For information on how to write a keychain event callback function, see SecKeychainCallback. 
*/
struct SecKeychainCallbackInfo {
  var version: UInt32
  var item: Unmanaged<SecKeychainItem>
  var keychain: Unmanaged<SecKeychain>
  var pid: pid_t
}

/*!
	@function SecKeychainGetTypeID
	@abstract Returns the type identifier of SecKeychain instances.
	@result The CFTypeID of SecKeychain instances.
*/
func SecKeychainGetTypeID() -> CFTypeID

/*!
	@function SecKeychainGetVersion
	@abstract Determines the version of the Keychain Manager installed on the user� system.
	@param returnVers On return, a pointer to the version number of the Keychain Manager installed on the current system.
	@result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecKeychainGetVersion(returnVers: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function SecKeychainOpen
    @abstract Create a SecKeychainRef for a keychain at pathName.  This keychain might
	not currently exist, use SecKeychainGetStatus if you want to confirm the existence
	of this keychain.
	@param pathName The POSIX path to a keychain.
    @param keychain On return, a pointer to the keychain reference. The memory that keychain occupies must be released by calling CFRelease when finished with it.
	@result A result code.  See "Security Error Codes" (SecBase.h). In addition, errSecParam (-50) may be returned if the keychain parameter is invalid (NULL).
*/
func SecKeychainOpen(pathName: UnsafePointer<Int8>, _ keychain: UnsafeMutablePointer<SecKeychain?>) -> OSStatus

/*!
	@function SecKeychainCreate
    @abstract Creates a new keychain.
    @param pathName The POSIX path to a keychain file.
    @param passwordLength An unsigned 32-bit integer representing the length of the password buffer.
    @param password A pointer to the buffer containing the password. The password must be in canonical UTF8 encoding.
	@param promptUser A boolean representing whether to display a password dialog to the user.
	@param initialAccess An access reference.
    @param keychain On return, a pointer to a keychain reference. The memory that keychain occupies must be released by calling CFRelease when finished with it.
	@result A result code.  See "Security Error Codes" (SecBase.h). In addition, errSecParam (-50) may be returned if the keychain parameter is invalid (NULL).
*/
func SecKeychainCreate(pathName: UnsafePointer<Int8>, _ passwordLength: UInt32, _ password: UnsafePointer<Void>, _ promptUser: Bool, _ initialAccess: SecAccess?, _ keychain: UnsafeMutablePointer<SecKeychain?>) -> OSStatus

/*!
	@function SecKeychainDelete
    @abstract Removes one or more keychains from the current keychain searchlist, and deletes the keychain storage (if the keychains are file-based).
    @param keychainOrArray A single keychain reference or a reference to an array of keychains to delete. IMPORTANT: SecKeychainDelete does not dispose the memory occupied by keychain references; use the CFRelease function when you are completely finished with a keychain.
	@result A result code.  See "Security Error Codes" (SecBase.h). In addition, errSecInvalidKeychain (-25295) may be returned if the keychain parameter is invalid (NULL).
*/
func SecKeychainDelete(keychainOrArray: SecKeychain?) -> OSStatus

/*!
	@function SecKeychainSetSettings
	@abstract Changes the settings of a keychain.
    @param keychain A reference to a keychain.
 	@param newSettings A pointer to the new keychain settings.
	@result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecKeychainSetSettings(keychain: SecKeychain?, _ newSettings: UnsafePointer<SecKeychainSettings>) -> OSStatus

/*!
	@function SecKeychainCopySettings
	@abstract Copy the keychain settings.
    @param keychain A reference to the keychain from which to copy its settings.
    @param outSettings  A pointer to a keychain settings structure. Since this structure is versioned, you must preallocate it and fill in the version of the structure.
 @result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecKeychainCopySettings(keychain: SecKeychain?, _ outSettings: UnsafeMutablePointer<SecKeychainSettings>) -> OSStatus

/*!
	@function SecKeychainUnlock
	@abstract Unlocks the specified keychain.
    @param keychain A reference to the keychain to unlock. Pass NULL to specify the default keychain. If you pass NULL and the default keychain is currently locked, the keychain will appear as the default choice. If you pass a locked keychain, SecKeychainUnlock will use the password provided to unlock it. If the default keychain is currently unlocked, SecKeychainUnlock returns errSecSuccess. 
	@param passwordLength An unsigned 32-bit integer representing the length of the password buffer.
	@param password A buffer containing the password for the keychain. Pass NULL if the user password is unknown. In this case, SecKeychainUnlock displays the Unlock Keychain dialog box, and the authentication user interface associated with the keychain about to be unlocked.
	@param usePassword A boolean indicating whether the password parameter is used.  You should pass TRUE if it is used or FALSE if it is ignored.
	@result A result code.  See "Security Error Codes" (SecBase.h).
	@discussion In most cases, your application does not need to call the SecKeychainUnlock function directly, since most Keychain Manager functions that require an unlocked keychain call SecKeychainUnlock automatically. If your application needs to verify that a keychain is unlocked, call the function SecKeychainGetStatus. 
*/
func SecKeychainUnlock(keychain: SecKeychain?, _ passwordLength: UInt32, _ password: UnsafePointer<Void>, _ usePassword: Bool) -> OSStatus

/*!
	@function SecKeychainLock
	@abstract Locks the specified keychain. 
    @param keychain A reference to the keychain to lock.
	@result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecKeychainLock(keychain: SecKeychain?) -> OSStatus

/*!
	@function SecKeychainLockAll
	@abstract Locks all keychains belonging to the current user.
	@result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecKeychainLockAll() -> OSStatus

/*!
	@function SecKeychainCopyDefault
	@abstract Retrieves a reference to the default keychain.
	@param keychain On return, a pointer to the default keychain reference.
	@result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecKeychainCopyDefault(keychain: UnsafeMutablePointer<SecKeychain?>) -> OSStatus

/*!
	@function SecKeychainSetDefault
	@abstract Sets the default keychain. 
	@param keychain A reference to the keychain to set as default.
	@result A result code.  See "Security Error Codes" (SecBase.h). In addition, errSecParam (-50) may be returned if the keychain parameter is invalid (NULL).
*/
func SecKeychainSetDefault(keychain: SecKeychain?) -> OSStatus

/*!
	@function SecKeychainCopySearchList
	@abstract Retrieves a keychain search list.
	@param searchList The returned list of keychains to search. When finished with the array, you must call CFRelease() to release the memory.
	@result A result code.  See "Security Error Codes" (SecBase.h). In addition, errSecParam (-50) may be returned if the keychain list is not specified (NULL).
*/
func SecKeychainCopySearchList(searchList: UnsafeMutablePointer<CFArray?>) -> OSStatus

/*!
	@function SecKeychainSetSearchList
	@abstract Specifies the list of keychains to use in a keychain search list.
	@param searchList The list of keychains to use in a search list when the SecKeychainCopySearchList function is called. An empty array clears the search list.
	@result A result code.  See "Security Error Codes" (SecBase.h). In addition, errSecParam (-50) may be returned if the keychain list is not specified (NULL).
*/
func SecKeychainSetSearchList(searchList: CFArray) -> OSStatus
enum SecPreferencesDomain : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case User
  case System
  case Common
  case Dynamic
}
func SecKeychainCopyDomainDefault(domain: SecPreferencesDomain, _ keychain: UnsafeMutablePointer<SecKeychain?>) -> OSStatus
func SecKeychainSetDomainDefault(domain: SecPreferencesDomain, _ keychain: SecKeychain?) -> OSStatus
func SecKeychainCopyDomainSearchList(domain: SecPreferencesDomain, _ searchList: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecKeychainSetDomainSearchList(domain: SecPreferencesDomain, _ searchList: CFArray) -> OSStatus
func SecKeychainSetPreferenceDomain(domain: SecPreferencesDomain) -> OSStatus
func SecKeychainGetPreferenceDomain(domain: UnsafeMutablePointer<SecPreferencesDomain>) -> OSStatus

/*!
	@function SecKeychainGetStatus
	@abstract Retrieves status information for the specified keychain.
	@param keychain A keychain reference. Pass NULL to specify the default keychain.
	@param keychainStatus On return, a pointer to the status of the specified keychain.  See KeychainStatus for valid status constants.
    @result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecKeychainGetStatus(keychain: SecKeychain?, _ keychainStatus: UnsafeMutablePointer<SecKeychainStatus>) -> OSStatus

/*!
	@function SecKeychainGetPath
	@abstract Get the path of the specified keychain.
    @param keychain A reference to a keychain.
    @param ioPathLength On input, a pointer to the size or the buffer pointed to by pathName. On return, the size of the buffer without the zero termination.
	@param pathName On return, the POSIX path to the keychain.
    @result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecKeychainGetPath(keychain: SecKeychain?, _ ioPathLength: UnsafeMutablePointer<UInt32>, _ pathName: UnsafeMutablePointer<Int8>) -> OSStatus

/*!
	@function SecKeychainAttributeInfoForItemID
	@abstract Obtains tags for all possible attributes for a given item class.
    @param keychain A keychain reference.
	@param itemID The relation identifier of the item tags (an itemID is a CSSM_DB_RECORDTYPE defined in cssmapple.h).
	@param info On return, a pointer to the keychain attribute information. User should call the SecKeychainFreeAttributeInfo function to release the structure when done with it. 
    @result A result code.  See "Security Error Codes" (SecBase.h). In addition, errSecParam (-50) may be returned if not enough valid parameters were supplied (NULL).
	@discussion Warning, this call returns more attributes than are support by the old style Keychain API and passing them into older calls will yield an invalid attribute error. The recommended call to retrieve the attribute values is the SecKeychainItemCopyAttributesAndData function.
*/
func SecKeychainAttributeInfoForItemID(keychain: SecKeychain?, _ itemID: UInt32, _ info: UnsafeMutablePointer<UnsafeMutablePointer<SecKeychainAttributeInfo>>) -> OSStatus

/*!
	@function SecKeychainFreeAttributeInfo
	@abstract Releases the memory acquired by calling the SecKeychainAttributeInfoForItemID function.
	@param info A pointer to the keychain attribute information to release.
    @result A result code.  See "Security Error Codes" (SecBase.h). In addition, errSecParam (-50) may be returned if not enough valid parameters were supplied (NULL).
*/
func SecKeychainFreeAttributeInfo(info: UnsafeMutablePointer<SecKeychainAttributeInfo>) -> OSStatus

/*!
	@typedef SecKeychainCallback
	@abstract Defines a pointer to a customized callback function.  You supply the customized callback function to do a callback tailored to your application's needs.
	@param keychainEvent The keychain event that your application wishes to be notified of. See SecKeychainEvent for a description of possible values. The type of event that can trigger your callback depends on the bit mask you passed in the eventMask parameter of the function SecKeychainAddCallback. For more information, see the discussion. 
	@param info A pointer to a structure of type SecKeychainCallbackInfo. On return, the structure contains information about the keychain event that occurred. The Keychain Manager passes this information to your callback function via the info parameter. 
	@param context A pointer to application-defined storage that your application previously passed to the function SecKeychainAddCallback. You can use this value to perform operations like track which instance of a function is operating.
	@result A result code.  See "Security Error Codes" (SecBase.h).
	@discussion If you name your function MyKeychainEventCallback, you would declare it like this:
	OSStatus MyKeychainEventCallback (
		SecKeychainEvent keychainEvent, 
		SecKeychainCallbackInfo *info, 
		void *context);

	To add your callback function, use the SecKeychainAddCallback function.  To remove your callback function, use the SecKeychainRemoveCallback function.
*/
typealias SecKeychainCallback = @convention(c) (SecKeychainEvent, UnsafeMutablePointer<SecKeychainCallbackInfo>, UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function SecKeychainAddCallback
	@abstract Registers your keychain event callback function
	@param callbackFunction A pointer to your keychain event callback function, described in SecKeychainCallback. You indicate the type of keychain events you want to receive by passing a bit mask of the desired events in the eventMask parameter.
	@param eventMask A bit mask indicating the keychain events that your application wishes to be notified of. See SecKeychainEventMask for a description of this bit mask. The Keychain Manager tests this mask to determine the keychain events that you wish to receive, and passes these events in the keychainEvent parameter of your callback function. See SecKeychainEvent for a description of these events.
	@param userContext A pointer to application-defined storage that will be passed to your callback function. Your application can use this to associate any particular call of SecKeychainAddCallback with any particular call of your keychain event callback function.
    @result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecKeychainAddCallback(callbackFunction: SecKeychainCallback, _ eventMask: SecKeychainEventMask, _ userContext: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function SecKeychainRemoveCallback
	@abstract Unregisters your keychain event callback function. Once removed, keychain events won't be sent to the owner of the callback.
	@param callbackFunction The callback function pointer to remove 
	@result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecKeychainRemoveCallback(callbackFunction: SecKeychainCallback) -> OSStatus

/*!
	@function SecKeychainAddInternetPassword
	@abstract Adds an Internet password to the specified keychain.
	@param keychain	A reference to a keychain in which to store an Internet password. Pass NULL to specify the user's default keychain.
	@param serverNameLength The length of the buffer pointed to by serverName.
	@param serverName A pointer to a string containing the server name associated with this password.
	@param securityDomainLength The length of the buffer pointed to by securityDomain.
	@param securityDomain A pointer to a string containing the security domain associated with this password, or NULL if there is no relevant security domain.
	@param accountNameLength The length of the buffer pointed to by accountName.
	@param accountName A pointer to a string containing the account name associated with this password.
	@param pathLength The length of the buffer pointed to by path.
	@param path A pointer to a string containing the path associated with this password, or NULL if there is no relevant path string.
	@param port The TCP/IP port number. If no specific port number is associated with this item, pass 0.
	@param protocol The protocol associated with this password. See SecProtocolType for a description of possible values.
	@param authenticationType The authentication scheme used. See SecAuthenticationType for a description of possible values. Pass the constant kSecAuthenticationTypeDefault to specify the default authentication scheme. 
	@param passwordLength The length of the buffer pointed to by passwordData.
	@param passwordData A pointer to a buffer containing the password data to be stored in the keychain.
	@param itemRef On return, a reference to the new keychain item.
	@result A result code.  See "Security Error Codes" (SecBase.h).
	@discussion The SecKeychainAddInternetPassword function adds a new Internet server password to the specified keychain. Required parameters to identify the password are serverName and accountName (you cannot pass NULL for both parameters). In addition, some protocols may require an optional securityDomain when authentication is requested. SecKeychainAddInternetPassword optionally returns a reference to the newly added item. 
*/
func SecKeychainAddInternetPassword(keychain: SecKeychain?, _ serverNameLength: UInt32, _ serverName: UnsafePointer<Int8>, _ securityDomainLength: UInt32, _ securityDomain: UnsafePointer<Int8>, _ accountNameLength: UInt32, _ accountName: UnsafePointer<Int8>, _ pathLength: UInt32, _ path: UnsafePointer<Int8>, _ port: UInt16, _ protocol: SecProtocolType, _ authenticationType: SecAuthenticationType, _ passwordLength: UInt32, _ passwordData: UnsafePointer<Void>, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus

/*!
	@function SecKeychainFindInternetPassword
	@abstract Finds an Internet password based on the attributes passed.
    @param keychainOrArray A reference to an array of keychains to search, a single keychain, or NULL to search the user's default keychain search list.
	@param serverNameLength The length of the buffer pointed to by serverName.
	@param serverName A pointer to a string containing the server name.
	@param securityDomainLength The length of the buffer pointed to by securityDomain.
	@param securityDomain A pointer to a string containing the security domain. This parameter is optional, as not all protocols will require it.
	@param accountNameLength The length of the buffer pointed to by accountName.
	@param accountName A pointer to a string containing the account name.
	@param pathLength The length of the buffer pointed to by path.
	@param path A pointer to a string containing the path.
	@param port The TCP/IP port number. Pass 0 to ignore the port number.
	@param protocol The protocol associated with this password. See SecProtocolType for a description of possible values.
	@param authenticationType The authentication scheme used. See SecAuthenticationType for a description of possible values. Pass the constant kSecAuthenticationTypeDefault to specify the default authentication scheme. 
	@param passwordLength On return, the length of the buffer pointed to by passwordData.
	@param passwordData On return, a pointer to a data buffer containing the password. Your application must call SecKeychainItemFreeContent(NULL, passwordData) to release this data buffer when it is no longer needed. Pass NULL if you are not interested in retrieving the password data at this time, but simply want to find the item reference.
	@param itemRef On return, a reference to the keychain item which was found.
	@result A result code.  See "Security Error Codes" (SecBase.h).
	@discussion The SecKeychainFindInternetPassword function finds the first Internet password item which matches the attributes you provide. Most attributes are optional; you should pass only as many as you need to narrow the search sufficiently for your application's intended use. SecKeychainFindInternetPassword optionally returns a reference to the found item.
*/
func SecKeychainFindInternetPassword(keychainOrArray: AnyObject?, _ serverNameLength: UInt32, _ serverName: UnsafePointer<Int8>, _ securityDomainLength: UInt32, _ securityDomain: UnsafePointer<Int8>, _ accountNameLength: UInt32, _ accountName: UnsafePointer<Int8>, _ pathLength: UInt32, _ path: UnsafePointer<Int8>, _ port: UInt16, _ protocol: SecProtocolType, _ authenticationType: SecAuthenticationType, _ passwordLength: UnsafeMutablePointer<UInt32>, _ passwordData: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus

/*!
	@function SecKeychainAddGenericPassword
	@abstract Adds a generic password to the specified keychain.
	@param keychain A reference to the keychain in which to store a generic password. Pass NULL to specify the user's default keychain.
	@param serviceNameLength The length of the buffer pointed to by serviceName.
	@param serviceName A pointer to a string containing the service name associated with this password.
	@param accountNameLength The length of the buffer pointed to by accountName.
	@param accountName A pointer to a string containing the account name associated with this password.
	@param passwordLength The length of the buffer pointed to by passwordData.
	@param passwordData A pointer to a buffer containing the password data to be stored in the keychain.
	@param itemRef On return, a reference to the new keychain item.
	@result A result code. See "Security Error Codes" (SecBase.h).
	@discussion The SecKeychainAddGenericPassword function adds a new generic password to the default keychain. Required parameters to identify the password are serviceName and accountName, which are application-defined strings. SecKeychainAddGenericPassword optionally returns a reference to the newly added item. 
*/
func SecKeychainAddGenericPassword(keychain: SecKeychain?, _ serviceNameLength: UInt32, _ serviceName: UnsafePointer<Int8>, _ accountNameLength: UInt32, _ accountName: UnsafePointer<Int8>, _ passwordLength: UInt32, _ passwordData: UnsafePointer<Void>, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus

/*!
	@function SecKeychainFindGenericPassword
	@abstract Find a generic password based on the attributes passed.
    @param keychainOrArray A reference to an array of keychains to search, a single keychain, or NULL to search the user's default keychain search list.
	@param serviceNameLength The length of the buffer pointed to by serviceName.
	@param serviceName A pointer to a string containing the service name.
	@param accountNameLength The length of the buffer pointed to by accountName.
	@param accountName A pointer to a string containing the account name.
	@param passwordLength On return, the length of the buffer pointed to by passwordData.
	@param passwordData On return, a pointer to a data buffer containing the password. Your application must call SecKeychainItemFreeContent(NULL, passwordData) to release this data buffer when it is no longer needed. Pass NULL if you are not interested in retrieving the password data at this time, but simply want to find the item reference.
	@param itemRef On return, a reference to the keychain item which was found.
	@result A result code.  See "Security Error Codes" (SecBase.h).
	@discussion The SecKeychainFindGenericPassword function finds the first generic password item which matches the attributes you provide. Most attributes are optional; you should pass only as many as you need to narrow the search sufficiently for your application's intended use. SecKeychainFindGenericPassword optionally returns a reference to the found item. 
*/
func SecKeychainFindGenericPassword(keychainOrArray: AnyObject?, _ serviceNameLength: UInt32, _ serviceName: UnsafePointer<Int8>, _ accountNameLength: UInt32, _ accountName: UnsafePointer<Int8>, _ passwordLength: UnsafeMutablePointer<UInt32>, _ passwordData: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus

/*!
	@function SecKeychainSetUserInteractionAllowed
	@abstract Turns on or off any optional user interaction
	@param state A boolean representing the state of user interaction.  You should pass TRUE to allow user interaction, and FALSE to disallow user interaction
	@result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecKeychainSetUserInteractionAllowed(state: Bool) -> OSStatus

/*!
	@function SecKeychainGetUserInteractionAllowed
	@abstract Retrieves the current state of user interaction.
	@param state On return, a pointer to the current state of user interaction.  If this is TRUE then user interaction is allowed, if it is FALSE, then user interaction is not allowed.
	@result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecKeychainGetUserInteractionAllowed(state: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*!
	@function SecKeychainCopyAccess
	@abstract Retrieves the access for a keychain. 
	@param keychain A reference to the keychain from which to copy the access.
    @param accessRef On return, a pointer to the access reference.
    @result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecKeychainCopyAccess(keychain: SecKeychain?, _ access: UnsafeMutablePointer<SecAccess?>) -> OSStatus

/*!
	@function SecKeychainSetAccess
	@abstract Sets the access for a keychain.
    @param keychain A reference to the keychain for which to set the access.
    @param accessRef An access reference.
    @result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecKeychainSetAccess(keychain: SecKeychain?, _ access: SecAccess) -> OSStatus

/*!
	@enum ItemClassConstants
	@abstract Specifies a keychain item's class code.
	@constant kSecInternetPasswordItemClass Indicates that the item is an Internet password.
	@constant kSecGenericPasswordItemClass Indicates that the item is a generic password.
	@constant kSecAppleSharePasswordItemClass Indicates that the item is an AppleShare password.
		Note: AppleShare passwords are no longer used by OS X, starting in Leopard (10.5). Use of this item class is deprecated in OS X 10.9 and later; kSecInternetPasswordItemClass should be used instead when storing or looking up passwords for an Apple Filing Protocol (AFP) server.
	@constant kSecCertificateItemClass Indicates that the item is a digital certificate.
	@constant kSecPublicKeyItemClass Indicates that the item is a public key.
	@constant kSecPrivateKeyItemClass Indicates that the item is a private key.
	@constant kSecSymmetricKeyItemClass Indicates that the item is a symmetric key.
	@discussion The SecItemClass enumeration defines constants your application can use to specify the type of the keychain item you wish to create, dispose, add, delete, update, copy, or locate. You can also use these constants with the tag constant SecItemAttr.
*/
enum SecItemClass : FourCharCode {
  init?(rawValue: FourCharCode)
  var rawValue: FourCharCode { get }
  case InternetPasswordItemClass
  case GenericPasswordItemClass
  case CertificateItemClass
  case PublicKeyItemClass
  case PrivateKeyItemClass
  case SymmetricKeyItemClass
}

/*!
	@enum ItemAttributeConstants
	@abstract Specifies keychain item attributes.
	@constant kSecCreationDateItemAttr (read-only) Identifies the creation date attribute. You use this tag to get a value of type string that represents the date the item was created, expressed in Zulu Time format ("YYYYMMDDhhmmSSZ"). This format is identical to CSSM_DB_ATTRIBUTE_FORMAT_TIME_DATE (cssmtype.h). When specifying the creation date as input to a function (e.g. SecKeychainSearchCreateFromAttributes), you may alternatively provide a numeric value of type UInt32 or SInt64, expressed as seconds since 1/1/1904 (DateTimeUtils.h).
	@constant kSecModDateItemAttr (read-only) Identifies the modification date attribute. You use this tag to get a value of type string that represents the last time the item was updated, expressed in Zulu Time format ("YYYYMMDDhhmmSSZ"). This format is identical to CSSM_DB_ATTRIBUTE_FORMAT_TIME_DATE (cssmtype.h). When specifying the modification date as input to a function (e.g. SecKeychainSearchCreateFromAttributes), you may alternatively provide a numeric value of type UInt32 or SInt64, expressed as seconds since 1/1/1904 (DateTimeUtils.h).
	@constant kSecDescriptionItemAttr Identifies the description attribute. You use this tag to set or get a value of type string that represents a user-visible string describing this particular kind of item (e.g. "disk image password").
	@constant kSecCommentItemAttr Identifies the comment attribute. You use this tag to set or get a value of type string that represents a user-editable string containing comments for this item.
	@constant kSecCreatorItemAttr Identifies the creator attribute. You use this tag to set or get a value of type FourCharCode that represents the item's creator.
	@constant kSecTypeItemAttr Identifies the type attribute. You use this tag to set or get a value of type FourCharCode that represents the item's type.
	@constant kSecScriptCodeItemAttr Identifies the script code attribute. You use this tag to set or get a value of type ScriptCode that represents the script code for all strings. (Note: use of this attribute is deprecated; string attributes should always be stored in UTF-8 encoding.)
	@constant kSecLabelItemAttr Identifies the label attribute. You use this tag to set or get a value of type string that represents a user-editable string containing the label for this item.
	@constant kSecInvisibleItemAttr Identifies the invisible attribute. You use this tag to set or get a value of type Boolean that indicates whether the item is invisible (i.e. should not be displayed).
	@constant kSecNegativeItemAttr Identifies the negative attribute. You use this tag to set or get a value of type Boolean that indicates whether there is a valid password associated with this keychain item. This is useful if your application doesn't want a password for some particular service to be stored in the keychain, but prefers that it always be entered by the user. The item (typically invisible and with zero-length data) acts as a placeholder to say "don't use me."
	@constant kSecCustomIconItemAttr Identifies the custom icon attribute. You use this tag to set or get a value of type Boolean that indicates whether the item has an application-specific icon. To do this, you must also set the attribute value identified by the tag kSecTypeItemAttr to a file type for which there is a corresponding icon in the desktop database, and set the attribute value identified by the tag kSecCreatorItemAttr to an appropriate application creator type. If a custom icon corresponding to the item's type and creator can be found in the desktop database, it will be displayed by Keychain Access. Otherwise, default icons are used. (Note: use of this attribute is deprecated; custom icons for keychain items are not supported in Mac OS X.)
	@constant kSecAccountItemAttr Identifies the account attribute. You use this tag to set or get a string that represents the user account. This attribute applies to generic, Internet, and AppleShare password items.
	@constant kSecServiceItemAttr Identifies the service attribute. You use this tag to set or get a string that represents the service associated with this item. This attribute is unique to generic password items.
	@constant kSecGenericItemAttr Identifies the generic attribute. You use this tag to set or get a value of untyped bytes that represents a user-defined attribute.  This attribute is unique to generic password items.
	@constant kSecSecurityDomainItemAttr Identifies the security domain attribute. You use this tag to set or get a value that represents the Internet security domain. This attribute is unique to Internet password items.
	@constant kSecServerItemAttr Identifies the server attribute. You use this tag to set or get a value of type string that represents the Internet server's domain name or IP address. This attribute is unique to Internet password items.
	@constant kSecAuthenticationTypeItemAttr Identifies the authentication type attribute. You use this tag to set or get a value of type SecAuthenticationType that represents the Internet authentication scheme. This attribute is unique to Internet password items.
	@constant kSecPortItemAttr Identifies the port attribute. You use this tag to set or get a value of type UInt32 that represents the Internet port number. This attribute is unique to Internet password items.
	@constant kSecPathItemAttr Identifies the path attribute. You use this tag to set or get a string value that represents the path. This attribute is unique to Internet password items.
	@constant kSecVolumeItemAttr Identifies the volume attribute. You use this tag to set or get a string value that represents the AppleShare volume. This attribute is unique to AppleShare password items. Note: AppleShare passwords are no longer used by OS X as of Leopard (10.5); Internet password items are used instead.
	@constant kSecAddressItemAttr Identifies the address attribute. You use this tag to set or get a string value that represents the AppleTalk zone name, or the IP or domain name that represents the server address. This attribute is unique to AppleShare password items. Note: AppleShare passwords are no longer used by OS X as of Leopard (10.5); Internet password items are used instead.
	@constant kSecSignatureItemAttr Identifies the server signature attribute. You use this tag to set or get a value of type SecAFPServerSignature that represents the server signature block. This attribute is unique to AppleShare password items. Note: AppleShare passwords are no longer used by OS X as of Leopard (10.5); Internet password items are used instead.
	@constant kSecProtocolItemAttr Identifies the protocol attribute. You use this tag to set or get a value of type SecProtocolType that represents the Internet protocol. This attribute applies to AppleShare and Internet password items.
	@constant kSecCertificateType Indicates a CSSM_CERT_TYPE type.
	@constant kSecCertificateEncoding Indicates a CSSM_CERT_ENCODING type.
	@constant kSecCrlType Indicates a CSSM_CRL_TYPE type.
	@constant kSecCrlEncoding Indicates a CSSM_CRL_ENCODING type.
	@constant kSecAlias Indicates an alias.
	@discussion To obtain information about a certificate, use the CDSA Certificate Library (CL) API. To obtain information about a key, use the SecKeyGetCSSMKey function and the CDSA Cryptographic Service Provider (CSP) API.
*/
enum SecItemAttr : FourCharCode {
  init?(rawValue: FourCharCode)
  var rawValue: FourCharCode { get }
  case CreationDateItemAttr
  case ModDateItemAttr
  case DescriptionItemAttr
  case CommentItemAttr
  case CreatorItemAttr
  case TypeItemAttr
  case ScriptCodeItemAttr
  case LabelItemAttr
  case InvisibleItemAttr
  case NegativeItemAttr
  case CustomIconItemAttr
  case AccountItemAttr
  case ServiceItemAttr
  case GenericItemAttr
  case SecurityDomainItemAttr
  case ServerItemAttr
  case AuthenticationTypeItemAttr
  case PortItemAttr
  case PathItemAttr
  case VolumeItemAttr
  case AddressItemAttr
  case SignatureItemAttr
  case ProtocolItemAttr
  case CertificateType
  case CertificateEncoding
  case CrlType
  case CrlEncoding
  case Alias
}

/*!
	@typedef SecAFPServerSignature
	@abstract Represents a 16-byte Apple File Protocol server signature block.
*/
typealias SecAFPServerSignature = (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)

/*!
	@typedef SecPublicKeyHash
	@abstract Represents a 20-byte public key hash.
*/
typealias SecPublicKeyHash = (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)

/*!
	@function SecKeychainItemGetTypeID
	@abstract Returns the type identifier of SecKeychainItem instances.
	@result The CFTypeID of SecKeychainItem instances.
*/
func SecKeychainItemGetTypeID() -> CFTypeID

/*!
	@function SecKeychainItemModifyAttributesAndData
	@abstract Updates an existing keychain item after changing its attributes or data.
	@param itemRef A reference to the keychain item to modify.
	@param attrList The list of attributes to modify, along with their new values. Pass NULL if you don't need to modify any attributes.
	@param length The length of the buffer pointed to by data.
	@param data Pointer to a buffer containing the data to store. Pass NULL if you don't need to modify the data.
    @result A result code. See "Security Error Codes" (SecBase.h).
	@discussion The keychain item is written to the keychain's permanent data store. If the keychain item has not previously been added to a keychain, a call to the SecKeychainItemModifyContent function does nothing and returns errSecSuccess.
*/
func SecKeychainItemModifyAttributesAndData(itemRef: SecKeychainItem, _ attrList: UnsafePointer<SecKeychainAttributeList>, _ length: UInt32, _ data: UnsafePointer<Void>) -> OSStatus

/*!
	@function SecKeychainItemCreateFromContent
	@abstract Creates a new keychain item from the supplied parameters.
	@param itemClass A constant identifying the class of item to create.
	@param attrList The list of attributes of the item to create.
	@param length The length of the buffer pointed to by data.
	@param data A pointer to a buffer containing the data to store.
	@param initialAccess A reference to the access for this keychain item.
    @param keychainRef A reference to the keychain in which to add the item.
	@param itemRef On return, a pointer to a reference to the newly created keychain item (optional). When the item reference is no longer required, call CFRelease to deallocate memory occupied by the item.
    @result A result code. See "Security Error Codes" (SecBase.h). In addition, errSecParam (-50) may be returned if not enough valid parameters are supplied, or errSecAllocate (-108) if there is not enough memory in the current heap zone to create the object.
*/
func SecKeychainItemCreateFromContent(itemClass: SecItemClass, _ attrList: UnsafeMutablePointer<SecKeychainAttributeList>, _ length: UInt32, _ data: UnsafePointer<Void>, _ keychainRef: SecKeychain?, _ initialAccess: SecAccess?, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus

/*!
	@function SecKeychainItemModifyContent
	@abstract Updates an existing keychain item after changing its attributes or data. This call should only be used in conjunction with SecKeychainItemCopyContent().
	@param itemRef A reference to the keychain item to modify.
	@param attrList The list of attributes to modify, along with their new values. Pass NULL if you don't need to modify any attributes.
	@param length The length of the buffer pointed to by data.
	@param data A pointer to a buffer containing the data to store. Pass NULL if you don't need to modify the data.
    @result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecKeychainItemModifyContent(itemRef: SecKeychainItem, _ attrList: UnsafePointer<SecKeychainAttributeList>, _ length: UInt32, _ data: UnsafePointer<Void>) -> OSStatus

/*!
	@function SecKeychainItemCopyContent
	@abstract Copies the data and/or attributes stored in the given keychain item. It is recommended that you use SecKeychainItemCopyAttributesAndData(). You must call SecKeychainItemFreeContent when you no longer need the attributes and data. If you want to modify the attributes returned here, use SecKeychainModifyContent().
	@param itemRef A reference to the keychain item to modify.
	@param itemClass On return, the item's class. Pass NULL if you don't require this information.
	@param attrList On input, the list of attributes to retrieve. On output, the attributes are filled in. Pass NULL if you don't need to retrieve any attributes. You must call SecKeychainItemFreeContent when you no longer need the attributes.
	@param length On return, the length of the buffer pointed to by outData.
	@param outData On return, a pointer to a buffer containing the data in this item. Pass NULL if you don't need to retrieve the data. You must call SecKeychainItemFreeContent when you no longer need the data.
    @result A result code. See "Security Error Codes" (SecBase.h). In addition, errSecParam (-50) may be returned if not enough valid parameters are supplied.
*/
func SecKeychainItemCopyContent(itemRef: SecKeychainItem, _ itemClass: UnsafeMutablePointer<SecItemClass>, _ attrList: UnsafeMutablePointer<SecKeychainAttributeList>, _ length: UnsafeMutablePointer<UInt32>, _ outData: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> OSStatus

/*!
	@function SecKeychainItemFreeContent
	@abstract Releases the memory used by the keychain attribute list and the keychain data retrieved in a previous call to SecKeychainItemCopyContent.
	@param attrList A pointer to the attribute list to release. Pass NULL to ignore this parameter.
    @param data A pointer to the data buffer to release. Pass NULL to ignore this parameter.
*/
func SecKeychainItemFreeContent(attrList: UnsafeMutablePointer<SecKeychainAttributeList>, _ data: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function SecKeychainItemCopyAttributesAndData
	@abstract Copies the data and/or attributes stored in the given keychain item. You must call SecKeychainItemFreeAttributesAndData when you no longer need the attributes and data. If you want to modify the attributes returned here, use SecKeychainModifyAttributesAndData.
	@param itemRef A reference to the keychain item to copy.
	@param info A list of tags and formats of the attributes you wish to retrieve. Pass NULL if you don't need to retrieve any attributes. You can call SecKeychainAttributeInfoForItemID to obtain a list with all possible attribute tags and formats for the item's class.
	@param itemClass On return, the item's class. Pass NULL if you don't require this information.
	@param attrList On return, a pointer to the list of retrieved attributes. Pass NULL if you don't need to retrieve any attributes. You must call SecKeychainItemFreeAttributesAndData when you no longer need this list.
	@param length On return, the length of the buffer pointed to by outData.
	@param outData On return, a pointer to a buffer containing the data in this item. Pass NULL if you don't need to retrieve the data. You must call SecKeychainItemFreeAttributesAndData when you no longer need the data.
    @result A result code. See "Security Error Codes" (SecBase.h). In addition, errSecParam (-50) may be returned if not enough valid parameters are supplied.
*/
func SecKeychainItemCopyAttributesAndData(itemRef: SecKeychainItem, _ info: UnsafeMutablePointer<SecKeychainAttributeInfo>, _ itemClass: UnsafeMutablePointer<SecItemClass>, _ attrList: UnsafeMutablePointer<UnsafeMutablePointer<SecKeychainAttributeList>>, _ length: UnsafeMutablePointer<UInt32>, _ outData: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> OSStatus

/*!
	@function SecKeychainItemFreeAttributesAndData
	@abstract Releases the memory used by the keychain attribute list and the keychain data retrieved in a previous call to SecKeychainItemCopyAttributesAndData.
	@param attrList A pointer to the attribute list to release. Pass NULL to ignore this parameter.
    @param data A pointer to the data buffer to release. Pass NULL to ignore this parameter.
    @result A result code. See "Security Error Codes" (SecBase.h).
*/
func SecKeychainItemFreeAttributesAndData(attrList: UnsafeMutablePointer<SecKeychainAttributeList>, _ data: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function SecKeychainItemDelete
	@abstract Deletes a keychain item from the default keychain's permanent data store.
	@param itemRef A keychain item reference of the item to delete.
    @result A result code. See "Security Error Codes" (SecBase.h).
	@discussion If itemRef has not previously been added to the keychain, SecKeychainItemDelete does nothing and returns errSecSuccess. IMPORTANT: SecKeychainItemDelete does not dispose the memory occupied by the item reference itself; use the CFRelease function when you are completely finished with an item.
*/
func SecKeychainItemDelete(itemRef: SecKeychainItem) -> OSStatus

/*!
	@function SecKeychainItemCopyKeychain
	@abstract Copies an existing keychain reference from a keychain item.
	@param itemRef A keychain item reference.
	@param keychainRef On return, the keychain reference for the specified item. Release this reference by calling the CFRelease function.
    @result A result code. See "Security Error Codes" (SecBase.h).
*/
func SecKeychainItemCopyKeychain(itemRef: SecKeychainItem, _ keychainRef: UnsafeMutablePointer<SecKeychain?>) -> OSStatus

/*!
	@function SecKeychainItemCreateCopy
	@abstract Copies a keychain item.
	@param itemRef A reference to the keychain item to copy.
	@param destKeychainRef A reference to the keychain in which to insert the copied keychain item.
	@param initialAccess The initial access for the copied keychain item.
	@param itemCopy On return, a reference to the copied keychain item.
    @result A result code. See "Security Error Codes" (SecBase.h).
*/
func SecKeychainItemCreateCopy(itemRef: SecKeychainItem, _ destKeychainRef: SecKeychain?, _ initialAccess: SecAccess, _ itemCopy: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus

/*!
    @function SecKeychainItemCreatePersistentReference
    @abstract Returns a CFDataRef which can be used as a persistent reference to the given keychain item. The data obtained can be turned back into a SecKeychainItemRef later by calling SecKeychainItemCopyFromPersistentReference().
    @param itemRef A reference to a keychain item.
    @param persistentItemRef On return, a CFDataRef containing a persistent reference. You must release this data reference by calling the CFRelease function.
    @result A result code. See "Security Error Codes" (SecBase.h).
*/
func SecKeychainItemCreatePersistentReference(itemRef: SecKeychainItem, _ persistentItemRef: UnsafeMutablePointer<CFData?>) -> OSStatus

/*!
    @function SecKeychainItemCopyFromPersistentReference
    @abstract Returns a SecKeychainItemRef, given a persistent reference previously obtained by calling SecKeychainItemCreatePersistentReference().
    @param persistentItemRef A CFDataRef containing a persistent reference to a keychain item.
    @param itemRef On return, a SecKeychainItemRef for the keychain item described by the persistent reference. You must release this item reference by calling the CFRelease function.
    @result A result code. See "Security Error Codes" (SecBase.h).
*/
func SecKeychainItemCopyFromPersistentReference(persistentItemRef: CFData, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus

/*!
	@function SecKeychainItemCopyAccess
	@abstract Copies the access of a given keychain item.
	@param itemRef A reference to a keychain item.
    @param access On return, a reference to the keychain item's access.
    @result A result code. See "Security Error Codes" (SecBase.h).
*/
func SecKeychainItemCopyAccess(itemRef: SecKeychainItem, _ access: UnsafeMutablePointer<SecAccess?>) -> OSStatus

/*!
	@function SecKeychainItemSetAccess
	@abstract Sets the access of a given keychain item.
	@param itemRef A reference to a keychain item.
    @param access A reference to an access to replace the keychain item's current access.
    @result A result code. See "Security Error Codes" (SecBase.h).
*/
func SecKeychainItemSetAccess(itemRef: SecKeychainItem, _ access: SecAccess) -> OSStatus

/*!
	@enum Policy Constants
	@discussion Predefined constants used to specify a policy.
	@constant kSecPolicyAppleX509Basic
	@constant kSecPolicyAppleSSL
	@constant kSecPolicyAppleSMIME
	@constant kSecPolicyAppleEAP
	@constant kSecPolicyAppleIPsec
	@constant kSecPolicyAppleiChat
	@constant kSecPolicyApplePKINITClient
	@constant kSecPolicyApplePKINITServer
	@constant kSecPolicyAppleCodeSigning
	@constant kSecPolicyMacAppStoreReceipt
	@constant kSecPolicyAppleIDValidation
	@constant kSecPolicyAppleTimeStamping
	@constant kSecPolicyAppleRevocation
	@constant kSecPolicyApplePassbookSigning
    @constant kSecPolicyApplePayIssuerEncryption
*/
@available(OSX 10.7, *)
let kSecPolicyAppleX509Basic: CFString
@available(OSX 10.7, *)
let kSecPolicyAppleSSL: CFString
@available(OSX 10.7, *)
let kSecPolicyAppleSMIME: CFString
@available(OSX 10.7, *)
let kSecPolicyAppleEAP: CFString
@available(OSX 10.7, *)
let kSecPolicyAppleIPsec: CFString
@available(OSX 10.7, *)
let kSecPolicyApplePKINITClient: CFString
@available(OSX 10.7, *)
let kSecPolicyApplePKINITServer: CFString
@available(OSX 10.7, *)
let kSecPolicyAppleCodeSigning: CFString
@available(OSX 10.7, *)
let kSecPolicyMacAppStoreReceipt: CFString
@available(OSX 10.7, *)
let kSecPolicyAppleIDValidation: CFString
@available(OSX 10.8, *)
let kSecPolicyAppleTimeStamping: CFString
@available(OSX 10.9, *)
let kSecPolicyAppleRevocation: CFString
@available(OSX 10.9, *)
let kSecPolicyApplePassbookSigning: CFString
@available(OSX 10.11, *)
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
        For Passbook signing, this specifies the pass signer.
    @constant kSecPolicyClient Specifies a CFBooleanRef value that indicates
        this evaluation should be for a client certificate. If not set (or
        false), the policy evaluates the certificate as a server certificate.
    @constant kSecPolicyRevocationFlags Specifies a CFNumberRef that holds a
        kCFNumberCFIndexType bitmask value. See "Revocation Policy Constants"
        for a description of individual bits in this value.
    @constant kSecPolicyTeamIdentifier Specifies a CFStringRef containing a
        team identifier which must be matched in the certificate to satisfy
        this policy. For the Passbook signing policy, this string must match
        the Organizational Unit field of the certificate subject.
 */
@available(OSX 10.7, *)
let kSecPolicyOid: CFString
@available(OSX 10.7, *)
let kSecPolicyName: CFString
@available(OSX 10.7, *)
let kSecPolicyClient: CFString
@available(OSX 10.9, *)
let kSecPolicyRevocationFlags: CFString
@available(OSX 10.9, *)
let kSecPolicyTeamIdentifier: CFString

/*!
    @function SecPolicyGetTypeID
    @abstract Returns the type identifier of SecPolicy instances.
    @result The CFTypeID of SecPolicy instances.
*/
@available(OSX 10.3, *)
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
@available(OSX 10.7, *)
func SecPolicyCopyProperties(policyRef: SecPolicy) -> CFDictionary

/*!
    @function SecPolicyCreateBasicX509
    @abstract Returns a policy object for the default X.509 policy.
    @result A policy object. The caller is responsible for calling CFRelease
    on this when it is no longer needed.
*/
@available(OSX 10.6, *)
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
@available(OSX 10.6, *)
func SecPolicyCreateSSL(server: Bool, _ hostname: CFString?) -> SecPolicy
var kSecRevocationOCSPMethod: Int { get }
var kSecRevocationCRLMethod: Int { get }
var kSecRevocationPreferCRL: Int { get }
var kSecRevocationRequirePositiveResponse: Int { get }
var kSecRevocationNetworkAccessDisabled: Int { get }
var kSecRevocationUseAnyAvailableMethod: Int { get }

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
@available(OSX 10.9, *)
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
@available(OSX 10.9, *)
func SecPolicyCreateWithProperties(policyIdentifier: AnyObject, _ properties: CFDictionary?) -> SecPolicy?

/*!
    @enum Policy Value Constants (OS X)
    @discussion Predefined property key constants used to get or set values in
        a dictionary for a policy instance.

        Some policy values may specify CFBooleanRef key usage constraints:
            kSecPolicyKU_DigitalSignature
            kSecPolicyKU_NonRepudiation
            kSecPolicyKU_KeyEncipherment
            kSecPolicyKU_DataEncipherment
            kSecPolicyKU_KeyAgreement
            kSecPolicyKU_KeyCertSign
            kSecPolicyKU_CRLSign
            kSecPolicyKU_EncipherOnly
            kSecPolicyKU_DecipherOnly

        kSecPolicyKU policy values define certificate-level key purposes,
        in contrast to the key-level definitions in SecItem.h

        For example, a key in a certificate might be acceptable to use for
        signing a CRL, but not for signing another certificate. In either
        case, this key would have the ability to sign (i.e. kSecAttrCanSign
        is true), but may only sign for specific purposes allowed by these
        policy constants. Similarly, a public key might have the capability
        to perform encryption or decryption, but the certificate in which it
        resides might have a decipher-only certificate policy.

        These constants correspond to values defined in RFC 5280, section
        4.2.1.3 (Key Usage) which define the purpose of a key contained in a
        certificate, in contrast to section 4.1.2.7 which define the uses that
        a key is capable of.

        Note: these constants are not available on iOS. Your code should
        avoid direct reliance on these values for making policy decisions
        and use higher level policies where possible.

    @constant kSecPolicyKU_DigitalSignature Specifies that the certificate must
        have a key usage that allows it to be used for signing.
    @constant kSecPolicyKU_NonRepudiation Specifies that the certificate must
        have a key usage that allows it to be used for non-repudiation.
    @constant kSecPolicyKU_KeyEncipherment Specifies that the certificate must
        have a key usage that allows it to be used for key encipherment.
    @constant kSecPolicyKU_DataEncipherment Specifies that the certificate must
        have a key usage that allows it to be used for data encipherment.
    @constant kSecPolicyKU_KeyAgreement Specifies that the certificate must
        have a key usage that allows it to be used for key agreement.
    @constant kSecPolicyKU_KeyCertSign Specifies that the certificate must
        have a key usage that allows it to be used for signing certificates.
    @constant kSecPolicyKU_CRLSign Specifies that the certificate must
        have a key usage that allows it to be used for signing CRLs.
    @constant kSecPolicyKU_EncipherOnly Specifies that the certificate must
        have a key usage that permits it to be used for encryption only.
    @constant kSecPolicyKU_DecipherOnly Specifies that the certificate must
        have a key usage that permits it to be used for decryption only.
 */
@available(OSX 10.7, *)
let kSecPolicyKU_DigitalSignature: CFString
@available(OSX 10.7, *)
let kSecPolicyKU_NonRepudiation: CFString
@available(OSX 10.7, *)
let kSecPolicyKU_KeyEncipherment: CFString
@available(OSX 10.7, *)
let kSecPolicyKU_DataEncipherment: CFString
@available(OSX 10.7, *)
let kSecPolicyKU_KeyAgreement: CFString
@available(OSX 10.7, *)
let kSecPolicyKU_KeyCertSign: CFString
@available(OSX 10.7, *)
let kSecPolicyKU_CRLSign: CFString
@available(OSX 10.7, *)
let kSecPolicyKU_EncipherOnly: CFString
@available(OSX 10.7, *)
let kSecPolicyKU_DecipherOnly: CFString

/*!
	@typedef SecPolicySearchRef
	@abstract A reference to an opaque policy search structure.
*/
class SecPolicySearch {
}

/*!
	@typedef SecPolicySearchRef
	@abstract A reference to an opaque policy search structure.
*/
typealias SecPolicySearchRef = SecPolicySearch

/*!
	@function SecRequirementGetTypeID
	Returns the type identifier of all SecRequirement instances.
*/
func SecRequirementGetTypeID() -> CFTypeID

/*!
	@function SecRequirementCreateWithData
	Create a SecRequirement object from binary form.
	This is the effective inverse of SecRequirementCopyData.
	
	@param data A binary blob obtained earlier from a valid SecRequirement object
	using the SecRequirementCopyData call. This is the only publicly supported
	way to get such a data blob.
	@param flags Optional flags. Pass kSecCSDefaultFlags for standard behavior.
	@param requirement On successful return, contains a reference to a SecRequirement
	object that behaves identically to the one the data blob was obtained from.
	@result Upon success, errSecSuccess. Upon error, an OSStatus value documented in
	CSCommon.h or certain other Security framework headers.
*/
func SecRequirementCreateWithData(data: CFData, _ flags: SecCSFlags, _ requirement: UnsafeMutablePointer<SecRequirement?>) -> OSStatus

/*!
	@function SecRequirementCreateWithString
	Create a SecRequirement object by compiling a valid text representation
	of a requirement.
	
	@param text A CFString containing the text form of a (single) Code Requirement.
	@param flags Optional flags. Pass kSecCSDefaultFlags for standard behavior.
	@param requirement On successful return, contains a reference to a SecRequirement
	object that implements the conditions described in text.
	@param errors An optional pointer to a CFErrorRef variable. If the call fails
	(and something other than errSecSuccess is returned), and this argument is non-NULL,
	a CFErrorRef is stored there further describing the nature and circumstances
	of the failure. The caller must CFRelease() this error object when done with it.
	@result Upon success, errSecSuccess. Upon error, an OSStatus value documented in
	CSCommon.h or certain other Security framework headers.
*/
func SecRequirementCreateWithString(text: CFString, _ flags: SecCSFlags, _ requirement: UnsafeMutablePointer<SecRequirement?>) -> OSStatus
func SecRequirementCreateWithStringAndErrors(text: CFString, _ flags: SecCSFlags, _ errors: UnsafeMutablePointer<Unmanaged<CFError>?>, _ requirement: UnsafeMutablePointer<SecRequirement?>) -> OSStatus

/*!
	@function SecRequirementCopyData
	Extracts a stable, persistent binary form of a SecRequirement.
	This is the effective inverse of SecRequirementCreateWithData.
	
	@param requirement A valid SecRequirement object.
	@param flags Optional flags. Pass kSecCSDefaultFlags for standard behavior.
	@param data On successful return, contains a reference to a CFData object
	containing a binary blob that can be fed to SecRequirementCreateWithData
	to recreate a SecRequirement object with identical behavior.
	@result Upon success, errSecSuccess. Upon error, an OSStatus value documented in
	CSCommon.h or certain other Security framework headers.
*/
func SecRequirementCopyData(requirement: SecRequirement, _ flags: SecCSFlags, _ data: UnsafeMutablePointer<CFData?>) -> OSStatus

/*!
	@function SecRequirementCopyString
	Converts a SecRequirement object into text form.
	This is the effective inverse of SecRequirementCreateWithString.
	
	Repeated application of this function may produce text that differs in
	formatting, may contain different source comments, and may perform its
	validation functions in different order. However, it is guaranteed that
	recompiling the text using SecRequirementCreateWithString will produce a
	SecRequirement object that behaves identically to the one you start with.
	
	@param requirement A valid SecRequirement object.
	@param flags Optional flags. Pass kSecCSDefaultFlags for standard behavior.
	@param text On successful return, contains a reference to a CFString object
	containing a text representation of the requirement.
	@result Upon success, errSecSuccess. Upon error, an OSStatus value documented in
	CSCommon.h or certain other Security framework headers.
*/
func SecRequirementCopyString(requirement: SecRequirement, _ flags: SecCSFlags, _ text: UnsafeMutablePointer<CFString?>) -> OSStatus
let kSecKeyAttributeName: CFString
let kSecSignatureAttributeName: CFString
let kSecInputIsAttributeName: CFString
let kSecInputIsPlainText: CFString
let kSecInputIsDigest: CFString
let kSecInputIsRaw: CFString

/*!
	 @function SecSignTransformCreate
	 @abstract			Creates a sign computation object.
	 @param key		A SecKey with the private key used for signing.
	 @param error		A pointer to a CFErrorRef.  This pointer will be set
	 if an error occurred.  This value may be NULL if you
	 do not want an error returned.
	 @result				A pointer to a SecTransformRef object.  This object must
	 be released with CFRelease when you are done with
	 it.  This function will return NULL if an error
	 occurred.
	 @discussion			This function creates a transform which computes a
	 cryptographic signature.   The InputIS defaults to kSecInputIsPlainText,
	 and the DigestType and DigestLength default to something appropriate for
	 the type of key you have supplied.
	 */
@available(OSX 10.7, *)
func SecSignTransformCreate(key: SecKey, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform?

/*!
	 @function SecVerifyTransformCreate
	 @abstract			Creates a verify computation object.
	 @param key		A SecKey with the public key used for signing.
	 @param signature	A CFDataRef with the signature.   This value may be
	 NULL, and you may connect a transform to kSecTransformSignatureAttributeName
	 to supply it from another signature.
	 @param error		A pointer to a CFErrorRef.  This pointer will be set
	 if an error occurred.  This value may be NULL if you
	 do not want an error returned.
	 @result				A pointer to a SecTransformRef object.  This object must
	 be released with CFRelease when you are done with
	 it.  This function will return NULL if an error
	 occurred.
	 @discussion			This function creates a transform which verifies a
	 cryptographic signature.  The InputIS defaults to kSecInputIsPlainText,
	 and the DigestType and DigestLength default to something appropriate for
	 the type of key you have supplied.
	 */
@available(OSX 10.7, *)
func SecVerifyTransformCreate(key: SecKey, _ signature: CFData?, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform?

/*!
	@function SecStaticCodeGetTypeID
	Returns the type identifier of all SecStaticCode instances.
*/
func SecStaticCodeGetTypeID() -> CFTypeID

/*!
	@function SecStaticCodeCreateWithPath
	Given a path to a file system object, create a SecStaticCode object representing
	the code at that location, if possible. Such a SecStaticCode is not inherently
	linked to running code in the system.
	
	It is possible to create a SecStaticCode object from an unsigned code object.
	Most uses of such an object will return the errSecCSUnsigned error. However,
	SecCodeCopyPath and SecCodeCopySigningInformation can be safely applied to such objects.

	@param path A path to a location in the file system. Only file:// URLs are
	currently supported. For bundles, pass a URL to the root directory of the
	bundle. For single files, pass a URL to the file. If you pass a URL to the
	main executable of a bundle, the bundle as a whole will be generally recognized.
	Caution: Paths containing embedded // or /../ within a bundle's directory
	may cause the bundle to be misconstrued. If you expect to submit such paths,
	first clean them with realpath(3) or equivalent.
	@param flags Optional flags. Pass kSecCSDefaultFlags for standard behavior.
	@param attributes A CFDictionary containing additional attributes of the code sought.
	@param staticCode On successful return, contains a reference to the StaticCode object
	representing the code at path. Unchanged on error.
	@result Upon success, errSecSuccess. Upon error, an OSStatus value documented in
	CSCommon.h or certain other Security framework headers.
	
	@constant kSecCodeAttributeArchitecture Specifies the Mach-O architecture of code desired.
	This can be a CFString containing a canonical architecture name ("i386" etc.), or a CFNumber
	specifying an architecture numerically (see mach/machine.h). This key is ignored if the code
	is not in Mach-O binary form. If the code is Mach-O but not universal ("thin"), the architecture
	specified must agree with the actual file contents.
	@constant kSecCodeAttributeSubarchitecture If the architecture is specified numerically
	(using the kSecCodeAttributeArchitecture key), specifies any sub-architecture by number.
	This key is ignored if no main architecture is specified; if it is specified by name; or
	if the code is not in Mach-O form.
	@constant kSecCodeAttributeUniversalFileOffset The offset of a Mach-O specific slice of a universal Mach-O file.
*/
let kSecCodeAttributeArchitecture: CFString
let kSecCodeAttributeSubarchitecture: CFString
let kSecCodeAttributeUniversalFileOffset: CFString
let kSecCodeAttributeBundleVersion: CFString
func SecStaticCodeCreateWithPath(path: CFURL, _ flags: SecCSFlags, _ staticCode: UnsafeMutablePointer<SecStaticCode?>) -> OSStatus
func SecStaticCodeCreateWithPathAndAttributes(path: CFURL, _ flags: SecCSFlags, _ attributes: CFDictionary, _ staticCode: UnsafeMutablePointer<SecStaticCode?>) -> OSStatus
var kSecCSCheckAllArchitectures: UInt32 { get }
var kSecCSDoNotValidateExecutable: UInt32 { get }
var kSecCSDoNotValidateResources: UInt32 { get }
var kSecCSBasicValidateOnly: UInt32 { get }
var kSecCSCheckNestedCode: UInt32 { get }
var kSecCSStrictValidate: UInt32 { get }
var kSecCSFullReport: UInt32 { get }
var kSecCSCheckGatekeeperArchitectures: UInt32 { get }
var kSecCSRestrictSymlinks: UInt32 { get }
func SecStaticCodeCheckValidity(staticCode: SecStaticCode, _ flags: SecCSFlags, _ requirement: SecRequirement?) -> OSStatus
func SecStaticCodeCheckValidityWithErrors(staticCode: SecStaticCode, _ flags: SecCSFlags, _ requirement: SecRequirement?, _ errors: UnsafeMutablePointer<Unmanaged<CFError>?>) -> OSStatus

/*!
    @typedef SecTaskRef
    @abstract CFType used for representing a task
*/
class SecTask {
}

/*!
    @typedef SecTaskRef
    @abstract CFType used for representing a task
*/
typealias SecTaskRef = SecTask

/*!
    @function SecTaskGetTypeID
    @abstract Returns the type ID for CF instances of SecTask.
    @result A CFTypeID for SecTask
*/
func SecTaskGetTypeID() -> CFTypeID

/*!
    @function SecTaskCreateWithAuditToken
    @abstract Create a SecTask object for the task that sent the mach message
    represented by the audit token.
    @param token The audit token of a mach message
    @result The newly created SecTask object or NULL on error.  The caller must
    CFRelease the returned object.
*/
func SecTaskCreateWithAuditToken(allocator: CFAllocator?, _ token: audit_token_t) -> SecTask?

/*!
    @function SecTaskCreateFromSelf
    @abstract Create a SecTask object for the current task.
    @result The newly created SecTask object or NULL on error.  The caller must
    CFRelease the returned object.
*/
func SecTaskCreateFromSelf(allocator: CFAllocator?) -> SecTask?

/*!
    @function SecTaskCopyValueForEntitlement
    @abstract Returns the value of a single entitlement for the represented 
    task.
    @param task A previously created SecTask object
    @param entitlement The name of the entitlement to be fetched
    @param error On a NULL return, this may be contain a CFError describing
    the problem.  This argument may be NULL if the caller is not interested in
    detailed errors.
    @result The value of the specified entitlement for the process or NULL if
    the entitlement value could not be retrieved.  The type of the returned
    value will depend on the entitlement specified.  The caller must release
    the returned object.
    @discussion A NULL return may indicate an error, or it may indicate that
    the entitlement is simply not present.  In the latter case, no CFError is
    returned.
*/
func SecTaskCopyValueForEntitlement(task: SecTask, _ entitlement: CFString, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> AnyObject?

/*!
    @function SecTaskCopyValuesForEntitlements
    @abstract Returns the values of multiple entitlements for the represented 
    task.
    @param task A previously created SecTask object
    @param entitlements An array of entitlement names to be fetched
    @param error On a NULL return, this will contain a CFError describing
    the problem.  This argument may be NULL if the caller is not interested in
    detailed errors.  If a requested entitlement is not present for the 
    returned dictionary, the entitlement is not set on the task.  The caller
    must CFRelease the returned value
*/
func SecTaskCopyValuesForEntitlements(task: SecTask, _ entitlements: CFArray, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFDictionary?

/*!
	@constant kSecTransformErrorDomain 
			The domain for CFErrorRefs created by Transforms
 */
let kSecTransformErrorDomain: CFString

/*!
	@constant kSecTransformPreviousErrorKey
			If multiple errors occurred, the CFErrorRef that
			is returned from a Transfo]rm API will have a userInfo
			dictionary and that dictionary will have the previous
			error keyed by the kSecTransformPreviousErrorKey.
 */
let kSecTransformPreviousErrorKey: CFString

/*!
	@constant kSecTransformAbortOriginatorKey
			The value of this key will be the transform that caused
			the transform chain to abort.
*/
let kSecTransformAbortOriginatorKey: CFString
var kSecTransformErrorAttributeNotFound: CFIndex { get }
var kSecTransformErrorInvalidOperation: CFIndex { get }
var kSecTransformErrorNotInitializedCorrectly: CFIndex { get }
var kSecTransformErrorMoreThanOneOutput: CFIndex { get }
var kSecTransformErrorInvalidInputDictionary: CFIndex { get }
var kSecTransformErrorInvalidAlgorithm: CFIndex { get }
var kSecTransformErrorInvalidLength: CFIndex { get }
var kSecTransformErrorInvalidType: CFIndex { get }
var kSecTransformErrorInvalidInput: CFIndex { get }
var kSecTransformErrorNameAlreadyRegistered: CFIndex { get }
var kSecTransformErrorUnsupportedAttribute: CFIndex { get }
var kSecTransformOperationNotSupportedOnGroup: CFIndex { get }
var kSecTransformErrorMissingParameter: CFIndex { get }
var kSecTransformErrorInvalidConnection: CFIndex { get }
var kSecTransformTransformIsExecuting: CFIndex { get }
var kSecTransformInvalidOverride: CFIndex { get }
var kSecTransformTransformIsNotRegistered: CFIndex { get }
var kSecTransformErrorAbortInProgress: CFIndex { get }
var kSecTransformErrorAborted: CFIndex { get }
var kSecTransformInvalidArgument: CFIndex { get }
typealias SecTransform = CFTypeRef
typealias SecTransformRef = SecTransform
typealias SecGroupTransform = CFTypeRef
typealias SecGroupTransformRef = SecGroupTransform

/*!
	@function SecTransformGetTypeID
	@abstract Return the CFTypeID for a SecTransform.
	@result The CFTypeID
*/
func SecTransformGetTypeID() -> CFTypeID

/*!
	@function SecGroupTransformGetTypeID
	@abstract Return the CFTypeID for a SecTransformGroup.
	@result The CFTypeID
*/
func SecGroupTransformGetTypeID() -> CFTypeID

/****************	Transform Attribute Names  ****************/
/*!
	@constant kSecTransformInputAttributeName
		The name of the input attribute.
 */
@available(OSX 10.7, *)
let kSecTransformInputAttributeName: CFString

/*!
	@constant kSecTransformOutputAttributeName
		The name of the output attribute.
 */
@available(OSX 10.7, *)
let kSecTransformOutputAttributeName: CFString

/*!
	@constant kSecTransformDebugAttributeName
		Set this attribute to a CFWriteStream.
		This will signal the transform to write debugging 
		information to the stream.
		If this attribute is set to kCFBooleanTrue then
		the debugging data will be written out to
		stderr.
 */
@available(OSX 10.7, *)
let kSecTransformDebugAttributeName: CFString

/*!
	@constant kSecTransformTransformName
		The name of the transform.
*/
@available(OSX 10.7, *)
let kSecTransformTransformName: CFString

/*!
	@constant kSecTransformAbortAttributeName
		The name of the abort attribute.
 */
@available(OSX 10.7, *)
let kSecTransformAbortAttributeName: CFString

/*!
	@function			SecTransformCreateFromExternalRepresentation
	
	@abstract			Creates a transform instance from a CFDictionary of
						parameters.
						
	@param dictionary	The dictionary of parameters.
	
	@param error		An optional pointer to a CFErrorRef. This value is 
						set if an error occurred.  If not NULL the caller is 
						responsible for releasing the CFErrorRef. 
						
	@result				A pointer to a SecTransformRef object.  You
	  					must release the object with CFRelease when you are done
						with it. A NULL will be returned if an error occurred during 
						initialization, and if the error parameter 
						is non-null, it contains the specific error data.
						
*/
@available(OSX 10.7, *)
func SecTransformCreateFromExternalRepresentation(dictionary: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform?

/*!
	@function 			SecTransformCopyExternalRepresentation
	
	@abstract			Create a CFDictionaryRef that contains enough
						information to be able to recreate a transform.
						
	@param transformRef	The transformRef to be externalized.
	
	@discussion			This function returns a CFDictionaryRef that contains
						sufficient information to be able to recreate this
						transform.  You can pass this CFDictionaryRef to
						SecTransformCreateFromExternalRepresentation 
						to be able to recreate the transform.  The dictionary
						can also be written out to disk using the techniques
						described here.
						
http://developer.apple.com/mac/library/documentation/CoreFoundation/Conceptual/CFPropertyLists/Articles/Saving.html
*/
@available(OSX 10.7, *)
func SecTransformCopyExternalRepresentation(transformRef: SecTransform) -> CFDictionary

/*!
	@function			SecTransformCreateGroupTransform
	
	@abstract			Create a SecGroupTransformRef that acts as a 
						container for a set of connected transforms.
						
	@result				A reference to a SecGroupTransform.
						
	@discussion			A SecGroupTransformRef is a container for all of
						the transforms that are in a directed graph.  
						A SecGroupTransformRef can be used with 
						SecTransformExecute, SecTransformExecuteAsync
						and SecTransformCopyExternalRepresentation
						APIs. While the intention is that a 
						SecGroupTransformRef willwork just like a S
						SecTransformRef that is currently not the case.  
						Using a SecGroupTransformRef with the 
						SecTransformConnectTransforms, 
						SecTransformSetAttribute and 
						SecTransformGetAttribute is undefined.
*/
func SecTransformCreateGroupTransform() -> SecGroupTransform

/*!
	@function			SecTransformConnectTransforms
	
	@abstract			Pipe fitting for transforms.
	
	@param sourceTransformRef
						The transform that sends the data to the 
						destinationTransformRef.
						
	@param sourceAttributeName
						The name of the attribute in the sourceTransformRef that 
						supplies the data to the destinationTransformRef.
						Any attribute of the transform may be used as a source.  
	
	@param destinationTransformRef
						The transform that has one of its attributes
						be set with the data from the sourceTransformRef 
						parameter.
						
	@param destinationAttributeName
						The name of the attribute within the 
						destinationTransformRef whose data is set with the 
						data from the sourceTransformRef sourceAttributeName 
						attribute. Any attribute of the transform may be set. 
						
						
	@param group		In order to ensure referential integrity, transforms  
						are chained together into a directed graph and 
						placed into a group.  Each transform that makes up the 
						graph must be placed into the same group.  After
						a SecTransformRef has been placed into a group by
						calling the SecTransformConnectTransforms it may be
						released as the group will retain the transform.
						CFRelease the group after you execute
						it, or when you determine you will never execute it.
						
						In the example below, the output of trans1 is
						set to be the input of trans2.  The output of trans2
						is set to be the input of trans3.  Since the
						same group was used for the connections, the three
						transforms are in the same group.
						
<pre>
@textblock
						SecGroupTransformRef group =SecTransformCreateGroupTransform();
						CFErrorRef error = NULL;
						
						SecTransformRef trans1; // previously created using a 
												// Transform construction API
												// like SecEncryptTransformCreate
												
						SecTransformRef trans2;	// previously created using a 
												// Transform construction API
												// like SecEncryptTransformCreate
					
						SecTransformRef trans3; // previously created using a 
												// Transform construction API
												// like SecEncryptTransformCreate
						
						
						SecTransformConnectTransforms(trans1, kSecTransformOutputAttributeName,
													  trans2, kSecTransformInputAttributeName,
													  group, &error);
						
						SecTransformConnectTransforms(trans2, kSecTransformOutputAttributeName,
													  trans3, kSecTransformInputAttributeName.
													  group, &error);
						CFRelease(trans1);
						CFRelease(trans2);
						CFRelease(trans3);
						
						CFDataRef = (CFDataRef)SecTransformExecute(group, &error, NULL, NULL);
						CFRelease(group);					
@/textblock
</pre>
						
	@param error		An optional pointer to a CFErrorRef.  This value
						is set if an error occurred. If not NULL, the caller 
						is responsible for releasing the CFErrorRef.
						
	@result				The value returned is SecGroupTransformRef parameter.
	 					This will allow for chaining calls to 
						SecTransformConnectTransforms.			 
						
	@discussion			This function places transforms into a group by attaching
						the value of an attribute of one transform to the 
						attribute of another transform.  Typically the attribute 
						supplying the data is the kSecTransformAttrOutput 
						attribute but that is not a requirement.  It can be used to 
						set an attribute like Salt with the output attribute of 
						a random number transform. This function returns an 
						error and the named attribute will not be changed if 
						SecTransformExecute had previously been called on the 
						transform.
*/
@available(OSX 10.7, *)
func SecTransformConnectTransforms(sourceTransformRef: SecTransform, _ sourceAttributeName: CFString, _ destinationTransformRef: SecTransform, _ destinationAttributeName: CFString, _ group: SecGroupTransform, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecGroupTransform?

/*!
	@function			SecTransformSetAttribute
	
	@abstract			Set a static value as the value of an attribute in a 
						transform. This is useful for things like iteration 
						counts and other non-changing values.
	
	@param transformRef	The transform whose attribute is to be set.
	
	@param key			The name of the attribute to be set.
	
	@param value		The static value to set for the named attribute.
	
	@param error		An optional pointer to a CFErrorRef.  This value
						is set if an error occurred. If not NULL the caller 
						is responsible for releasing the CFErrorRef.
						
	@result				Returns true if the call succeeded. If an error occurred,
						the error parameter has more information
						about the failure case.
	
	@discussion			This API allows for setting static data into an 
						attribute for a transform.  This is in contrast to
						the SecTransformConnectTransforms function which sets derived
						data. This function will return an error and the 
						named attribute will not be changed if SecTransformExecute 
						has been called on the transform.
*/
@available(OSX 10.7, *)
func SecTransformSetAttribute(transformRef: SecTransform, _ key: CFString, _ value: AnyObject, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
	@function			SecTransformGetAttribute
	
	@abstract			Get the current value of a transform attribute.
	
	@param transformRef	The transform whose attribute value will be retrieved.
	
	@param key			The name of the attribute to retrieve.
	
	@result				The value of an attribute.  If this attribute
						is being set as the output of another transform
						and SecTransformExecute has not been called on the
						transform or if the attribute does not exists
						then NULL will be returned.
						
	@discussion			This may be called after SecTransformExecute. 
*/
@available(OSX 10.7, *)
func SecTransformGetAttribute(transformRef: SecTransform, _ key: CFString) -> AnyObject?

/*!
	@function			SecTransformFindByName
	
	@abstract			Finds a member of a transform group by its name.
	
	@param transform	The transform group to be searched.
	
	@param	name		The name of the transform to be found.
 
	@discussion			When a transform instance is created it will be given a
						unique name.  This name can be used to find that instance
						in a group.  While it is possible to change this unique
						name using the SecTransformSetAttribute API, developers
						should not do so.  This allows
						SecTransformFindTransformByName to work correctly.
	
	@result				The transform group member, or NULL if the member
						was not found.
*/
@available(OSX 10.7, *)
func SecTransformFindByName(transform: SecGroupTransform, _ name: CFString) -> SecTransform?

/*!
	@function			SecTransformExecute
	
	@abstract			Executes a Transform or transform group synchronously.
	
	@param transformRef	The transform to execute.
	
	@param errorRef		An optional pointer to a CFErrorRef.  This value
						will be set if an error occurred during
						initialization or execution of the transform or group. 
						If not NULL the caller will be responsible for releasing 
						the returned CFErrorRef.						
						
	@result				This is the result of the transform. The specific value 
						is determined by the transform being executed.
						
	@discussion			There are two phases that occur when executing a 
						transform. The first phase checks to see if the tranforms
						have all of their required attributes set.
						If a GroupTransform is being executed, then a required 
						attribute for a transform is valid if it is connected
						to another attribute that supplies the required value.
						If any of the required attributes are not set or connected
						then SecTransformExecute will not run the transform but will 
						return NULL and the apporiate error is placed in the
						error parameter if it is not NULL.
					
						The second phase is the actual execution of the transform.
						SecTransformExecute executes the transform or 
						GroupTransform and when all of the processing is completed 
						it returns the result.  If an error occurs during 
						execution, then all processing will stop and NULL will be 
						returned and the appropriate error will be placed in the 
						error parameter if it is not NULL. 						
*/
@available(OSX 10.7, *)
func SecTransformExecute(transformRef: SecTransform, _ errorRef: UnsafeMutablePointer<Unmanaged<CFError>?>) -> AnyObject

/*!
	@typedef			SecMessageBlock
	
	@abstract			A SecMessageBlock is used by a transform instance to
						deliver messages during asynchronous operations.
						
	@param message		A CFType containing the message.  This is where
						either intermediate or final results are returned.
												
	@param error		If an error occurred, this will contain a CFErrorRef,
						otherwise this will be NULL. If not NULL the caller 
						is responsible for releasing the CFErrorRef.
						
	@param isFinal		If set the message returned is the final result 
						otherwise it is an intermediate result.
*/
typealias SecMessageBlock = (AnyObject?, CFError?, Bool) -> Void

/*!
	@function			SecTransformExecuteAsync
	
	@abstract			Executes Transform or transform group asynchronously.
						
	
	@param transformRef	The transform to execute.
		
	@param deliveryQueue
						A dispatch queue on which to deliver the results of 
						this transform.  
	
	@param deliveryBlock
						A SecMessageBlock to asynchronously receive the 
						results of the transform. 
						
	@discussion			SecTransformExecuteAsync works just like the 
						SecTransformExecute API except that it 
						returns results to the deliveryBlock.  There 
						may be multple results depending on the transform.
						The block knows that the processing is complete
						when the isFinal parameter is set to true.  If an 
						error occurs the block's error parameter is
						set and the isFinal parameter will be set to
						true.
*/
@available(OSX 10.7, *)
func SecTransformExecuteAsync(transformRef: SecTransform, _ deliveryQueue: dispatch_queue_t, _ deliveryBlock: SecMessageBlock)

/*!
	@function	SecTransformCreateReadTransformWithReadStream
	
	@abstract	Creates a read transform from a CFReadStreamRef
	
	@param inputStream	The stream that is to be opened and read from when
				the chain executes.
*/
@available(OSX 10.7, *)
func SecTransformCreateReadTransformWithReadStream(inputStream: CFReadStream) -> SecTransform

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
var kSecTrustResultDeny: Int { get }
var kSecTrustResultUnspecified: Int { get }
var kSecTrustResultRecoverableTrustFailure: Int { get }
var kSecTrustResultFatalTrustFailure: Int { get }
var kSecTrustResultOtherError: Int { get }

/*!
    @typedef SecTrustRef
    @abstract CFType used for performing X.509 certificate trust evaluations.
 */
class SecTrust {
}

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
@available(OSX 10.7, *)
let kSecPropertyTypeTitle: CFString
@available(OSX 10.7, *)
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
 */
@available(OSX 10.9, *)
let kSecTrustEvaluationDate: CFString
@available(OSX 10.9, *)
let kSecTrustExtendedValidation: CFString
@available(OSX 10.9, *)
let kSecTrustOrganizationName: CFString
@available(OSX 10.9, *)
let kSecTrustResultValue: CFString
@available(OSX 10.9, *)
let kSecTrustRevocationChecked: CFString
@available(OSX 10.9, *)
let kSecTrustRevocationValidUntilDate: CFString

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
@available(OSX 10.3, *)
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
@available(OSX 10.3, *)
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
@available(OSX 10.3, *)
func SecTrustSetPolicies(trust: SecTrust, _ policies: AnyObject) -> OSStatus

/*!
    @function SecTrustCopyPolicies
    @abstract Returns an array of policies used for this evaluation.
    @param trust  A reference to a trust object.
    @param policies On return, an array of policies used by this trust.
    Call the CFRelease function to release this reference.
    @result A result code. See "Security Error Codes" (SecBase.h).
 */
@available(OSX 10.3, *)
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
@available(OSX 10.9, *)
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
@available(OSX 10.9, *)
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
@available(OSX 10.3, *)
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
@available(OSX 10.6, *)
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
@available(OSX 10.5, *)
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
@available(OSX 10.3, *)
func SecTrustSetVerifyDate(trust: SecTrust, _ verifyDate: CFDate) -> OSStatus

/*!
    @function SecTrustGetVerifyTime
    @abstract Returns the verify time.
    4
    @result A CFAbsoluteTime value representing the time at which certificates
    should be checked for validity.
    @discussion This function retrieves the verification time for the given
    trust reference, as set by a prior call to SecTrustSetVerifyDate(). If the
    verification time has not been set, this function returns a value of 0,
    indicating that the current date/time is implicitly used for verification.
 */
@available(OSX 10.6, *)
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
@available(OSX 10.3, *)
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
@available(OSX 10.7, *)
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
@available(OSX 10.7, *)
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
@available(OSX 10.7, *)
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
@available(OSX 10.7, *)
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
@available(OSX 10.7, *)
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
@available(OSX 10.9, *)
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
@available(OSX 10.9, *)
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
@available(OSX 10.7, *)
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
@available(OSX 10.9, *)
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
@available(OSX 10.9, *)
func SecTrustSetOCSPResponse(trust: SecTrust, _ responseData: AnyObject?) -> OSStatus

/*!
    @typedef SecTrustOptionFlags
    @abstract Options for customizing trust evaluation.
    @constant kSecTrustOptionAllowExpired Allow expired certificates.
    @constant kSecTrustOptionLeafIsCA Allow CA as leaf certificate.
    @constant kSecTrustOptionFetchIssuerFromNet Allow network fetch of CA cert.
    @constant kSecTrustOptionAllowExpiredRoot Allow expired roots.
    @constant kSecTrustOptionRequireRevPerCert Require positive revocation
    check per certificate.
    @constant kSecTrustOptionUseTrustSettings Use TrustSettings instead of
    anchors.
    @constant kSecTrustOptionImplicitAnchors Properly self-signed certs are
    treated as anchors implicitly.
 */
struct SecTrustOptionFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var AllowExpired: SecTrustOptionFlags { get }
  static var LeafIsCA: SecTrustOptionFlags { get }
  static var FetchIssuerFromNet: SecTrustOptionFlags { get }
  static var AllowExpiredRoot: SecTrustOptionFlags { get }
  static var RequireRevPerCert: SecTrustOptionFlags { get }
  static var UseTrustSettings: SecTrustOptionFlags { get }
  static var ImplicitAnchors: SecTrustOptionFlags { get }
}

/*!
    @function SecTrustSetOptions
    @abstract Sets optional flags for customizing a trust evaluation.
    @param trustRef A trust reference.
    @param options Flags to change evaluation behavior for this trust.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion This function is not available on iOS. Use SecTrustSetExceptions
    and SecTrustCopyExceptions to modify default trust results, and
    SecTrustSetNetworkFetchAllowed to specify whether missing CA certificates
    can be fetched from the network.
 */
@available(OSX 10.7, *)
func SecTrustSetOptions(trustRef: SecTrust, _ options: SecTrustOptionFlags) -> OSStatus

/*!
    @function SecTrustSetKeychains
    @abstract Sets the keychains for a given trust object.
    @param trust A reference to a trust object.
    @param keychainOrArray A reference to an array of keychains to search, a
    single keychain, or NULL to use the default keychain search list.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion By default, the user's keychain search list and the system
    anchors keychain are searched for certificates to complete the chain. You
    can specify a zero-element array if you do not want any keychains searched.
    Note: this function is not applicable to iOS.
 */
@available(OSX 10.3, *)
func SecTrustSetKeychains(trust: SecTrust, _ keychainOrArray: AnyObject?) -> OSStatus

/*!
    @function SecTrustCopyAnchorCertificates
    @abstract Returns an array of default anchor (root) certificates used by
    the system.
    @param anchors On return, an array containing the system's default anchors
    (roots). Call the CFRelease function to release this pointer.
    @result A result code. See "Security Error Codes" (SecBase.h).
    @discussion This function is not available on iOS, as certificate data
    for system-trusted roots is currently unavailable on that platform.
 */
@available(OSX 10.3, *)
func SecTrustCopyAnchorCertificates(anchors: UnsafeMutablePointer<CFArray?>) -> OSStatus
var kSecTrustSettingsPolicy: String { get }
var kSecTrustSettingsApplication: String { get }
var kSecTrustSettingsPolicyString: String { get }
var kSecTrustSettingsKeyUsage: String { get }
var kSecTrustSettingsAllowedError: String { get }
var kSecTrustSettingsResult: String { get }
struct SecTrustSettingsKeyUsage : OptionSetType {
  init(rawValue: uint32)
  let rawValue: uint32
  static var UseSignature: SecTrustSettingsKeyUsage { get }
  static var UseEnDecryptData: SecTrustSettingsKeyUsage { get }
  static var UseEnDecryptKey: SecTrustSettingsKeyUsage { get }
  static var UseSignCert: SecTrustSettingsKeyUsage { get }
  static var UseSignRevocation: SecTrustSettingsKeyUsage { get }
  static var UseKeyExchange: SecTrustSettingsKeyUsage { get }
  static var UseAny: SecTrustSettingsKeyUsage { get }
}
enum SecTrustSettingsResult : uint32 {
  init?(rawValue: uint32)
  var rawValue: uint32 { get }
  case Invalid
  case TrustRoot
  case TrustAsRoot
  case Deny
  case Unspecified
}
enum SecTrustSettingsDomain : uint32 {
  init?(rawValue: uint32)
  var rawValue: uint32 { get }
  case User
  case Admin
  case System
}
func SecTrustSettingsCopyTrustSettings(certRef: SecCertificate, _ domain: SecTrustSettingsDomain, _ trustSettings: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecTrustSettingsSetTrustSettings(certRef: SecCertificate, _ domain: SecTrustSettingsDomain, _ trustSettingsDictOrArray: AnyObject?) -> OSStatus
func SecTrustSettingsRemoveTrustSettings(certRef: SecCertificate, _ domain: SecTrustSettingsDomain) -> OSStatus
func SecTrustSettingsCopyCertificates(domain: SecTrustSettingsDomain, _ certArray: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecTrustSettingsCopyModificationDate(certRef: SecCertificate, _ domain: SecTrustSettingsDomain, _ modificationDate: UnsafeMutablePointer<CFDate?>) -> OSStatus
func SecTrustSettingsCreateExternalRepresentation(domain: SecTrustSettingsDomain, _ trustSettings: UnsafeMutablePointer<CFData?>) -> OSStatus
func SecTrustSettingsImportExternalRepresentation(domain: SecTrustSettingsDomain, _ trustSettings: CFData) -> OSStatus

/*!
	@function SecTrustedApplicationGetTypeID
	@abstract Returns the type identifier of SecTrustedApplication instances.
	@result The CFTypeID of SecTrustedApplication instances.
*/
func SecTrustedApplicationGetTypeID() -> CFTypeID

/*!
	@function SecTrustedApplicationCreateFromPath
    @abstract Creates a trusted application reference based on the trusted application specified by path.
    @param path The path to the application or tool to trust. For application bundles, use the
		path to the bundle directory. Pass NULL to refer to yourself, i.e. the application or tool
		making this call.
    @param app On return, a pointer to the trusted application reference.
    @result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecTrustedApplicationCreateFromPath(path: UnsafePointer<Int8>, _ app: UnsafeMutablePointer<SecTrustedApplication?>) -> OSStatus

/*!
	@function SecTrustedApplicationCopyData
	@abstract Retrieves the data of a given trusted application reference
	@param appRef A trusted application reference to retrieve data from
	@param data On return, a pointer to a data reference of the trusted application.
	@result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecTrustedApplicationCopyData(appRef: SecTrustedApplication, _ data: UnsafeMutablePointer<CFData?>) -> OSStatus

/*!
	@function SecTrustedApplicationSetData
	@abstract Sets the data of a given trusted application reference
	@param appRef A trusted application reference.
	@param data A reference to the data to set in the trusted application.
	@result A result code.  See "Security Error Codes" (SecBase.h).
*/
func SecTrustedApplicationSetData(appRef: SecTrustedApplication, _ data: CFData) -> OSStatus
typealias SSLContextRef = SSLContext
class SSLContext {
}
typealias SSLConnectionRef = UnsafePointer<Void>
enum SSLProtocol : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case SSLProtocolUnknown
  case SSLProtocol3
  case TLSProtocol1
  case TLSProtocol11
  case TLSProtocol12
  case DTLSProtocol1
  case SSLProtocol2
  case SSLProtocol3Only
  case TLSProtocol1Only
  case SSLProtocolAll
}
enum SSLSessionOption : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case BreakOnServerAuth
  case BreakOnCertRequested
  case BreakOnClientAuth
  case FalseStart
  case SendOneByteRecord
  case AllowServerIdentityChange
  case Fallback
  case BreakOnClientHello
}
enum SSLSessionState : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Idle
  case Handshake
  case Connected
  case Closed
  case Aborted
}
enum SSLClientCertificateState : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case CertNone
  case CertRequested
  case CertSent
  case CertRejected
}
typealias SSLReadFunc = @convention(c) (SSLConnectionRef, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Int>) -> OSStatus
typealias SSLWriteFunc = @convention(c) (SSLConnectionRef, UnsafePointer<Void>, UnsafeMutablePointer<Int>) -> OSStatus
var errSSLProtocol: OSStatus { get }
var errSSLNegotiation: OSStatus { get }
var errSSLFatalAlert: OSStatus { get }
var errSSLWouldBlock: OSStatus { get }
var errSSLSessionNotFound: OSStatus { get }
var errSSLClosedGraceful: OSStatus { get }
var errSSLClosedAbort: OSStatus { get }
var errSSLXCertChainInvalid: OSStatus { get }
var errSSLBadCert: OSStatus { get }
var errSSLCrypto: OSStatus { get }
var errSSLInternal: OSStatus { get }
var errSSLModuleAttach: OSStatus { get }
var errSSLUnknownRootCert: OSStatus { get }
var errSSLNoRootCert: OSStatus { get }
var errSSLCertExpired: OSStatus { get }
var errSSLCertNotYetValid: OSStatus { get }
var errSSLClosedNoNotify: OSStatus { get }
var errSSLBufferOverflow: OSStatus { get }
var errSSLBadCipherSuite: OSStatus { get }
var errSSLPeerUnexpectedMsg: OSStatus { get }
var errSSLPeerBadRecordMac: OSStatus { get }
var errSSLPeerDecryptionFail: OSStatus { get }
var errSSLPeerRecordOverflow: OSStatus { get }
var errSSLPeerDecompressFail: OSStatus { get }
var errSSLPeerHandshakeFail: OSStatus { get }
var errSSLPeerBadCert: OSStatus { get }
var errSSLPeerUnsupportedCert: OSStatus { get }
var errSSLPeerCertRevoked: OSStatus { get }
var errSSLPeerCertExpired: OSStatus { get }
var errSSLPeerCertUnknown: OSStatus { get }
var errSSLIllegalParam: OSStatus { get }
var errSSLPeerUnknownCA: OSStatus { get }
var errSSLPeerAccessDenied: OSStatus { get }
var errSSLPeerDecodeError: OSStatus { get }
var errSSLPeerDecryptError: OSStatus { get }
var errSSLPeerExportRestriction: OSStatus { get }
var errSSLPeerProtocolVersion: OSStatus { get }
var errSSLPeerInsufficientSecurity: OSStatus { get }
var errSSLPeerInternalError: OSStatus { get }
var errSSLPeerUserCancelled: OSStatus { get }
var errSSLPeerNoRenegotiation: OSStatus { get }
var errSSLPeerAuthCompleted: OSStatus { get }
var errSSLClientCertRequested: OSStatus { get }
var errSSLHostNameMismatch: OSStatus { get }
var errSSLConnectionRefused: OSStatus { get }
var errSSLDecryptionFail: OSStatus { get }
var errSSLBadRecordMac: OSStatus { get }
var errSSLRecordOverflow: OSStatus { get }
var errSSLBadConfiguration: OSStatus { get }
var errSSLUnexpectedRecord: OSStatus { get }
var errSSLWeakPeerEphemeralDHKey: OSStatus { get }
var errSSLClientHelloReceived: OSStatus { get }
enum SSLProtocolSide : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case ServerSide
  case ClientSide
}
enum SSLConnectionType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case StreamType
  case DatagramType
}

/******************
 *** Public API ***
 ******************/
@available(OSX 10.8, *)
func SSLContextGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
func SSLCreateContext(alloc: CFAllocator?, _ protocolSide: SSLProtocolSide, _ connectionType: SSLConnectionType) -> SSLContext?
@available(OSX 10.2, *)
func SSLGetSessionState(context: SSLContext, _ state: UnsafeMutablePointer<SSLSessionState>) -> OSStatus
@available(OSX 10.6, *)
func SSLSetSessionOption(context: SSLContext, _ option: SSLSessionOption, _ value: Bool) -> OSStatus
@available(OSX 10.6, *)
func SSLGetSessionOption(context: SSLContext, _ option: SSLSessionOption, _ value: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetIOFuncs(context: SSLContext, _ readFunc: SSLReadFunc, _ writeFunc: SSLWriteFunc) -> OSStatus
@available(OSX 10.8, *)
func SSLSetProtocolVersionMin(context: SSLContext, _ minVersion: SSLProtocol) -> OSStatus
@available(OSX 10.8, *)
func SSLGetProtocolVersionMin(context: SSLContext, _ minVersion: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
@available(OSX 10.8, *)
func SSLSetProtocolVersionMax(context: SSLContext, _ maxVersion: SSLProtocol) -> OSStatus
@available(OSX 10.8, *)
func SSLGetProtocolVersionMax(context: SSLContext, _ maxVersion: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetCertificate(context: SSLContext, _ certRefs: CFArray) -> OSStatus
@available(OSX 10.2, *)
func SSLSetConnection(context: SSLContext, _ connection: SSLConnectionRef) -> OSStatus
@available(OSX 10.2, *)
func SSLGetConnection(context: SSLContext, _ connection: UnsafeMutablePointer<SSLConnectionRef>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetPeerDomainName(context: SSLContext, _ peerName: UnsafePointer<Int8>, _ peerNameLen: Int) -> OSStatus
@available(OSX 10.2, *)
func SSLGetPeerDomainNameLength(context: SSLContext, _ peerNameLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetPeerDomainName(context: SSLContext, _ peerName: UnsafeMutablePointer<Int8>, _ peerNameLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.8, *)
func SSLSetDatagramHelloCookie(dtlsContext: SSLContext, _ cookie: UnsafePointer<Void>, _ cookieLen: Int) -> OSStatus
@available(OSX 10.8, *)
func SSLSetMaxDatagramRecordSize(dtlsContext: SSLContext, _ maxSize: Int) -> OSStatus
@available(OSX 10.8, *)
func SSLGetMaxDatagramRecordSize(dtlsContext: SSLContext, _ maxSize: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetNegotiatedProtocolVersion(context: SSLContext, _ protocol: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetNumberSupportedCiphers(context: SSLContext, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetSupportedCiphers(context: SSLContext, _ ciphers: UnsafeMutablePointer<SSLCipherSuite>, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetEnabledCiphers(context: SSLContext, _ ciphers: UnsafePointer<SSLCipherSuite>, _ numCiphers: Int) -> OSStatus
@available(OSX 10.2, *)
func SSLGetNumberEnabledCiphers(context: SSLContext, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetEnabledCiphers(context: SSLContext, _ ciphers: UnsafeMutablePointer<SSLCipherSuite>, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
enum SSLSessionStrengthPolicy : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Default
  case ATSv1
  case ATSv1_noPFS
}
func SSLSetSessionStrengthPolicy(context: SSLContext, _ policyStrength: SSLSessionStrengthPolicy) -> OSStatus
@available(OSX 10.6, *)
func SSLCopyPeerTrust(context: SSLContext, _ trust: UnsafeMutablePointer<SecTrust?>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetPeerID(context: SSLContext, _ peerID: UnsafePointer<Void>, _ peerIDLen: Int) -> OSStatus
@available(OSX 10.2, *)
func SSLGetPeerID(context: SSLContext, _ peerID: UnsafeMutablePointer<UnsafePointer<Void>>, _ peerIDLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetNegotiatedCipher(context: SSLContext, _ cipherSuite: UnsafeMutablePointer<SSLCipherSuite>) -> OSStatus

/********************************************************
 *** Session context configuration, server side only. ***
 ********************************************************/
@available(OSX, introduced=10.2, deprecated=10.11)
func SSLSetEncryptionCertificate(context: SSLContext, _ certRefs: CFArray) -> OSStatus
enum SSLAuthenticate : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case NeverAuthenticate
  case AlwaysAuthenticate
  case TryAuthenticate
}
@available(OSX 10.2, *)
func SSLSetClientSideAuthenticate(context: SSLContext, _ auth: SSLAuthenticate) -> OSStatus
@available(OSX 10.4, *)
func SSLAddDistinguishedName(context: SSLContext, _ derDN: UnsafePointer<Void>, _ derDNLen: Int) -> OSStatus
@available(OSX 10.5, *)
func SSLSetCertificateAuthorities(context: SSLContext, _ certificateOrArray: AnyObject, _ replaceExisting: Bool) -> OSStatus
@available(OSX 10.5, *)
func SSLCopyCertificateAuthorities(context: SSLContext, _ certificates: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(OSX 10.5, *)
func SSLCopyDistinguishedNames(context: SSLContext, _ names: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(OSX 10.3, *)
func SSLGetClientCertificateState(context: SSLContext, _ clientState: UnsafeMutablePointer<SSLClientCertificateState>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetDiffieHellmanParams(context: SSLContext, _ dhParams: UnsafePointer<Void>, _ dhParamsLen: Int) -> OSStatus
@available(OSX 10.2, *)
func SSLGetDiffieHellmanParams(context: SSLContext, _ dhParams: UnsafeMutablePointer<UnsafePointer<Void>>, _ dhParamsLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLHandshake(context: SSLContext) -> OSStatus
@available(OSX 10.2, *)
func SSLWrite(context: SSLContext, _ data: UnsafePointer<Void>, _ dataLength: Int, _ processed: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLRead(context: SSLContext, _ data: UnsafeMutablePointer<Void>, _ dataLength: Int, _ processed: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetBufferedReadSize(context: SSLContext, _ bufSize: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.8, *)
func SSLGetDatagramWriteSize(dtlsContext: SSLContext, _ bufSize: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLClose(context: SSLContext) -> OSStatus
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

/*** CRL extensions ***/
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
struct cssm_spi_ac_funcs {
  var AuthCompute: (@convention(c) (CSSM_AC_HANDLE, UnsafePointer<CSSM_TUPLEGROUP>, UnsafePointer<CSSM_TUPLEGROUP>, uint32, UnsafePointer<CSSM_LIST>, UnsafePointer<CSSM_LIST>, UnsafePointer<CSSM_LIST>, CSSM_TUPLEGROUP_PTR) -> CSSM_RETURN)!
  var PassThrough: (@convention(c) (CSSM_AC_HANDLE, CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!
  init()
  init(AuthCompute: (@convention(c) (CSSM_AC_HANDLE, UnsafePointer<CSSM_TUPLEGROUP>, UnsafePointer<CSSM_TUPLEGROUP>, uint32, UnsafePointer<CSSM_LIST>, UnsafePointer<CSSM_LIST>, UnsafePointer<CSSM_LIST>, CSSM_TUPLEGROUP_PTR) -> CSSM_RETURN)!, PassThrough: (@convention(c) (CSSM_AC_HANDLE, CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!)
}
let gGuidCssm: CSSM_GUID
let gGuidAppleFileDL: CSSM_GUID
let gGuidAppleCSP: CSSM_GUID
let gGuidAppleCSPDL: CSSM_GUID
let gGuidAppleX509CL: CSSM_GUID
let gGuidAppleX509TP: CSSM_GUID
let gGuidAppleLDAPDL: CSSM_GUID
let gGuidAppleDotMacTP: CSSM_GUID
let gGuidAppleSdCSPDL: CSSM_GUID
let gGuidAppleDotMacDL: CSSM_GUID
var CSSM_WORDID_KEYCHAIN_PROMPT: Int { get }
var CSSM_WORDID_KEYCHAIN_LOCK: Int { get }
var CSSM_WORDID_KEYCHAIN_CHANGE_LOCK: Int { get }
var CSSM_WORDID_PROCESS: Int { get }
var CSSM_WORDID__RESERVED_1: Int { get }
var CSSM_WORDID_SYMMETRIC_KEY: Int { get }
var CSSM_WORDID_SYSTEM: Int { get }
var CSSM_WORDID_KEY: Int { get }
var CSSM_WORDID_PIN: Int { get }
var CSSM_WORDID_PREAUTH: Int { get }
var CSSM_WORDID_PREAUTH_SOURCE: Int { get }
var CSSM_WORDID_ASYMMETRIC_KEY: Int { get }
var CSSM_WORDID__FIRST_UNUSED: Int { get }
var CSSM_ACL_SUBJECT_TYPE_KEYCHAIN_PROMPT: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PROCESS: Int { get }
var CSSM_ACL_SUBJECT_TYPE_CODE_SIGNATURE: Int { get }
var CSSM_ACL_SUBJECT_TYPE_COMMENT: Int { get }
var CSSM_ACL_SUBJECT_TYPE_SYMMETRIC_KEY: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PREAUTH: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PREAUTH_SOURCE: Int { get }
var CSSM_ACL_SUBJECT_TYPE_ASYMMETRIC_KEY: Int { get }
var CSSM_SAMPLE_TYPE_KEYCHAIN_PROMPT: Int { get }
var CSSM_SAMPLE_TYPE_KEYCHAIN_LOCK: Int { get }
var CSSM_SAMPLE_TYPE_KEYCHAIN_CHANGE_LOCK: Int { get }
var CSSM_SAMPLE_TYPE_PROCESS: Int { get }
var CSSM_SAMPLE_TYPE_COMMENT: Int { get }
var CSSM_SAMPLE_TYPE_RETRY_ID: Int { get }
var CSSM_SAMPLE_TYPE_SYMMETRIC_KEY: Int { get }
var CSSM_SAMPLE_TYPE_PREAUTH: Int { get }
var CSSM_SAMPLE_TYPE_ASYMMETRIC_KEY: Int { get }
var CSSM_ACL_AUTHORIZATION_CHANGE_ACL: Int { get }
var CSSM_ACL_AUTHORIZATION_CHANGE_OWNER: Int { get }
var CSSM_ACL_AUTHORIZATION_PREAUTH_BASE: Int { get }
var CSSM_ACL_AUTHORIZATION_PREAUTH_END: Int { get }
var CSSM_ACL_CODE_SIGNATURE_INVALID: Int { get }
var CSSM_ACL_CODE_SIGNATURE_OSX: Int { get }
var CSSM_ACL_MATCH_UID: Int { get }
var CSSM_ACL_MATCH_GID: Int { get }
var CSSM_ACL_MATCH_HONOR_ROOT: Int { get }
var CSSM_ACL_MATCH_BITS: Int { get }
var CSSM_ACL_PROCESS_SELECTOR_CURRENT_VERSION: Int { get }
struct cssm_acl_process_subject_selector {
  var version: uint16
  var mask: uint16
  var uid: uint32
  var gid: uint32
  init()
  init(version: uint16, mask: uint16, uid: uint32, gid: uint32)
}
typealias CSSM_ACL_PROCESS_SUBJECT_SELECTOR = cssm_acl_process_subject_selector
var CSSM_ACL_KEYCHAIN_PROMPT_CURRENT_VERSION: Int { get }
var CSSM_ACL_KEYCHAIN_PROMPT_REQUIRE_PASSPHRASE: Int { get }
var CSSM_ACL_KEYCHAIN_PROMPT_UNSIGNED: Int { get }
var CSSM_ACL_KEYCHAIN_PROMPT_UNSIGNED_ACT: Int { get }
var CSSM_ACL_KEYCHAIN_PROMPT_INVALID: Int { get }
var CSSM_ACL_KEYCHAIN_PROMPT_INVALID_ACT: Int { get }
struct cssm_acl_keychain_prompt_selector {
  var version: uint16
  var flags: uint16
  init()
  init(version: uint16, flags: uint16)
}
typealias CSSM_ACL_KEYCHAIN_PROMPT_SELECTOR = cssm_acl_keychain_prompt_selector
typealias CSSM_ACL_PREAUTH_TRACKING_STATE = uint32
var CSSM_ACL_PREAUTH_TRACKING_COUNT_MASK: UInt32 { get }
var CSSM_ACL_PREAUTH_TRACKING_BLOCKED: UInt32 { get }
var CSSM_ACL_PREAUTH_TRACKING_UNKNOWN: UInt32 { get }
var CSSM_ACL_PREAUTH_TRACKING_AUTHORIZED: UInt32 { get }
var CSSM_DB_ACCESS_RESET: Int { get }
var CSSM_ALGID_APPLE_YARROW: UInt32 { get }
var CSSM_ALGID_AES: UInt32 { get }
var CSSM_ALGID_FEE: UInt32 { get }
var CSSM_ALGID_FEE_MD5: UInt32 { get }
var CSSM_ALGID_FEE_SHA1: UInt32 { get }
var CSSM_ALGID_FEED: UInt32 { get }
var CSSM_ALGID_FEEDEXP: UInt32 { get }
var CSSM_ALGID_ASC: UInt32 { get }
var CSSM_ALGID_SHA1HMAC_LEGACY: UInt32 { get }
var CSSM_ALGID_KEYCHAIN_KEY: UInt32 { get }
var CSSM_ALGID_PKCS12_PBE_ENCR: UInt32 { get }
var CSSM_ALGID_PKCS12_PBE_MAC: UInt32 { get }
var CSSM_ALGID_SECURE_PASSPHRASE: UInt32 { get }
var CSSM_ALGID_PBE_OPENSSL_MD5: UInt32 { get }
var CSSM_ALGID_SHA256: UInt32 { get }
var CSSM_ALGID_SHA384: UInt32 { get }
var CSSM_ALGID_SHA512: UInt32 { get }
var CSSM_ALGID_ENTROPY_DEFAULT: UInt32 { get }
var CSSM_ALGID_SHA224: UInt32 { get }
var CSSM_ALGID_SHA224WithRSA: UInt32 { get }
var CSSM_ALGID_SHA256WithRSA: UInt32 { get }
var CSSM_ALGID_SHA384WithRSA: UInt32 { get }
var CSSM_ALGID_SHA512WithRSA: UInt32 { get }
var CSSM_ALGID_OPENSSH1: UInt32 { get }
var CSSM_ALGID_SHA224WithECDSA: UInt32 { get }
var CSSM_ALGID_SHA256WithECDSA: UInt32 { get }
var CSSM_ALGID_SHA384WithECDSA: UInt32 { get }
var CSSM_ALGID_SHA512WithECDSA: UInt32 { get }
var CSSM_ALGID_ECDSA_SPECIFIED: UInt32 { get }
var CSSM_ALGID_ECDH_X963_KDF: UInt32 { get }
var CSSM_ALGID__FIRST_UNUSED: UInt32 { get }
var CSSM_PADDING_APPLE_SSLv2: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_VENDOR_DEFINED: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_X509: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_OPENSSH: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_OPENSSL: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_OPENSSH2: UInt32 { get }
var CSSM_CUSTOM_COMMON_ERROR_EXTENT: Int { get }
var CSSM_ERRCODE_NO_USER_INTERACTION: Int { get }
var CSSM_ERRCODE_USER_CANCELED: Int { get }
var CSSM_ERRCODE_SERVICE_NOT_AVAILABLE: Int { get }
var CSSM_ERRCODE_INSUFFICIENT_CLIENT_IDENTIFICATION: Int { get }
var CSSM_ERRCODE_DEVICE_RESET: Int { get }
var CSSM_ERRCODE_DEVICE_FAILED: Int { get }
var CSSM_ERRCODE_IN_DARK_WAKE: Int { get }
var CSSMERR_CSSM_NO_USER_INTERACTION: Int { get }
var CSSMERR_AC_NO_USER_INTERACTION: Int { get }
var CSSMERR_CSP_NO_USER_INTERACTION: Int { get }
var CSSMERR_CL_NO_USER_INTERACTION: Int { get }
var CSSMERR_DL_NO_USER_INTERACTION: Int { get }
var CSSMERR_TP_NO_USER_INTERACTION: Int { get }
var CSSMERR_CSSM_USER_CANCELED: Int { get }
var CSSMERR_AC_USER_CANCELED: Int { get }
var CSSMERR_CSP_USER_CANCELED: Int { get }
var CSSMERR_CL_USER_CANCELED: Int { get }
var CSSMERR_DL_USER_CANCELED: Int { get }
var CSSMERR_TP_USER_CANCELED: Int { get }
var CSSMERR_CSSM_SERVICE_NOT_AVAILABLE: Int { get }
var CSSMERR_AC_SERVICE_NOT_AVAILABLE: Int { get }
var CSSMERR_CSP_SERVICE_NOT_AVAILABLE: Int { get }
var CSSMERR_CL_SERVICE_NOT_AVAILABLE: Int { get }
var CSSMERR_DL_SERVICE_NOT_AVAILABLE: Int { get }
var CSSMERR_TP_SERVICE_NOT_AVAILABLE: Int { get }
var CSSMERR_CSSM_INSUFFICIENT_CLIENT_IDENTIFICATION: Int { get }
var CSSMERR_AC_INSUFFICIENT_CLIENT_IDENTIFICATION: Int { get }
var CSSMERR_CSP_INSUFFICIENT_CLIENT_IDENTIFICATION: Int { get }
var CSSMERR_CL_INSUFFICIENT_CLIENT_IDENTIFICATION: Int { get }
var CSSMERR_DL_INSUFFICIENT_CLIENT_IDENTIFICATION: Int { get }
var CSSMERR_TP_INSUFFICIENT_CLIENT_IDENTIFICATION: Int { get }
var CSSMERR_CSSM_DEVICE_RESET: Int { get }
var CSSMERR_AC_DEVICE_RESET: Int { get }
var CSSMERR_CSP_DEVICE_RESET: Int { get }
var CSSMERR_CL_DEVICE_RESET: Int { get }
var CSSMERR_DL_DEVICE_RESET: Int { get }
var CSSMERR_TP_DEVICE_RESET: Int { get }
var CSSMERR_CSSM_DEVICE_FAILED: Int { get }
var CSSMERR_AC_DEVICE_FAILED: Int { get }
var CSSMERR_CSP_DEVICE_FAILED: Int { get }
var CSSMERR_CL_DEVICE_FAILED: Int { get }
var CSSMERR_DL_DEVICE_FAILED: Int { get }
var CSSMERR_TP_DEVICE_FAILED: Int { get }
var CSSMERR_CSSM_IN_DARK_WAKE: Int { get }
var CSSMERR_AC_IN_DARK_WAKE: Int { get }
var CSSMERR_CSP_IN_DARK_WAKE: Int { get }
var CSSMERR_CL_IN_DARK_WAKE: Int { get }
var CSSMERR_DL_IN_DARK_WAKE: Int { get }
var CSSMERR_TP_IN_DARK_WAKE: Int { get }
var CSSMERR_CSP_APPLE_ADD_APPLICATION_ACL_SUBJECT: Int { get }
var CSSMERR_CSP_APPLE_PUBLIC_KEY_INCOMPLETE: Int { get }
var CSSMERR_CSP_APPLE_SIGNATURE_MISMATCH: Int { get }
var CSSMERR_CSP_APPLE_INVALID_KEY_START_DATE: Int { get }
var CSSMERR_CSP_APPLE_INVALID_KEY_END_DATE: Int { get }
var CSSMERR_CSPDL_APPLE_DL_CONVERSION_ERROR: Int { get }
var CSSMERR_CSP_APPLE_SSLv2_ROLLBACK: Int { get }
var CSSM_DL_DB_RECORD_GENERIC_PASSWORD: UInt32 { get }
var CSSM_DL_DB_RECORD_INTERNET_PASSWORD: UInt32 { get }
var CSSM_DL_DB_RECORD_APPLESHARE_PASSWORD: UInt32 { get }
var CSSM_DL_DB_RECORD_X509_CERTIFICATE: UInt32 { get }
var CSSM_DL_DB_RECORD_USER_TRUST: UInt32 { get }
var CSSM_DL_DB_RECORD_X509_CRL: UInt32 { get }
var CSSM_DL_DB_RECORD_UNLOCK_REFERRAL: UInt32 { get }
var CSSM_DL_DB_RECORD_EXTENDED_ATTRIBUTE: UInt32 { get }
var CSSM_DL_DB_RECORD_METADATA: UInt32 { get }
var CSSM_APPLEFILEDL_TOGGLE_AUTOCOMMIT: Int { get }
var CSSM_APPLEFILEDL_COMMIT: Int { get }
var CSSM_APPLEFILEDL_ROLLBACK: Int { get }
var CSSM_APPLE_UNLOCK_TYPE_KEY_DIRECT: Int { get }
var CSSM_APPLE_UNLOCK_TYPE_WRAPPED_PRIVATE: Int { get }
var CSSMERR_APPLEDL_INVALID_OPEN_PARAMETERS: Int { get }
var CSSMERR_APPLEDL_DISK_FULL: Int { get }
var CSSMERR_APPLEDL_QUOTA_EXCEEDED: Int { get }
var CSSMERR_APPLEDL_FILE_TOO_BIG: Int { get }
var CSSMERR_APPLEDL_INVALID_DATABASE_BLOB: Int { get }
var CSSMERR_APPLEDL_INVALID_KEY_BLOB: Int { get }
var CSSMERR_APPLEDL_INCOMPATIBLE_DATABASE_BLOB: Int { get }
var CSSMERR_APPLEDL_INCOMPATIBLE_KEY_BLOB: Int { get }
var CSSMERR_APPLETP_HOSTNAME_MISMATCH: Int { get }
var CSSMERR_APPLETP_UNKNOWN_CRITICAL_EXTEN: Int { get }
var CSSMERR_APPLETP_NO_BASIC_CONSTRAINTS: Int { get }
var CSSMERR_APPLETP_INVALID_CA: Int { get }
var CSSMERR_APPLETP_INVALID_AUTHORITY_ID: Int { get }
var CSSMERR_APPLETP_INVALID_SUBJECT_ID: Int { get }
var CSSMERR_APPLETP_INVALID_KEY_USAGE: Int { get }
var CSSMERR_APPLETP_INVALID_EXTENDED_KEY_USAGE: Int { get }
var CSSMERR_APPLETP_INVALID_ID_LINKAGE: Int { get }
var CSSMERR_APPLETP_PATH_LEN_CONSTRAINT: Int { get }
var CSSMERR_APPLETP_INVALID_ROOT: Int { get }
var CSSMERR_APPLETP_CRL_EXPIRED: Int { get }
var CSSMERR_APPLETP_CRL_NOT_VALID_YET: Int { get }
var CSSMERR_APPLETP_CRL_NOT_FOUND: Int { get }
var CSSMERR_APPLETP_CRL_SERVER_DOWN: Int { get }
var CSSMERR_APPLETP_CRL_BAD_URI: Int { get }
var CSSMERR_APPLETP_UNKNOWN_CERT_EXTEN: Int { get }
var CSSMERR_APPLETP_UNKNOWN_CRL_EXTEN: Int { get }
var CSSMERR_APPLETP_CRL_NOT_TRUSTED: Int { get }
var CSSMERR_APPLETP_CRL_INVALID_ANCHOR_CERT: Int { get }
var CSSMERR_APPLETP_CRL_POLICY_FAIL: Int { get }
var CSSMERR_APPLETP_IDP_FAIL: Int { get }
var CSSMERR_APPLETP_CERT_NOT_FOUND_FROM_ISSUER: Int { get }
var CSSMERR_APPLETP_BAD_CERT_FROM_ISSUER: Int { get }
var CSSMERR_APPLETP_SMIME_EMAIL_ADDRS_NOT_FOUND: Int { get }
var CSSMERR_APPLETP_SMIME_BAD_EXT_KEY_USE: Int { get }
var CSSMERR_APPLETP_SMIME_BAD_KEY_USE: Int { get }
var CSSMERR_APPLETP_SMIME_KEYUSAGE_NOT_CRITICAL: Int { get }
var CSSMERR_APPLETP_SMIME_NO_EMAIL_ADDRS: Int { get }
var CSSMERR_APPLETP_SMIME_SUBJ_ALT_NAME_NOT_CRIT: Int { get }
var CSSMERR_APPLETP_SSL_BAD_EXT_KEY_USE: Int { get }
var CSSMERR_APPLETP_OCSP_BAD_RESPONSE: Int { get }
var CSSMERR_APPLETP_OCSP_BAD_REQUEST: Int { get }
var CSSMERR_APPLETP_OCSP_UNAVAILABLE: Int { get }
var CSSMERR_APPLETP_OCSP_STATUS_UNRECOGNIZED: Int { get }
var CSSMERR_APPLETP_INCOMPLETE_REVOCATION_CHECK: Int { get }
var CSSMERR_APPLETP_NETWORK_FAILURE: Int { get }
var CSSMERR_APPLETP_OCSP_NOT_TRUSTED: Int { get }
var CSSMERR_APPLETP_OCSP_INVALID_ANCHOR_CERT: Int { get }
var CSSMERR_APPLETP_OCSP_SIG_ERROR: Int { get }
var CSSMERR_APPLETP_OCSP_NO_SIGNER: Int { get }
var CSSMERR_APPLETP_OCSP_RESP_MALFORMED_REQ: Int { get }
var CSSMERR_APPLETP_OCSP_RESP_INTERNAL_ERR: Int { get }
var CSSMERR_APPLETP_OCSP_RESP_TRY_LATER: Int { get }
var CSSMERR_APPLETP_OCSP_RESP_SIG_REQUIRED: Int { get }
var CSSMERR_APPLETP_OCSP_RESP_UNAUTHORIZED: Int { get }
var CSSMERR_APPLETP_OCSP_NONCE_MISMATCH: Int { get }
var CSSMERR_APPLETP_CS_BAD_CERT_CHAIN_LENGTH: Int { get }
var CSSMERR_APPLETP_CS_NO_BASIC_CONSTRAINTS: Int { get }
var CSSMERR_APPLETP_CS_BAD_PATH_LENGTH: Int { get }
var CSSMERR_APPLETP_CS_NO_EXTENDED_KEY_USAGE: Int { get }
var CSSMERR_APPLETP_CODE_SIGN_DEVELOPMENT: Int { get }
var CSSMERR_APPLETP_RS_BAD_CERT_CHAIN_LENGTH: Int { get }
var CSSMERR_APPLETP_RS_BAD_EXTENDED_KEY_USAGE: Int { get }
var CSSMERR_APPLETP_TRUST_SETTING_DENY: Int { get }
var CSSMERR_APPLETP_INVALID_EMPTY_SUBJECT: Int { get }
var CSSMERR_APPLETP_UNKNOWN_QUAL_CERT_STATEMENT: Int { get }
var CSSMERR_APPLETP_MISSING_REQUIRED_EXTENSION: Int { get }
var CSSMERR_APPLETP_EXT_KEYUSAGE_NOT_CRITICAL: Int { get }
var CSSMERR_APPLETP_IDENTIFIER_MISSING: Int { get }
var CSSMERR_APPLETP_CA_PIN_MISMATCH: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_QUEUED: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_REDIRECT: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_SERVER_ERR: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_SERVER_PARAM: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_SERVER_AUTH: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_SERVER_UNIMPL: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_SERVER_NOT_AVAIL: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_SERVER_ALREADY_EXIST: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_SERVER_SERVICE_ERROR: Int { get }
var CSSMERR_APPLE_DOTMAC_REQ_IS_PENDING: Int { get }
var CSSMERR_APPLE_DOTMAC_NO_REQ_PENDING: Int { get }
var CSSMERR_APPLE_DOTMAC_CSR_VERIFY_FAIL: Int { get }
var CSSMERR_APPLE_DOTMAC_FAILED_CONSISTENCY_CHECK: Int { get }
var CSSM_APPLEDL_OPEN_PARAMETERS_VERSION: Int { get }
struct cssm_appledl_open_parameters_mask : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kCSSM_APPLEDL_MASK_MODE: cssm_appledl_open_parameters_mask { get }
struct cssm_appledl_open_parameters {
  var length: uint32
  var version: uint32
  var autoCommit: CSSM_BOOL
  var mask: uint32
  var mode: mode_t
  init()
  init(length: uint32, version: uint32, autoCommit: CSSM_BOOL, mask: uint32, mode: mode_t)
}
typealias CSSM_APPLEDL_OPEN_PARAMETERS = cssm_appledl_open_parameters
typealias CSSM_APPLEDL_OPEN_PARAMETERS_PTR = UnsafeMutablePointer<cssm_appledl_open_parameters>
var CSSM_APPLECSPDL_DB_LOCK: Int { get }
var CSSM_APPLECSPDL_DB_UNLOCK: Int { get }
var CSSM_APPLECSPDL_DB_GET_SETTINGS: Int { get }
var CSSM_APPLECSPDL_DB_SET_SETTINGS: Int { get }
var CSSM_APPLECSPDL_DB_IS_LOCKED: Int { get }
var CSSM_APPLECSPDL_DB_CHANGE_PASSWORD: Int { get }
var CSSM_APPLECSPDL_DB_GET_HANDLE: Int { get }
var CSSM_APPLESCPDL_CSP_GET_KEYHANDLE: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_8: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_9: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_10: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_11: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_12: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_13: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_14: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_15: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_16: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_17: Int { get }
var CSSM_APPLE_PRIVATE_CSPDL_CODE_18: Int { get }
var CSSM_APPLECSP_KEYDIGEST: Int { get }
struct cssm_applecspdl_db_settings_parameters {
  var idleTimeout: uint32
  var lockOnSleep: uint8
  init()
  init(idleTimeout: uint32, lockOnSleep: uint8)
}
typealias CSSM_APPLECSPDL_DB_SETTINGS_PARAMETERS = cssm_applecspdl_db_settings_parameters
typealias CSSM_APPLECSPDL_DB_SETTINGS_PARAMETERS_PTR = UnsafeMutablePointer<cssm_applecspdl_db_settings_parameters>
struct cssm_applecspdl_db_is_locked_parameters {
  var isLocked: uint8
  init()
  init(isLocked: uint8)
}
typealias CSSM_APPLECSPDL_DB_IS_LOCKED_PARAMETERS = cssm_applecspdl_db_is_locked_parameters
typealias CSSM_APPLECSPDL_DB_IS_LOCKED_PARAMETERS_PTR = UnsafeMutablePointer<cssm_applecspdl_db_is_locked_parameters>
struct cssm_applecspdl_db_change_password_parameters {
  var accessCredentials: UnsafeMutablePointer<CSSM_ACCESS_CREDENTIALS>
  init()
  init(accessCredentials: UnsafeMutablePointer<CSSM_ACCESS_CREDENTIALS>)
}
typealias CSSM_APPLECSPDL_DB_CHANGE_PASSWORD_PARAMETERS = cssm_applecspdl_db_change_password_parameters
typealias CSSM_APPLECSPDL_DB_CHANGE_PASSWORD_PARAMETERS_PTR = UnsafeMutablePointer<cssm_applecspdl_db_change_password_parameters>
var CSSM_KEYBLOB_WRAPPED_FORMAT_APPLE_CUSTOM: Int { get }
var CSSM_KEYBLOB_WRAPPED_FORMAT_OPENSSL: Int { get }
var CSSM_KEYBLOB_WRAPPED_FORMAT_OPENSSH1: Int { get }
var CSSM_ATTRIBUTE_VENDOR_DEFINED: Int { get }
var CSSM_ATTRIBUTE_PUBLIC_KEY: Int { get }
var CSSM_ATTRIBUTE_FEE_PRIME_TYPE: Int { get }
var CSSM_ATTRIBUTE_FEE_CURVE_TYPE: Int { get }
var CSSM_ATTRIBUTE_ASC_OPTIMIZATION: Int { get }
var CSSM_ATTRIBUTE_RSA_BLINDING: Int { get }
var CSSM_ATTRIBUTE_PARAM_KEY: Int { get }
var CSSM_ATTRIBUTE_PROMPT: Int { get }
var CSSM_ATTRIBUTE_ALERT_TITLE: Int { get }
var CSSM_ATTRIBUTE_VERIFY_PASSPHRASE: Int { get }
var CSSM_FEE_PRIME_TYPE_DEFAULT: Int { get }
var CSSM_FEE_PRIME_TYPE_MERSENNE: Int { get }
var CSSM_FEE_PRIME_TYPE_FEE: Int { get }
var CSSM_FEE_PRIME_TYPE_GENERAL: Int { get }
var CSSM_FEE_CURVE_TYPE_DEFAULT: Int { get }
var CSSM_FEE_CURVE_TYPE_MONTGOMERY: Int { get }
var CSSM_FEE_CURVE_TYPE_WEIERSTRASS: Int { get }
var CSSM_FEE_CURVE_TYPE_ANSI_X9_62: Int { get }
var CSSM_ASC_OPTIMIZE_DEFAULT: Int { get }
var CSSM_ASC_OPTIMIZE_SIZE: Int { get }
var CSSM_ASC_OPTIMIZE_SECURITY: Int { get }
var CSSM_ASC_OPTIMIZE_TIME: Int { get }
var CSSM_ASC_OPTIMIZE_TIME_SIZE: Int { get }
var CSSM_ASC_OPTIMIZE_ASCII: Int { get }
var CSSM_KEYATTR_PARTIAL: Int { get }
var CSSM_KEYATTR_PUBLIC_KEY_ENCRYPT: Int { get }
struct CSSM_APPLE_TP_NAME_OID {
  var string: UnsafePointer<Int8>
  var oid: UnsafePointer<CSSM_OID>
  init()
  init(string: UnsafePointer<Int8>, oid: UnsafePointer<CSSM_OID>)
}
struct CSSM_APPLE_TP_CERT_REQUEST {
  var cspHand: CSSM_CSP_HANDLE
  var clHand: CSSM_CL_HANDLE
  var serialNumber: uint32
  var numSubjectNames: uint32
  var subjectNames: UnsafeMutablePointer<CSSM_APPLE_TP_NAME_OID>
  var numIssuerNames: uint32
  var issuerNames: UnsafeMutablePointer<CSSM_APPLE_TP_NAME_OID>
  var issuerNameX509: CSSM_X509_NAME_PTR
  var certPublicKey: UnsafePointer<CSSM_KEY>
  var issuerPrivateKey: UnsafePointer<CSSM_KEY>
  var signatureAlg: CSSM_ALGORITHMS
  var signatureOid: CSSM_OID
  var notBefore: uint32
  var notAfter: uint32
  var numExtensions: uint32
  var extensions: UnsafeMutablePointer<CE_DataAndType>
  var challengeString: UnsafePointer<Int8>
  init()
  init(cspHand: CSSM_CSP_HANDLE, clHand: CSSM_CL_HANDLE, serialNumber: uint32, numSubjectNames: uint32, subjectNames: UnsafeMutablePointer<CSSM_APPLE_TP_NAME_OID>, numIssuerNames: uint32, issuerNames: UnsafeMutablePointer<CSSM_APPLE_TP_NAME_OID>, issuerNameX509: CSSM_X509_NAME_PTR, certPublicKey: UnsafePointer<CSSM_KEY>, issuerPrivateKey: UnsafePointer<CSSM_KEY>, signatureAlg: CSSM_ALGORITHMS, signatureOid: CSSM_OID, notBefore: uint32, notAfter: uint32, numExtensions: uint32, extensions: UnsafeMutablePointer<CE_DataAndType>, challengeString: UnsafePointer<Int8>)
}
var CSSM_APPLE_TP_SSL_OPTS_VERSION: Int32 { get }
var CSSM_APPLE_TP_SSL_CLIENT: Int32 { get }
struct CSSM_APPLE_TP_SSL_OPTIONS {
  var Version: uint32
  var ServerNameLen: uint32
  var ServerName: UnsafePointer<Int8>
  var Flags: uint32
  init()
  init(Version: uint32, ServerNameLen: uint32, ServerName: UnsafePointer<Int8>, Flags: uint32)
}
var CSSM_APPLE_TP_CRL_OPTS_VERSION: Int32 { get }
typealias CSSM_APPLE_TP_CRL_OPT_FLAGS = uint32
var CSSM_TP_ACTION_REQUIRE_CRL_PER_CERT: Int { get }
var CSSM_TP_ACTION_FETCH_CRL_FROM_NET: Int { get }
var CSSM_TP_ACTION_CRL_SUFFICIENT: Int { get }
var CSSM_TP_ACTION_REQUIRE_CRL_IF_PRESENT: Int { get }
struct CSSM_APPLE_TP_CRL_OPTIONS {
  var Version: uint32
  var CrlFlags: CSSM_APPLE_TP_CRL_OPT_FLAGS
  var crlStore: CSSM_DL_DB_HANDLE_PTR
  init()
  init(Version: uint32, CrlFlags: CSSM_APPLE_TP_CRL_OPT_FLAGS, crlStore: CSSM_DL_DB_HANDLE_PTR)
}
var CSSM_APPLE_TP_SMIME_OPTS_VERSION: Int32 { get }
struct CSSM_APPLE_TP_SMIME_OPTIONS {
  var Version: uint32
  var IntendedUsage: CE_KeyUsage
  var SenderEmailLen: uint32
  var SenderEmail: UnsafePointer<Int8>
  init()
  init(Version: uint32, IntendedUsage: CE_KeyUsage, SenderEmailLen: uint32, SenderEmail: UnsafePointer<Int8>)
}
typealias CSSM_APPLE_TP_ACTION_FLAGS = uint32
var CSSM_TP_ACTION_ALLOW_EXPIRED: Int { get }
var CSSM_TP_ACTION_LEAF_IS_CA: Int { get }
var CSSM_TP_ACTION_FETCH_CERT_FROM_NET: Int { get }
var CSSM_TP_ACTION_ALLOW_EXPIRED_ROOT: Int { get }
var CSSM_TP_ACTION_REQUIRE_REV_PER_CERT: Int { get }
var CSSM_TP_ACTION_TRUST_SETTINGS: Int { get }
var CSSM_TP_ACTION_IMPLICIT_ANCHORS: Int { get }
var CSSM_APPLE_TP_ACTION_VERSION: Int32 { get }
struct CSSM_APPLE_TP_ACTION_DATA {
  var Version: uint32
  var ActionFlags: CSSM_APPLE_TP_ACTION_FLAGS
  init()
  init(Version: uint32, ActionFlags: CSSM_APPLE_TP_ACTION_FLAGS)
}
typealias CSSM_TP_APPLE_CERT_STATUS = uint32
var CSSM_CERT_STATUS_EXPIRED: Int { get }
var CSSM_CERT_STATUS_NOT_VALID_YET: Int { get }
var CSSM_CERT_STATUS_IS_IN_INPUT_CERTS: Int { get }
var CSSM_CERT_STATUS_IS_IN_ANCHORS: Int { get }
var CSSM_CERT_STATUS_IS_ROOT: Int { get }
var CSSM_CERT_STATUS_IS_FROM_NET: Int { get }
var CSSM_CERT_STATUS_TRUST_SETTINGS_FOUND_USER: Int { get }
var CSSM_CERT_STATUS_TRUST_SETTINGS_FOUND_ADMIN: Int { get }
var CSSM_CERT_STATUS_TRUST_SETTINGS_FOUND_SYSTEM: Int { get }
var CSSM_CERT_STATUS_TRUST_SETTINGS_TRUST: Int { get }
var CSSM_CERT_STATUS_TRUST_SETTINGS_DENY: Int { get }
var CSSM_CERT_STATUS_TRUST_SETTINGS_IGNORED_ERROR: Int { get }
struct CSSM_TP_APPLE_EVIDENCE_INFO {
  var StatusBits: CSSM_TP_APPLE_CERT_STATUS
  var NumStatusCodes: uint32
  var StatusCodes: UnsafeMutablePointer<CSSM_RETURN>
  var Index: uint32
  var DlDbHandle: CSSM_DL_DB_HANDLE
  var UniqueRecord: CSSM_DB_UNIQUE_RECORD_PTR
  init()
  init(StatusBits: CSSM_TP_APPLE_CERT_STATUS, NumStatusCodes: uint32, StatusCodes: UnsafeMutablePointer<CSSM_RETURN>, Index: uint32, DlDbHandle: CSSM_DL_DB_HANDLE, UniqueRecord: CSSM_DB_UNIQUE_RECORD_PTR)
}
var CSSM_TP_APPLE_EVIDENCE_VERSION: Int32 { get }
struct CSSM_TP_APPLE_EVIDENCE_HEADER {
  var Version: uint32
  init()
  init(Version: uint32)
}
var CSSM_EVIDENCE_FORM_APPLE_CUSTOM: UInt32 { get }
var CSSM_EVIDENCE_FORM_APPLE_HEADER: UInt32 { get }
var CSSM_EVIDENCE_FORM_APPLE_CERTGROUP: UInt32 { get }
var CSSM_EVIDENCE_FORM_APPLE_CERT_INFO: UInt32 { get }
var CSSM_APPLEX509CL_OBTAIN_CSR: Int { get }
var CSSM_APPLEX509CL_VERIFY_CSR: Int { get }
struct CSSM_APPLE_CL_CSR_REQUEST {
  var subjectNameX509: CSSM_X509_NAME_PTR
  var signatureAlg: CSSM_ALGORITHMS
  var signatureOid: CSSM_OID
  var cspHand: CSSM_CSP_HANDLE
  var subjectPublicKey: UnsafePointer<CSSM_KEY>
  var subjectPrivateKey: UnsafePointer<CSSM_KEY>
  var challengeString: UnsafePointer<Int8>
  init()
  init(subjectNameX509: CSSM_X509_NAME_PTR, signatureAlg: CSSM_ALGORITHMS, signatureOid: CSSM_OID, cspHand: CSSM_CSP_HANDLE, subjectPublicKey: UnsafePointer<CSSM_KEY>, subjectPrivateKey: UnsafePointer<CSSM_KEY>, challengeString: UnsafePointer<Int8>)
}
var CSSM_APPLE_CRL_END_OF_TIME: String { get }
var kKeychainSuffix: String { get }
var kSystemKeychainName: String { get }
var kSystemKeychainDir: String { get }
var kSystemUnlockFile: String { get }
func cssmPerror(how: UnsafePointer<Int8>, _ error: CSSM_RETURN)
func cssmOidToAlg(oid: UnsafePointer<CSSM_OID>, _ alg: UnsafeMutablePointer<CSSM_ALGORITHMS>) -> Bool
func cssmAlgToOid(algId: CSSM_ALGORITHMS) -> UnsafePointer<CSSM_OID>
var errSecErrnoBase: Int32 { get }
var errSecErrnoLimit: Int32 { get }
struct cssm_spi_cl_funcs {
  var CertCreateTemplate: (@convention(c) (CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CertGetAllTemplateFields: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!
  var CertSign: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_FIELD>, uint32, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CertVerify: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_FIELD>, uint32) -> CSSM_RETURN)!
  var CertVerifyWithKey: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var CertGetFirstFieldValue: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_OID>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!
  var CertGetNextFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!
  var CertAbortQuery: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!
  var CertGetKeyInfo: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_KEY_PTR>) -> CSSM_RETURN)!
  var CertGetAllFields: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!
  var FreeFields: (@convention(c) (CSSM_CL_HANDLE, uint32, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!
  var FreeFieldValue: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_OID>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CertCache: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, CSSM_HANDLE_PTR) -> CSSM_RETURN)!
  var CertGetFirstCachedFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafePointer<CSSM_OID>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!
  var CertGetNextCachedFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!
  var CertAbortCache: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!
  var CertGroupToSignedBundle: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_CERT_BUNDLE_HEADER>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CertGroupFromVerifiedBundle: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CERT_BUNDLE>, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_CERTGROUP_PTR>) -> CSSM_RETURN)!
  var CertDescribeFormat: (@convention(c) (CSSM_CL_HANDLE, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_OID_PTR>) -> CSSM_RETURN)!
  var CrlCreateTemplate: (@convention(c) (CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CrlSetFields: (@convention(c) (CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, UnsafePointer<CSSM_DATA>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CrlAddCert: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32, UnsafePointer<CSSM_FIELD>, UnsafePointer<CSSM_DATA>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CrlRemoveCert: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_DATA>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CrlSign: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_FIELD>, uint32, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CrlVerify: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_FIELD>, uint32) -> CSSM_RETURN)!
  var CrlVerifyWithKey: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var IsCertInCrl: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_BOOL>) -> CSSM_RETURN)!
  var CrlGetFirstFieldValue: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_OID>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!
  var CrlGetNextFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!
  var CrlAbortQuery: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!
  var CrlGetAllFields: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!
  var CrlCache: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, CSSM_HANDLE_PTR) -> CSSM_RETURN)!
  var IsCertInCachedCrl: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, CSSM_HANDLE, UnsafeMutablePointer<CSSM_BOOL>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CrlGetFirstCachedFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_OID>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!
  var CrlGetNextCachedFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!
  var CrlGetAllCachedRecordFields: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!
  var CrlAbortCache: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!
  var CrlDescribeFormat: (@convention(c) (CSSM_CL_HANDLE, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_OID_PTR>) -> CSSM_RETURN)!
  var PassThrough: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!
  init()
  init(CertCreateTemplate: (@convention(c) (CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CertGetAllTemplateFields: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!, CertSign: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_FIELD>, uint32, CSSM_DATA_PTR) -> CSSM_RETURN)!, CertVerify: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_FIELD>, uint32) -> CSSM_RETURN)!, CertVerifyWithKey: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!, CertGetFirstFieldValue: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_OID>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!, CertGetNextFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!, CertAbortQuery: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!, CertGetKeyInfo: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_KEY_PTR>) -> CSSM_RETURN)!, CertGetAllFields: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!, FreeFields: (@convention(c) (CSSM_CL_HANDLE, uint32, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!, FreeFieldValue: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_OID>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CertCache: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, CSSM_HANDLE_PTR) -> CSSM_RETURN)!, CertGetFirstCachedFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafePointer<CSSM_OID>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!, CertGetNextCachedFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!, CertAbortCache: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!, CertGroupToSignedBundle: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_CERT_BUNDLE_HEADER>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CertGroupFromVerifiedBundle: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CERT_BUNDLE>, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_CERTGROUP_PTR>) -> CSSM_RETURN)!, CertDescribeFormat: (@convention(c) (CSSM_CL_HANDLE, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_OID_PTR>) -> CSSM_RETURN)!, CrlCreateTemplate: (@convention(c) (CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CrlSetFields: (@convention(c) (CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, UnsafePointer<CSSM_DATA>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CrlAddCert: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32, UnsafePointer<CSSM_FIELD>, UnsafePointer<CSSM_DATA>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CrlRemoveCert: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_DATA>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CrlSign: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_FIELD>, uint32, CSSM_DATA_PTR) -> CSSM_RETURN)!, CrlVerify: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_FIELD>, uint32) -> CSSM_RETURN)!, CrlVerifyWithKey: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!, IsCertInCrl: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_BOOL>) -> CSSM_RETURN)!, CrlGetFirstFieldValue: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_OID>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!, CrlGetNextFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!, CrlAbortQuery: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!, CrlGetAllFields: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!, CrlCache: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, CSSM_HANDLE_PTR) -> CSSM_RETURN)!, IsCertInCachedCrl: (@convention(c) (CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, CSSM_HANDLE, UnsafeMutablePointer<CSSM_BOOL>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CrlGetFirstCachedFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_OID>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!, CrlGetNextCachedFieldValue: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<CSSM_DATA_PTR>) -> CSSM_RETURN)!, CrlGetAllCachedRecordFields: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!, CrlAbortCache: (@convention(c) (CSSM_CL_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!, CrlDescribeFormat: (@convention(c) (CSSM_CL_HANDLE, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_OID_PTR>) -> CSSM_RETURN)!, PassThrough: (@convention(c) (CSSM_CL_HANDLE, CSSM_CC_HANDLE, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!)
}
typealias sint64 = Int64
typealias uint64 = UInt64
typealias sint32 = Int32
typealias sint16 = Int16
typealias sint8 = Int8
typealias uint32 = UInt32
typealias uint16 = UInt16
typealias uint8 = UInt8
typealias CSSM_INTPTR = Int
typealias CSSM_SIZE = Int
struct cssm_spi_csp_funcs {
  var EventNotify: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CONTEXT_EVENT, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!
  var QuerySize: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_BOOL, uint32, CSSM_QUERY_SIZE_DATA_PTR) -> CSSM_RETURN)!
  var SignData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_ALGORITHMS, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var SignDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!
  var SignDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!
  var SignDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var VerifyData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_ALGORITHMS, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var VerifyDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!
  var VerifyDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!
  var VerifyDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var DigestData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var DigestDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!
  var DigestDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!
  var DigestDataClone: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_CC_HANDLE) -> CSSM_RETURN)!
  var DigestDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var GenerateMac: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var GenerateMacInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!
  var GenerateMacUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!
  var GenerateMacFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var VerifyMac: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var VerifyMacInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!
  var VerifyMacUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!
  var VerifyMacFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var EncryptData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR, uint32, UnsafeMutablePointer<CSSM_SIZE>, CSSM_DATA_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!
  var EncryptDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_PRIVILEGE) -> CSSM_RETURN)!
  var EncryptDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR, uint32, UnsafeMutablePointer<CSSM_SIZE>) -> CSSM_RETURN)!
  var EncryptDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var DecryptData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR, uint32, UnsafeMutablePointer<CSSM_SIZE>, CSSM_DATA_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!
  var DecryptDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_PRIVILEGE) -> CSSM_RETURN)!
  var DecryptDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR, uint32, UnsafeMutablePointer<CSSM_SIZE>) -> CSSM_RETURN)!
  var DecryptDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var QueryKeySizeInBits: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_KEY>, CSSM_KEY_SIZE_PTR) -> CSSM_RETURN)!
  var GenerateKey: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, uint32, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, CSSM_KEY_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!
  var GenerateKeyPair: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, uint32, UnsafePointer<CSSM_DATA>, CSSM_KEY_PTR, uint32, uint32, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, CSSM_KEY_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!
  var GenerateRandom: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var GenerateAlgorithmParams: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, CSSM_DATA_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_CONTEXT_ATTRIBUTE_PTR>) -> CSSM_RETURN)!
  var WrapKey: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_KEY>, UnsafePointer<CSSM_DATA>, CSSM_WRAP_KEY_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!
  var UnwrapKey: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_KEY>, UnsafePointer<CSSM_WRAP_KEY>, uint32, uint32, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, CSSM_KEY_PTR, CSSM_DATA_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!
  var DeriveKey: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_DATA_PTR, uint32, uint32, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, CSSM_KEY_PTR) -> CSSM_RETURN)!
  var FreeKey: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, CSSM_KEY_PTR, CSSM_BOOL) -> CSSM_RETURN)!
  var PassThrough: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!
  var Login: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_DATA>, UnsafePointer<Void>) -> CSSM_RETURN)!
  var Logout: (@convention(c) (CSSM_CSP_HANDLE) -> CSSM_RETURN)!
  var ChangeLoginAcl: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_EDIT>) -> CSSM_RETURN)!
  var ObtainPrivateKeyFromPublicKey: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_KEY>, CSSM_KEY_PTR) -> CSSM_RETURN)!
  var RetrieveUniqueId: (@convention(c) (CSSM_CSP_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var RetrieveCounter: (@convention(c) (CSSM_CSP_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var VerifyDevice: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var GetTimeValue: (@convention(c) (CSSM_CSP_HANDLE, CSSM_ALGORITHMS, UnsafeMutablePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var GetOperationalStatistics: (@convention(c) (CSSM_CSP_HANDLE, UnsafeMutablePointer<CSSM_CSP_OPERATIONAL_STATISTICS>) -> CSSM_RETURN)!
  var GetLoginAcl: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_STRING>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_ACL_ENTRY_INFO_PTR>) -> CSSM_RETURN)!
  var GetKeyAcl: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_KEY>, UnsafePointer<CSSM_STRING>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_ACL_ENTRY_INFO_PTR>) -> CSSM_RETURN)!
  var ChangeKeyAcl: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_EDIT>, UnsafePointer<CSSM_KEY>) -> CSSM_RETURN)!
  var GetKeyOwner: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_KEY>, CSSM_ACL_OWNER_PROTOTYPE_PTR) -> CSSM_RETURN)!
  var ChangeKeyOwner: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_KEY>, UnsafePointer<CSSM_ACL_OWNER_PROTOTYPE>) -> CSSM_RETURN)!
  var GetLoginOwner: (@convention(c) (CSSM_CSP_HANDLE, CSSM_ACL_OWNER_PROTOTYPE_PTR) -> CSSM_RETURN)!
  var ChangeLoginOwner: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_OWNER_PROTOTYPE>) -> CSSM_RETURN)!
  init()
  init(EventNotify: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CONTEXT_EVENT, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!, QuerySize: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_BOOL, uint32, CSSM_QUERY_SIZE_DATA_PTR) -> CSSM_RETURN)!, SignData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_ALGORITHMS, CSSM_DATA_PTR) -> CSSM_RETURN)!, SignDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!, SignDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!, SignDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!, VerifyData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_ALGORITHMS, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!, VerifyDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!, VerifyDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!, VerifyDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!, DigestData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR) -> CSSM_RETURN)!, DigestDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!, DigestDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!, DigestDataClone: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_CC_HANDLE) -> CSSM_RETURN)!, DigestDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!, GenerateMac: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR) -> CSSM_RETURN)!, GenerateMacInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!, GenerateMacUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!, GenerateMacFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!, VerifyMac: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!, VerifyMacInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>) -> CSSM_RETURN)!, VerifyMacUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32) -> CSSM_RETURN)!, VerifyMacFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!, EncryptData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR, uint32, UnsafeMutablePointer<CSSM_SIZE>, CSSM_DATA_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!, EncryptDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_PRIVILEGE) -> CSSM_RETURN)!, EncryptDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR, uint32, UnsafeMutablePointer<CSSM_SIZE>) -> CSSM_RETURN)!, EncryptDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!, DecryptData: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR, uint32, UnsafeMutablePointer<CSSM_SIZE>, CSSM_DATA_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!, DecryptDataInit: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_PRIVILEGE) -> CSSM_RETURN)!, DecryptDataUpdate: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, uint32, CSSM_DATA_PTR, uint32, UnsafeMutablePointer<CSSM_SIZE>) -> CSSM_RETURN)!, DecryptDataFinal: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!, QueryKeySizeInBits: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_KEY>, CSSM_KEY_SIZE_PTR) -> CSSM_RETURN)!, GenerateKey: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, uint32, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, CSSM_KEY_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!, GenerateKeyPair: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, uint32, UnsafePointer<CSSM_DATA>, CSSM_KEY_PTR, uint32, uint32, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, CSSM_KEY_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!, GenerateRandom: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_DATA_PTR) -> CSSM_RETURN)!, GenerateAlgorithmParams: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, CSSM_DATA_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_CONTEXT_ATTRIBUTE_PTR>) -> CSSM_RETURN)!, WrapKey: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_KEY>, UnsafePointer<CSSM_DATA>, CSSM_WRAP_KEY_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!, UnwrapKey: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_KEY>, UnsafePointer<CSSM_WRAP_KEY>, uint32, uint32, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, CSSM_KEY_PTR, CSSM_DATA_PTR, CSSM_PRIVILEGE) -> CSSM_RETURN)!, DeriveKey: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_DATA_PTR, uint32, uint32, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, CSSM_KEY_PTR) -> CSSM_RETURN)!, FreeKey: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, CSSM_KEY_PTR, CSSM_BOOL) -> CSSM_RETURN)!, PassThrough: (@convention(c) (CSSM_CSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!, Login: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_DATA>, UnsafePointer<Void>) -> CSSM_RETURN)!, Logout: (@convention(c) (CSSM_CSP_HANDLE) -> CSSM_RETURN)!, ChangeLoginAcl: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_EDIT>) -> CSSM_RETURN)!, ObtainPrivateKeyFromPublicKey: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_KEY>, CSSM_KEY_PTR) -> CSSM_RETURN)!, RetrieveUniqueId: (@convention(c) (CSSM_CSP_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!, RetrieveCounter: (@convention(c) (CSSM_CSP_HANDLE, CSSM_DATA_PTR) -> CSSM_RETURN)!, VerifyDevice: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!, GetTimeValue: (@convention(c) (CSSM_CSP_HANDLE, CSSM_ALGORITHMS, UnsafeMutablePointer<CSSM_DATA>) -> CSSM_RETURN)!, GetOperationalStatistics: (@convention(c) (CSSM_CSP_HANDLE, UnsafeMutablePointer<CSSM_CSP_OPERATIONAL_STATISTICS>) -> CSSM_RETURN)!, GetLoginAcl: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_STRING>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_ACL_ENTRY_INFO_PTR>) -> CSSM_RETURN)!, GetKeyAcl: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_KEY>, UnsafePointer<CSSM_STRING>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_ACL_ENTRY_INFO_PTR>) -> CSSM_RETURN)!, ChangeKeyAcl: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_EDIT>, UnsafePointer<CSSM_KEY>) -> CSSM_RETURN)!, GetKeyOwner: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_KEY>, CSSM_ACL_OWNER_PROTOTYPE_PTR) -> CSSM_RETURN)!, ChangeKeyOwner: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_KEY>, UnsafePointer<CSSM_ACL_OWNER_PROTOTYPE>) -> CSSM_RETURN)!, GetLoginOwner: (@convention(c) (CSSM_CSP_HANDLE, CSSM_ACL_OWNER_PROTOTYPE_PTR) -> CSSM_RETURN)!, ChangeLoginOwner: (@convention(c) (CSSM_CSP_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_OWNER_PROTOTYPE>) -> CSSM_RETURN)!)
}
struct cssm_spi_dl_funcs {
  var DbOpen: (@convention(c) (CSSM_DL_HANDLE, UnsafePointer<Int8>, UnsafePointer<CSSM_NET_ADDRESS>, CSSM_DB_ACCESS_TYPE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<Void>, UnsafeMutablePointer<CSSM_DB_HANDLE>) -> CSSM_RETURN)!
  var DbClose: (@convention(c) (CSSM_DL_DB_HANDLE) -> CSSM_RETURN)!
  var DbCreate: (@convention(c) (CSSM_DL_HANDLE, UnsafePointer<Int8>, UnsafePointer<CSSM_NET_ADDRESS>, UnsafePointer<CSSM_DBINFO>, CSSM_DB_ACCESS_TYPE, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, UnsafePointer<Void>, UnsafeMutablePointer<CSSM_DB_HANDLE>) -> CSSM_RETURN)!
  var DbDelete: (@convention(c) (CSSM_DL_HANDLE, UnsafePointer<Int8>, UnsafePointer<CSSM_NET_ADDRESS>, UnsafePointer<CSSM_ACCESS_CREDENTIALS>) -> CSSM_RETURN)!
  var CreateRelation: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_RECORDTYPE, UnsafePointer<Int8>, uint32, UnsafePointer<CSSM_DB_SCHEMA_ATTRIBUTE_INFO>, uint32, UnsafePointer<CSSM_DB_SCHEMA_INDEX_INFO>) -> CSSM_RETURN)!
  var DestroyRelation: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_RECORDTYPE) -> CSSM_RETURN)!
  var Authenticate: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_ACCESS_TYPE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>) -> CSSM_RETURN)!
  var GetDbAcl: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_STRING>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_ACL_ENTRY_INFO_PTR>) -> CSSM_RETURN)!
  var ChangeDbAcl: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_EDIT>) -> CSSM_RETURN)!
  var GetDbOwner: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_ACL_OWNER_PROTOTYPE_PTR) -> CSSM_RETURN)!
  var ChangeDbOwner: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_OWNER_PROTOTYPE>) -> CSSM_RETURN)!
  var GetDbNames: (@convention(c) (CSSM_DL_HANDLE, UnsafeMutablePointer<CSSM_NAME_LIST_PTR>) -> CSSM_RETURN)!
  var GetDbNameFromHandle: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> CSSM_RETURN)!
  var FreeNameList: (@convention(c) (CSSM_DL_HANDLE, CSSM_NAME_LIST_PTR) -> CSSM_RETURN)!
  var DataInsert: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_RECORDTYPE, UnsafePointer<CSSM_DB_RECORD_ATTRIBUTE_DATA>, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!
  var DataDelete: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_DB_UNIQUE_RECORD>) -> CSSM_RETURN)!
  var DataModify: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_RECORDTYPE, CSSM_DB_UNIQUE_RECORD_PTR, UnsafePointer<CSSM_DB_RECORD_ATTRIBUTE_DATA>, UnsafePointer<CSSM_DATA>, CSSM_DB_MODIFY_MODE) -> CSSM_RETURN)!
  var DataGetFirst: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_QUERY>, CSSM_HANDLE_PTR, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!
  var DataGetNext: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_HANDLE, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!
  var DataAbortQuery: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!
  var DataGetFromUniqueRecordId: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_DB_UNIQUE_RECORD>, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var FreeUniqueRecord: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_UNIQUE_RECORD_PTR) -> CSSM_RETURN)!
  var PassThrough: (@convention(c) (CSSM_DL_DB_HANDLE, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!
  init()
  init(DbOpen: (@convention(c) (CSSM_DL_HANDLE, UnsafePointer<Int8>, UnsafePointer<CSSM_NET_ADDRESS>, CSSM_DB_ACCESS_TYPE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<Void>, UnsafeMutablePointer<CSSM_DB_HANDLE>) -> CSSM_RETURN)!, DbClose: (@convention(c) (CSSM_DL_DB_HANDLE) -> CSSM_RETURN)!, DbCreate: (@convention(c) (CSSM_DL_HANDLE, UnsafePointer<Int8>, UnsafePointer<CSSM_NET_ADDRESS>, UnsafePointer<CSSM_DBINFO>, CSSM_DB_ACCESS_TYPE, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, UnsafePointer<Void>, UnsafeMutablePointer<CSSM_DB_HANDLE>) -> CSSM_RETURN)!, DbDelete: (@convention(c) (CSSM_DL_HANDLE, UnsafePointer<Int8>, UnsafePointer<CSSM_NET_ADDRESS>, UnsafePointer<CSSM_ACCESS_CREDENTIALS>) -> CSSM_RETURN)!, CreateRelation: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_RECORDTYPE, UnsafePointer<Int8>, uint32, UnsafePointer<CSSM_DB_SCHEMA_ATTRIBUTE_INFO>, uint32, UnsafePointer<CSSM_DB_SCHEMA_INDEX_INFO>) -> CSSM_RETURN)!, DestroyRelation: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_RECORDTYPE) -> CSSM_RETURN)!, Authenticate: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_ACCESS_TYPE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>) -> CSSM_RETURN)!, GetDbAcl: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_STRING>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_ACL_ENTRY_INFO_PTR>) -> CSSM_RETURN)!, ChangeDbAcl: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_EDIT>) -> CSSM_RETURN)!, GetDbOwner: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_ACL_OWNER_PROTOTYPE_PTR) -> CSSM_RETURN)!, ChangeDbOwner: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<CSSM_ACL_OWNER_PROTOTYPE>) -> CSSM_RETURN)!, GetDbNames: (@convention(c) (CSSM_DL_HANDLE, UnsafeMutablePointer<CSSM_NAME_LIST_PTR>) -> CSSM_RETURN)!, GetDbNameFromHandle: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> CSSM_RETURN)!, FreeNameList: (@convention(c) (CSSM_DL_HANDLE, CSSM_NAME_LIST_PTR) -> CSSM_RETURN)!, DataInsert: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_RECORDTYPE, UnsafePointer<CSSM_DB_RECORD_ATTRIBUTE_DATA>, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!, DataDelete: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_DB_UNIQUE_RECORD>) -> CSSM_RETURN)!, DataModify: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_RECORDTYPE, CSSM_DB_UNIQUE_RECORD_PTR, UnsafePointer<CSSM_DB_RECORD_ATTRIBUTE_DATA>, UnsafePointer<CSSM_DATA>, CSSM_DB_MODIFY_MODE) -> CSSM_RETURN)!, DataGetFirst: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_QUERY>, CSSM_HANDLE_PTR, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!, DataGetNext: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_HANDLE, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!, DataAbortQuery: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!, DataGetFromUniqueRecordId: (@convention(c) (CSSM_DL_DB_HANDLE, UnsafePointer<CSSM_DB_UNIQUE_RECORD>, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!, FreeUniqueRecord: (@convention(c) (CSSM_DL_DB_HANDLE, CSSM_DB_UNIQUE_RECORD_PTR) -> CSSM_RETURN)!, PassThrough: (@convention(c) (CSSM_DL_DB_HANDLE, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!)
}
var CSSM_BASE_ERROR: Int { get }
var CSSM_ERRORCODE_MODULE_EXTENT: Int { get }
var CSSM_ERRORCODE_CUSTOM_OFFSET: Int { get }
var CSSM_ERRORCODE_COMMON_EXTENT: Int { get }
var CSSM_CSSM_BASE_ERROR: Int { get }
var CSSM_CSSM_PRIVATE_ERROR: Int { get }
var CSSM_CSP_BASE_ERROR: Int { get }
var CSSM_CSP_PRIVATE_ERROR: Int { get }
var CSSM_DL_BASE_ERROR: Int { get }
var CSSM_DL_PRIVATE_ERROR: Int { get }
var CSSM_CL_BASE_ERROR: Int { get }
var CSSM_CL_PRIVATE_ERROR: Int { get }
var CSSM_TP_BASE_ERROR: Int { get }
var CSSM_TP_PRIVATE_ERROR: Int { get }
var CSSM_KR_BASE_ERROR: Int { get }
var CSSM_KR_PRIVATE_ERROR: Int { get }
var CSSM_AC_BASE_ERROR: Int { get }
var CSSM_AC_PRIVATE_ERROR: Int { get }
var CSSM_MDS_BASE_ERROR: Int { get }
var CSSM_MDS_PRIVATE_ERROR: Int { get }
var CSSMERR_CSSM_INVALID_ADDIN_HANDLE: Int { get }
var CSSMERR_CSSM_NOT_INITIALIZED: Int { get }
var CSSMERR_CSSM_INVALID_HANDLE_USAGE: Int { get }
var CSSMERR_CSSM_PVC_REFERENT_NOT_FOUND: Int { get }
var CSSMERR_CSSM_FUNCTION_INTEGRITY_FAIL: Int { get }
var CSSM_ERRCODE_INTERNAL_ERROR: Int { get }
var CSSM_ERRCODE_MEMORY_ERROR: Int { get }
var CSSM_ERRCODE_MDS_ERROR: Int { get }
var CSSM_ERRCODE_INVALID_POINTER: Int { get }
var CSSM_ERRCODE_INVALID_INPUT_POINTER: Int { get }
var CSSM_ERRCODE_INVALID_OUTPUT_POINTER: Int { get }
var CSSM_ERRCODE_FUNCTION_NOT_IMPLEMENTED: Int { get }
var CSSM_ERRCODE_SELF_CHECK_FAILED: Int { get }
var CSSM_ERRCODE_OS_ACCESS_DENIED: Int { get }
var CSSM_ERRCODE_FUNCTION_FAILED: Int { get }
var CSSM_ERRCODE_MODULE_MANIFEST_VERIFY_FAILED: Int { get }
var CSSM_ERRCODE_INVALID_GUID: Int { get }
var CSSM_ERRCODE_OPERATION_AUTH_DENIED: Int { get }
var CSSM_ERRCODE_OBJECT_USE_AUTH_DENIED: Int { get }
var CSSM_ERRCODE_OBJECT_MANIP_AUTH_DENIED: Int { get }
var CSSM_ERRCODE_OBJECT_ACL_NOT_SUPPORTED: Int { get }
var CSSM_ERRCODE_OBJECT_ACL_REQUIRED: Int { get }
var CSSM_ERRCODE_INVALID_ACCESS_CREDENTIALS: Int { get }
var CSSM_ERRCODE_INVALID_ACL_BASE_CERTS: Int { get }
var CSSM_ERRCODE_ACL_BASE_CERTS_NOT_SUPPORTED: Int { get }
var CSSM_ERRCODE_INVALID_SAMPLE_VALUE: Int { get }
var CSSM_ERRCODE_SAMPLE_VALUE_NOT_SUPPORTED: Int { get }
var CSSM_ERRCODE_INVALID_ACL_SUBJECT_VALUE: Int { get }
var CSSM_ERRCODE_ACL_SUBJECT_TYPE_NOT_SUPPORTED: Int { get }
var CSSM_ERRCODE_INVALID_ACL_CHALLENGE_CALLBACK: Int { get }
var CSSM_ERRCODE_ACL_CHALLENGE_CALLBACK_FAILED: Int { get }
var CSSM_ERRCODE_INVALID_ACL_ENTRY_TAG: Int { get }
var CSSM_ERRCODE_ACL_ENTRY_TAG_NOT_FOUND: Int { get }
var CSSM_ERRCODE_INVALID_ACL_EDIT_MODE: Int { get }
var CSSM_ERRCODE_ACL_CHANGE_FAILED: Int { get }
var CSSM_ERRCODE_INVALID_NEW_ACL_ENTRY: Int { get }
var CSSM_ERRCODE_INVALID_NEW_ACL_OWNER: Int { get }
var CSSM_ERRCODE_ACL_DELETE_FAILED: Int { get }
var CSSM_ERRCODE_ACL_REPLACE_FAILED: Int { get }
var CSSM_ERRCODE_ACL_ADD_FAILED: Int { get }
var CSSM_ERRCODE_INVALID_CONTEXT_HANDLE: Int { get }
var CSSM_ERRCODE_INCOMPATIBLE_VERSION: Int { get }
var CSSM_ERRCODE_INVALID_CERTGROUP_POINTER: Int { get }
var CSSM_ERRCODE_INVALID_CERT_POINTER: Int { get }
var CSSM_ERRCODE_INVALID_CRL_POINTER: Int { get }
var CSSM_ERRCODE_INVALID_FIELD_POINTER: Int { get }
var CSSM_ERRCODE_INVALID_DATA: Int { get }
var CSSM_ERRCODE_CRL_ALREADY_SIGNED: Int { get }
var CSSM_ERRCODE_INVALID_NUMBER_OF_FIELDS: Int { get }
var CSSM_ERRCODE_VERIFICATION_FAILURE: Int { get }
var CSSM_ERRCODE_INVALID_DB_HANDLE: Int { get }
var CSSM_ERRCODE_PRIVILEGE_NOT_GRANTED: Int { get }
var CSSM_ERRCODE_INVALID_DB_LIST: Int { get }
var CSSM_ERRCODE_INVALID_DB_LIST_POINTER: Int { get }
var CSSM_ERRCODE_UNKNOWN_FORMAT: Int { get }
var CSSM_ERRCODE_UNKNOWN_TAG: Int { get }
var CSSM_ERRCODE_INVALID_CSP_HANDLE: Int { get }
var CSSM_ERRCODE_INVALID_DL_HANDLE: Int { get }
var CSSM_ERRCODE_INVALID_CL_HANDLE: Int { get }
var CSSM_ERRCODE_INVALID_TP_HANDLE: Int { get }
var CSSM_ERRCODE_INVALID_KR_HANDLE: Int { get }
var CSSM_ERRCODE_INVALID_AC_HANDLE: Int { get }
var CSSM_ERRCODE_INVALID_PASSTHROUGH_ID: Int { get }
var CSSM_ERRCODE_INVALID_NETWORK_ADDR: Int { get }
var CSSM_ERRCODE_INVALID_CRYPTO_DATA: Int { get }
var CSSMERR_CSSM_INTERNAL_ERROR: Int { get }
var CSSMERR_CSSM_MEMORY_ERROR: Int { get }
var CSSMERR_CSSM_MDS_ERROR: Int { get }
var CSSMERR_CSSM_INVALID_POINTER: Int { get }
var CSSMERR_CSSM_INVALID_INPUT_POINTER: Int { get }
var CSSMERR_CSSM_INVALID_OUTPUT_POINTER: Int { get }
var CSSMERR_CSSM_FUNCTION_NOT_IMPLEMENTED: Int { get }
var CSSMERR_CSSM_SELF_CHECK_FAILED: Int { get }
var CSSMERR_CSSM_OS_ACCESS_DENIED: Int { get }
var CSSMERR_CSSM_FUNCTION_FAILED: Int { get }
var CSSMERR_CSSM_MODULE_MANIFEST_VERIFY_FAILED: Int { get }
var CSSMERR_CSSM_INVALID_GUID: Int { get }
var CSSMERR_CSSM_INVALID_CONTEXT_HANDLE: Int { get }
var CSSMERR_CSSM_INCOMPATIBLE_VERSION: Int { get }
var CSSMERR_CSSM_PRIVILEGE_NOT_GRANTED: Int { get }
var CSSM_CSSM_BASE_CSSM_ERROR: Int { get }
var CSSMERR_CSSM_SCOPE_NOT_SUPPORTED: Int { get }
var CSSMERR_CSSM_PVC_ALREADY_CONFIGURED: Int { get }
var CSSMERR_CSSM_INVALID_PVC: Int { get }
var CSSMERR_CSSM_EMM_LOAD_FAILED: Int { get }
var CSSMERR_CSSM_EMM_UNLOAD_FAILED: Int { get }
var CSSMERR_CSSM_ADDIN_LOAD_FAILED: Int { get }
var CSSMERR_CSSM_INVALID_KEY_HIERARCHY: Int { get }
var CSSMERR_CSSM_ADDIN_UNLOAD_FAILED: Int { get }
var CSSMERR_CSSM_LIB_REF_NOT_FOUND: Int { get }
var CSSMERR_CSSM_INVALID_ADDIN_FUNCTION_TABLE: Int { get }
var CSSMERR_CSSM_EMM_AUTHENTICATE_FAILED: Int { get }
var CSSMERR_CSSM_ADDIN_AUTHENTICATE_FAILED: Int { get }
var CSSMERR_CSSM_INVALID_SERVICE_MASK: Int { get }
var CSSMERR_CSSM_MODULE_NOT_LOADED: Int { get }
var CSSMERR_CSSM_INVALID_SUBSERVICEID: Int { get }
var CSSMERR_CSSM_BUFFER_TOO_SMALL: Int { get }
var CSSMERR_CSSM_INVALID_ATTRIBUTE: Int { get }
var CSSMERR_CSSM_ATTRIBUTE_NOT_IN_CONTEXT: Int { get }
var CSSMERR_CSSM_MODULE_MANAGER_INITIALIZE_FAIL: Int { get }
var CSSMERR_CSSM_MODULE_MANAGER_NOT_FOUND: Int { get }
var CSSMERR_CSSM_EVENT_NOTIFICATION_CALLBACK_NOT_FOUND: Int { get }
var CSSMERR_CSP_INTERNAL_ERROR: Int { get }
var CSSMERR_CSP_MEMORY_ERROR: Int { get }
var CSSMERR_CSP_MDS_ERROR: Int { get }
var CSSMERR_CSP_INVALID_POINTER: Int { get }
var CSSMERR_CSP_INVALID_INPUT_POINTER: Int { get }
var CSSMERR_CSP_INVALID_OUTPUT_POINTER: Int { get }
var CSSMERR_CSP_FUNCTION_NOT_IMPLEMENTED: Int { get }
var CSSMERR_CSP_SELF_CHECK_FAILED: Int { get }
var CSSMERR_CSP_OS_ACCESS_DENIED: Int { get }
var CSSMERR_CSP_FUNCTION_FAILED: Int { get }
var CSSMERR_CSP_OPERATION_AUTH_DENIED: Int { get }
var CSSMERR_CSP_OBJECT_USE_AUTH_DENIED: Int { get }
var CSSMERR_CSP_OBJECT_MANIP_AUTH_DENIED: Int { get }
var CSSMERR_CSP_OBJECT_ACL_NOT_SUPPORTED: Int { get }
var CSSMERR_CSP_OBJECT_ACL_REQUIRED: Int { get }
var CSSMERR_CSP_INVALID_ACCESS_CREDENTIALS: Int { get }
var CSSMERR_CSP_INVALID_ACL_BASE_CERTS: Int { get }
var CSSMERR_CSP_ACL_BASE_CERTS_NOT_SUPPORTED: Int { get }
var CSSMERR_CSP_INVALID_SAMPLE_VALUE: Int { get }
var CSSMERR_CSP_SAMPLE_VALUE_NOT_SUPPORTED: Int { get }
var CSSMERR_CSP_INVALID_ACL_SUBJECT_VALUE: Int { get }
var CSSMERR_CSP_ACL_SUBJECT_TYPE_NOT_SUPPORTED: Int { get }
var CSSMERR_CSP_INVALID_ACL_CHALLENGE_CALLBACK: Int { get }
var CSSMERR_CSP_ACL_CHALLENGE_CALLBACK_FAILED: Int { get }
var CSSMERR_CSP_INVALID_ACL_ENTRY_TAG: Int { get }
var CSSMERR_CSP_ACL_ENTRY_TAG_NOT_FOUND: Int { get }
var CSSMERR_CSP_INVALID_ACL_EDIT_MODE: Int { get }
var CSSMERR_CSP_ACL_CHANGE_FAILED: Int { get }
var CSSMERR_CSP_INVALID_NEW_ACL_ENTRY: Int { get }
var CSSMERR_CSP_INVALID_NEW_ACL_OWNER: Int { get }
var CSSMERR_CSP_ACL_DELETE_FAILED: Int { get }
var CSSMERR_CSP_ACL_REPLACE_FAILED: Int { get }
var CSSMERR_CSP_ACL_ADD_FAILED: Int { get }
var CSSMERR_CSP_INVALID_CONTEXT_HANDLE: Int { get }
var CSSMERR_CSP_PRIVILEGE_NOT_GRANTED: Int { get }
var CSSMERR_CSP_INVALID_DATA: Int { get }
var CSSMERR_CSP_INVALID_PASSTHROUGH_ID: Int { get }
var CSSMERR_CSP_INVALID_CRYPTO_DATA: Int { get }
var CSSM_CSP_BASE_CSP_ERROR: Int { get }
var CSSMERR_CSP_INPUT_LENGTH_ERROR: Int { get }
var CSSMERR_CSP_OUTPUT_LENGTH_ERROR: Int { get }
var CSSMERR_CSP_PRIVILEGE_NOT_SUPPORTED: Int { get }
var CSSMERR_CSP_DEVICE_ERROR: Int { get }
var CSSMERR_CSP_DEVICE_MEMORY_ERROR: Int { get }
var CSSMERR_CSP_ATTACH_HANDLE_BUSY: Int { get }
var CSSMERR_CSP_NOT_LOGGED_IN: Int { get }
var CSSMERR_CSP_INVALID_KEY: Int { get }
var CSSMERR_CSP_INVALID_KEY_REFERENCE: Int { get }
var CSSMERR_CSP_INVALID_KEY_CLASS: Int { get }
var CSSMERR_CSP_ALGID_MISMATCH: Int { get }
var CSSMERR_CSP_KEY_USAGE_INCORRECT: Int { get }
var CSSMERR_CSP_KEY_BLOB_TYPE_INCORRECT: Int { get }
var CSSMERR_CSP_KEY_HEADER_INCONSISTENT: Int { get }
var CSSMERR_CSP_UNSUPPORTED_KEY_FORMAT: Int { get }
var CSSMERR_CSP_UNSUPPORTED_KEY_SIZE: Int { get }
var CSSMERR_CSP_INVALID_KEY_POINTER: Int { get }
var CSSMERR_CSP_INVALID_KEYUSAGE_MASK: Int { get }
var CSSMERR_CSP_UNSUPPORTED_KEYUSAGE_MASK: Int { get }
var CSSMERR_CSP_INVALID_KEYATTR_MASK: Int { get }
var CSSMERR_CSP_UNSUPPORTED_KEYATTR_MASK: Int { get }
var CSSMERR_CSP_INVALID_KEY_LABEL: Int { get }
var CSSMERR_CSP_UNSUPPORTED_KEY_LABEL: Int { get }
var CSSMERR_CSP_INVALID_KEY_FORMAT: Int { get }
var CSSMERR_CSP_INVALID_DATA_COUNT: Int { get }
var CSSMERR_CSP_VECTOR_OF_BUFS_UNSUPPORTED: Int { get }
var CSSMERR_CSP_INVALID_INPUT_VECTOR: Int { get }
var CSSMERR_CSP_INVALID_OUTPUT_VECTOR: Int { get }
var CSSMERR_CSP_INVALID_CONTEXT: Int { get }
var CSSMERR_CSP_INVALID_ALGORITHM: Int { get }
var CSSMERR_CSP_INVALID_ATTR_KEY: Int { get }
var CSSMERR_CSP_MISSING_ATTR_KEY: Int { get }
var CSSMERR_CSP_INVALID_ATTR_INIT_VECTOR: Int { get }
var CSSMERR_CSP_MISSING_ATTR_INIT_VECTOR: Int { get }
var CSSMERR_CSP_INVALID_ATTR_SALT: Int { get }
var CSSMERR_CSP_MISSING_ATTR_SALT: Int { get }
var CSSMERR_CSP_INVALID_ATTR_PADDING: Int { get }
var CSSMERR_CSP_MISSING_ATTR_PADDING: Int { get }
var CSSMERR_CSP_INVALID_ATTR_RANDOM: Int { get }
var CSSMERR_CSP_MISSING_ATTR_RANDOM: Int { get }
var CSSMERR_CSP_INVALID_ATTR_SEED: Int { get }
var CSSMERR_CSP_MISSING_ATTR_SEED: Int { get }
var CSSMERR_CSP_INVALID_ATTR_PASSPHRASE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_PASSPHRASE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_KEY_LENGTH: Int { get }
var CSSMERR_CSP_MISSING_ATTR_KEY_LENGTH: Int { get }
var CSSMERR_CSP_INVALID_ATTR_BLOCK_SIZE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_BLOCK_SIZE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_OUTPUT_SIZE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_OUTPUT_SIZE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_ROUNDS: Int { get }
var CSSMERR_CSP_MISSING_ATTR_ROUNDS: Int { get }
var CSSMERR_CSP_INVALID_ATTR_ALG_PARAMS: Int { get }
var CSSMERR_CSP_MISSING_ATTR_ALG_PARAMS: Int { get }
var CSSMERR_CSP_INVALID_ATTR_LABEL: Int { get }
var CSSMERR_CSP_MISSING_ATTR_LABEL: Int { get }
var CSSMERR_CSP_INVALID_ATTR_KEY_TYPE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_KEY_TYPE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_MODE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_MODE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_EFFECTIVE_BITS: Int { get }
var CSSMERR_CSP_MISSING_ATTR_EFFECTIVE_BITS: Int { get }
var CSSMERR_CSP_INVALID_ATTR_START_DATE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_START_DATE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_END_DATE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_END_DATE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_VERSION: Int { get }
var CSSMERR_CSP_MISSING_ATTR_VERSION: Int { get }
var CSSMERR_CSP_INVALID_ATTR_PRIME: Int { get }
var CSSMERR_CSP_MISSING_ATTR_PRIME: Int { get }
var CSSMERR_CSP_INVALID_ATTR_BASE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_BASE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_SUBPRIME: Int { get }
var CSSMERR_CSP_MISSING_ATTR_SUBPRIME: Int { get }
var CSSMERR_CSP_INVALID_ATTR_ITERATION_COUNT: Int { get }
var CSSMERR_CSP_MISSING_ATTR_ITERATION_COUNT: Int { get }
var CSSMERR_CSP_INVALID_ATTR_DL_DB_HANDLE: Int { get }
var CSSMERR_CSP_MISSING_ATTR_DL_DB_HANDLE: Int { get }
var CSSMERR_CSP_INVALID_ATTR_ACCESS_CREDENTIALS: Int { get }
var CSSMERR_CSP_MISSING_ATTR_ACCESS_CREDENTIALS: Int { get }
var CSSMERR_CSP_INVALID_ATTR_PUBLIC_KEY_FORMAT: Int { get }
var CSSMERR_CSP_MISSING_ATTR_PUBLIC_KEY_FORMAT: Int { get }
var CSSMERR_CSP_INVALID_ATTR_PRIVATE_KEY_FORMAT: Int { get }
var CSSMERR_CSP_MISSING_ATTR_PRIVATE_KEY_FORMAT: Int { get }
var CSSMERR_CSP_INVALID_ATTR_SYMMETRIC_KEY_FORMAT: Int { get }
var CSSMERR_CSP_MISSING_ATTR_SYMMETRIC_KEY_FORMAT: Int { get }
var CSSMERR_CSP_INVALID_ATTR_WRAPPED_KEY_FORMAT: Int { get }
var CSSMERR_CSP_MISSING_ATTR_WRAPPED_KEY_FORMAT: Int { get }
var CSSMERR_CSP_STAGED_OPERATION_IN_PROGRESS: Int { get }
var CSSMERR_CSP_STAGED_OPERATION_NOT_STARTED: Int { get }
var CSSMERR_CSP_VERIFY_FAILED: Int { get }
var CSSMERR_CSP_INVALID_SIGNATURE: Int { get }
var CSSMERR_CSP_QUERY_SIZE_UNKNOWN: Int { get }
var CSSMERR_CSP_BLOCK_SIZE_MISMATCH: Int { get }
var CSSMERR_CSP_PRIVATE_KEY_NOT_FOUND: Int { get }
var CSSMERR_CSP_PUBLIC_KEY_INCONSISTENT: Int { get }
var CSSMERR_CSP_DEVICE_VERIFY_FAILED: Int { get }
var CSSMERR_CSP_INVALID_LOGIN_NAME: Int { get }
var CSSMERR_CSP_ALREADY_LOGGED_IN: Int { get }
var CSSMERR_CSP_PRIVATE_KEY_ALREADY_EXISTS: Int { get }
var CSSMERR_CSP_KEY_LABEL_ALREADY_EXISTS: Int { get }
var CSSMERR_CSP_INVALID_DIGEST_ALGORITHM: Int { get }
var CSSMERR_CSP_CRYPTO_DATA_CALLBACK_FAILED: Int { get }
var CSSMERR_TP_INTERNAL_ERROR: Int { get }
var CSSMERR_TP_MEMORY_ERROR: Int { get }
var CSSMERR_TP_MDS_ERROR: Int { get }
var CSSMERR_TP_INVALID_POINTER: Int { get }
var CSSMERR_TP_INVALID_INPUT_POINTER: Int { get }
var CSSMERR_TP_INVALID_OUTPUT_POINTER: Int { get }
var CSSMERR_TP_FUNCTION_NOT_IMPLEMENTED: Int { get }
var CSSMERR_TP_SELF_CHECK_FAILED: Int { get }
var CSSMERR_TP_OS_ACCESS_DENIED: Int { get }
var CSSMERR_TP_FUNCTION_FAILED: Int { get }
var CSSMERR_TP_INVALID_CONTEXT_HANDLE: Int { get }
var CSSMERR_TP_INVALID_DATA: Int { get }
var CSSMERR_TP_INVALID_DB_LIST: Int { get }
var CSSMERR_TP_INVALID_CERTGROUP_POINTER: Int { get }
var CSSMERR_TP_INVALID_CERT_POINTER: Int { get }
var CSSMERR_TP_INVALID_CRL_POINTER: Int { get }
var CSSMERR_TP_INVALID_FIELD_POINTER: Int { get }
var CSSMERR_TP_INVALID_NETWORK_ADDR: Int { get }
var CSSMERR_TP_CRL_ALREADY_SIGNED: Int { get }
var CSSMERR_TP_INVALID_NUMBER_OF_FIELDS: Int { get }
var CSSMERR_TP_VERIFICATION_FAILURE: Int { get }
var CSSMERR_TP_INVALID_DB_HANDLE: Int { get }
var CSSMERR_TP_UNKNOWN_FORMAT: Int { get }
var CSSMERR_TP_UNKNOWN_TAG: Int { get }
var CSSMERR_TP_INVALID_PASSTHROUGH_ID: Int { get }
var CSSMERR_TP_INVALID_CSP_HANDLE: Int { get }
var CSSMERR_TP_INVALID_DL_HANDLE: Int { get }
var CSSMERR_TP_INVALID_CL_HANDLE: Int { get }
var CSSMERR_TP_INVALID_DB_LIST_POINTER: Int { get }
var CSSM_TP_BASE_TP_ERROR: Int { get }
var CSSMERR_TP_INVALID_CALLERAUTH_CONTEXT_POINTER: Int { get }
var CSSMERR_TP_INVALID_IDENTIFIER_POINTER: Int { get }
var CSSMERR_TP_INVALID_KEYCACHE_HANDLE: Int { get }
var CSSMERR_TP_INVALID_CERTGROUP: Int { get }
var CSSMERR_TP_INVALID_CRLGROUP: Int { get }
var CSSMERR_TP_INVALID_CRLGROUP_POINTER: Int { get }
var CSSMERR_TP_AUTHENTICATION_FAILED: Int { get }
var CSSMERR_TP_CERTGROUP_INCOMPLETE: Int { get }
var CSSMERR_TP_CERTIFICATE_CANT_OPERATE: Int { get }
var CSSMERR_TP_CERT_EXPIRED: Int { get }
var CSSMERR_TP_CERT_NOT_VALID_YET: Int { get }
var CSSMERR_TP_CERT_REVOKED: Int { get }
var CSSMERR_TP_CERT_SUSPENDED: Int { get }
var CSSMERR_TP_INSUFFICIENT_CREDENTIALS: Int { get }
var CSSMERR_TP_INVALID_ACTION: Int { get }
var CSSMERR_TP_INVALID_ACTION_DATA: Int { get }
var CSSMERR_TP_INVALID_ANCHOR_CERT: Int { get }
var CSSMERR_TP_INVALID_AUTHORITY: Int { get }
var CSSMERR_TP_VERIFY_ACTION_FAILED: Int { get }
var CSSMERR_TP_INVALID_CERTIFICATE: Int { get }
var CSSMERR_TP_INVALID_CERT_AUTHORITY: Int { get }
var CSSMERR_TP_INVALID_CRL_AUTHORITY: Int { get }
var CSSMERR_TP_INVALID_CRL_ENCODING: Int { get }
var CSSMERR_TP_INVALID_CRL_TYPE: Int { get }
var CSSMERR_TP_INVALID_CRL: Int { get }
var CSSMERR_TP_INVALID_FORM_TYPE: Int { get }
var CSSMERR_TP_INVALID_ID: Int { get }
var CSSMERR_TP_INVALID_IDENTIFIER: Int { get }
var CSSMERR_TP_INVALID_INDEX: Int { get }
var CSSMERR_TP_INVALID_NAME: Int { get }
var CSSMERR_TP_INVALID_POLICY_IDENTIFIERS: Int { get }
var CSSMERR_TP_INVALID_TIMESTRING: Int { get }
var CSSMERR_TP_INVALID_REASON: Int { get }
var CSSMERR_TP_INVALID_REQUEST_INPUTS: Int { get }
var CSSMERR_TP_INVALID_RESPONSE_VECTOR: Int { get }
var CSSMERR_TP_INVALID_SIGNATURE: Int { get }
var CSSMERR_TP_INVALID_STOP_ON_POLICY: Int { get }
var CSSMERR_TP_INVALID_CALLBACK: Int { get }
var CSSMERR_TP_INVALID_TUPLE: Int { get }
var CSSMERR_TP_NOT_SIGNER: Int { get }
var CSSMERR_TP_NOT_TRUSTED: Int { get }
var CSSMERR_TP_NO_DEFAULT_AUTHORITY: Int { get }
var CSSMERR_TP_REJECTED_FORM: Int { get }
var CSSMERR_TP_REQUEST_LOST: Int { get }
var CSSMERR_TP_REQUEST_REJECTED: Int { get }
var CSSMERR_TP_UNSUPPORTED_ADDR_TYPE: Int { get }
var CSSMERR_TP_UNSUPPORTED_SERVICE: Int { get }
var CSSMERR_TP_INVALID_TUPLEGROUP_POINTER: Int { get }
var CSSMERR_TP_INVALID_TUPLEGROUP: Int { get }
var CSSMERR_AC_INTERNAL_ERROR: Int { get }
var CSSMERR_AC_MEMORY_ERROR: Int { get }
var CSSMERR_AC_MDS_ERROR: Int { get }
var CSSMERR_AC_INVALID_POINTER: Int { get }
var CSSMERR_AC_INVALID_INPUT_POINTER: Int { get }
var CSSMERR_AC_INVALID_OUTPUT_POINTER: Int { get }
var CSSMERR_AC_FUNCTION_NOT_IMPLEMENTED: Int { get }
var CSSMERR_AC_SELF_CHECK_FAILED: Int { get }
var CSSMERR_AC_OS_ACCESS_DENIED: Int { get }
var CSSMERR_AC_FUNCTION_FAILED: Int { get }
var CSSMERR_AC_INVALID_CONTEXT_HANDLE: Int { get }
var CSSMERR_AC_INVALID_DATA: Int { get }
var CSSMERR_AC_INVALID_DB_LIST: Int { get }
var CSSMERR_AC_INVALID_PASSTHROUGH_ID: Int { get }
var CSSMERR_AC_INVALID_DL_HANDLE: Int { get }
var CSSMERR_AC_INVALID_CL_HANDLE: Int { get }
var CSSMERR_AC_INVALID_TP_HANDLE: Int { get }
var CSSMERR_AC_INVALID_DB_HANDLE: Int { get }
var CSSMERR_AC_INVALID_DB_LIST_POINTER: Int { get }
var CSSM_AC_BASE_AC_ERROR: Int { get }
var CSSMERR_AC_INVALID_BASE_ACLS: Int { get }
var CSSMERR_AC_INVALID_TUPLE_CREDENTIALS: Int { get }
var CSSMERR_AC_INVALID_ENCODING: Int { get }
var CSSMERR_AC_INVALID_VALIDITY_PERIOD: Int { get }
var CSSMERR_AC_INVALID_REQUESTOR: Int { get }
var CSSMERR_AC_INVALID_REQUEST_DESCRIPTOR: Int { get }
var CSSMERR_CL_INTERNAL_ERROR: Int { get }
var CSSMERR_CL_MEMORY_ERROR: Int { get }
var CSSMERR_CL_MDS_ERROR: Int { get }
var CSSMERR_CL_INVALID_POINTER: Int { get }
var CSSMERR_CL_INVALID_INPUT_POINTER: Int { get }
var CSSMERR_CL_INVALID_OUTPUT_POINTER: Int { get }
var CSSMERR_CL_FUNCTION_NOT_IMPLEMENTED: Int { get }
var CSSMERR_CL_SELF_CHECK_FAILED: Int { get }
var CSSMERR_CL_OS_ACCESS_DENIED: Int { get }
var CSSMERR_CL_FUNCTION_FAILED: Int { get }
var CSSMERR_CL_INVALID_CONTEXT_HANDLE: Int { get }
var CSSMERR_CL_INVALID_CERTGROUP_POINTER: Int { get }
var CSSMERR_CL_INVALID_CERT_POINTER: Int { get }
var CSSMERR_CL_INVALID_CRL_POINTER: Int { get }
var CSSMERR_CL_INVALID_FIELD_POINTER: Int { get }
var CSSMERR_CL_INVALID_DATA: Int { get }
var CSSMERR_CL_CRL_ALREADY_SIGNED: Int { get }
var CSSMERR_CL_INVALID_NUMBER_OF_FIELDS: Int { get }
var CSSMERR_CL_VERIFICATION_FAILURE: Int { get }
var CSSMERR_CL_UNKNOWN_FORMAT: Int { get }
var CSSMERR_CL_UNKNOWN_TAG: Int { get }
var CSSMERR_CL_INVALID_PASSTHROUGH_ID: Int { get }
var CSSM_CL_BASE_CL_ERROR: Int { get }
var CSSMERR_CL_INVALID_BUNDLE_POINTER: Int { get }
var CSSMERR_CL_INVALID_CACHE_HANDLE: Int { get }
var CSSMERR_CL_INVALID_RESULTS_HANDLE: Int { get }
var CSSMERR_CL_INVALID_BUNDLE_INFO: Int { get }
var CSSMERR_CL_INVALID_CRL_INDEX: Int { get }
var CSSMERR_CL_INVALID_SCOPE: Int { get }
var CSSMERR_CL_NO_FIELD_VALUES: Int { get }
var CSSMERR_CL_SCOPE_NOT_SUPPORTED: Int { get }
var CSSMERR_DL_INTERNAL_ERROR: Int { get }
var CSSMERR_DL_MEMORY_ERROR: Int { get }
var CSSMERR_DL_MDS_ERROR: Int { get }
var CSSMERR_DL_INVALID_POINTER: Int { get }
var CSSMERR_DL_INVALID_INPUT_POINTER: Int { get }
var CSSMERR_DL_INVALID_OUTPUT_POINTER: Int { get }
var CSSMERR_DL_FUNCTION_NOT_IMPLEMENTED: Int { get }
var CSSMERR_DL_SELF_CHECK_FAILED: Int { get }
var CSSMERR_DL_OS_ACCESS_DENIED: Int { get }
var CSSMERR_DL_FUNCTION_FAILED: Int { get }
var CSSMERR_DL_INVALID_CSP_HANDLE: Int { get }
var CSSMERR_DL_INVALID_DL_HANDLE: Int { get }
var CSSMERR_DL_INVALID_CL_HANDLE: Int { get }
var CSSMERR_DL_INVALID_DB_LIST_POINTER: Int { get }
var CSSMERR_DL_OPERATION_AUTH_DENIED: Int { get }
var CSSMERR_DL_OBJECT_USE_AUTH_DENIED: Int { get }
var CSSMERR_DL_OBJECT_MANIP_AUTH_DENIED: Int { get }
var CSSMERR_DL_OBJECT_ACL_NOT_SUPPORTED: Int { get }
var CSSMERR_DL_OBJECT_ACL_REQUIRED: Int { get }
var CSSMERR_DL_INVALID_ACCESS_CREDENTIALS: Int { get }
var CSSMERR_DL_INVALID_ACL_BASE_CERTS: Int { get }
var CSSMERR_DL_ACL_BASE_CERTS_NOT_SUPPORTED: Int { get }
var CSSMERR_DL_INVALID_SAMPLE_VALUE: Int { get }
var CSSMERR_DL_SAMPLE_VALUE_NOT_SUPPORTED: Int { get }
var CSSMERR_DL_INVALID_ACL_SUBJECT_VALUE: Int { get }
var CSSMERR_DL_ACL_SUBJECT_TYPE_NOT_SUPPORTED: Int { get }
var CSSMERR_DL_INVALID_ACL_CHALLENGE_CALLBACK: Int { get }
var CSSMERR_DL_ACL_CHALLENGE_CALLBACK_FAILED: Int { get }
var CSSMERR_DL_INVALID_ACL_ENTRY_TAG: Int { get }
var CSSMERR_DL_ACL_ENTRY_TAG_NOT_FOUND: Int { get }
var CSSMERR_DL_INVALID_ACL_EDIT_MODE: Int { get }
var CSSMERR_DL_ACL_CHANGE_FAILED: Int { get }
var CSSMERR_DL_INVALID_NEW_ACL_ENTRY: Int { get }
var CSSMERR_DL_INVALID_NEW_ACL_OWNER: Int { get }
var CSSMERR_DL_ACL_DELETE_FAILED: Int { get }
var CSSMERR_DL_ACL_REPLACE_FAILED: Int { get }
var CSSMERR_DL_ACL_ADD_FAILED: Int { get }
var CSSMERR_DL_INVALID_DB_HANDLE: Int { get }
var CSSMERR_DL_INVALID_PASSTHROUGH_ID: Int { get }
var CSSMERR_DL_INVALID_NETWORK_ADDR: Int { get }
var CSSM_DL_BASE_DL_ERROR: Int { get }
var CSSMERR_DL_DATABASE_CORRUPT: Int { get }
var CSSMERR_DL_INVALID_RECORD_INDEX: Int { get }
var CSSMERR_DL_INVALID_RECORDTYPE: Int { get }
var CSSMERR_DL_INVALID_FIELD_NAME: Int { get }
var CSSMERR_DL_UNSUPPORTED_FIELD_FORMAT: Int { get }
var CSSMERR_DL_UNSUPPORTED_INDEX_INFO: Int { get }
var CSSMERR_DL_UNSUPPORTED_LOCALITY: Int { get }
var CSSMERR_DL_UNSUPPORTED_NUM_ATTRIBUTES: Int { get }
var CSSMERR_DL_UNSUPPORTED_NUM_INDEXES: Int { get }
var CSSMERR_DL_UNSUPPORTED_NUM_RECORDTYPES: Int { get }
var CSSMERR_DL_UNSUPPORTED_RECORDTYPE: Int { get }
var CSSMERR_DL_FIELD_SPECIFIED_MULTIPLE: Int { get }
var CSSMERR_DL_INCOMPATIBLE_FIELD_FORMAT: Int { get }
var CSSMERR_DL_INVALID_PARSING_MODULE: Int { get }
var CSSMERR_DL_INVALID_DB_NAME: Int { get }
var CSSMERR_DL_DATASTORE_DOESNOT_EXIST: Int { get }
var CSSMERR_DL_DATASTORE_ALREADY_EXISTS: Int { get }
var CSSMERR_DL_DB_LOCKED: Int { get }
var CSSMERR_DL_DATASTORE_IS_OPEN: Int { get }
var CSSMERR_DL_RECORD_NOT_FOUND: Int { get }
var CSSMERR_DL_MISSING_VALUE: Int { get }
var CSSMERR_DL_UNSUPPORTED_QUERY: Int { get }
var CSSMERR_DL_UNSUPPORTED_QUERY_LIMITS: Int { get }
var CSSMERR_DL_UNSUPPORTED_NUM_SELECTION_PREDS: Int { get }
var CSSMERR_DL_UNSUPPORTED_OPERATOR: Int { get }
var CSSMERR_DL_INVALID_RESULTS_HANDLE: Int { get }
var CSSMERR_DL_INVALID_DB_LOCATION: Int { get }
var CSSMERR_DL_INVALID_ACCESS_REQUEST: Int { get }
var CSSMERR_DL_INVALID_INDEX_INFO: Int { get }
var CSSMERR_DL_INVALID_SELECTION_TAG: Int { get }
var CSSMERR_DL_INVALID_NEW_OWNER: Int { get }
var CSSMERR_DL_INVALID_RECORD_UID: Int { get }
var CSSMERR_DL_INVALID_UNIQUE_INDEX_DATA: Int { get }
var CSSMERR_DL_INVALID_MODIFY_MODE: Int { get }
var CSSMERR_DL_INVALID_OPEN_PARAMETERS: Int { get }
var CSSMERR_DL_RECORD_MODIFIED: Int { get }
var CSSMERR_DL_ENDOFDATA: Int { get }
var CSSMERR_DL_INVALID_QUERY: Int { get }
var CSSMERR_DL_INVALID_VALUE: Int { get }
var CSSMERR_DL_MULTIPLE_VALUES_UNSUPPORTED: Int { get }
var CSSMERR_DL_STALE_UNIQUE_RECORD: Int { get }
typealias CSSM_KRSP_HANDLE = uint32
struct cssm_kr_name {
  var Type: uint8
  var Length: uint8
  var Name: UnsafeMutablePointer<Int8>
  init()
  init(Type: uint8, Length: uint8, Name: UnsafeMutablePointer<Int8>)
}
struct cssm_kr_profile {
  var UserName: CSSM_KR_NAME
  var UserCertificate: CSSM_CERTGROUP_PTR
  var KRSCertChain: CSSM_CERTGROUP_PTR
  var LE_KRANum: uint8
  var LE_KRACertChainList: CSSM_CERTGROUP_PTR
  var ENT_KRANum: uint8
  var ENT_KRACertChainList: CSSM_CERTGROUP_PTR
  var INDIV_KRANum: uint8
  var INDIV_KRACertChainList: CSSM_CERTGROUP_PTR
  var INDIV_AuthenticationInfo: CSSM_DATA_PTR
  var KRSPFlags: uint32
  var KRSPExtensions: CSSM_DATA_PTR
  init()
  init(UserName: CSSM_KR_NAME, UserCertificate: CSSM_CERTGROUP_PTR, KRSCertChain: CSSM_CERTGROUP_PTR, LE_KRANum: uint8, LE_KRACertChainList: CSSM_CERTGROUP_PTR, ENT_KRANum: uint8, ENT_KRACertChainList: CSSM_CERTGROUP_PTR, INDIV_KRANum: uint8, INDIV_KRACertChainList: CSSM_CERTGROUP_PTR, INDIV_AuthenticationInfo: CSSM_DATA_PTR, KRSPFlags: uint32, KRSPExtensions: CSSM_DATA_PTR)
}
struct cssm_kr_wrappedproductinfo {
  var StandardVersion: CSSM_VERSION
  var StandardDescription: CSSM_STRING
  var ProductVersion: CSSM_VERSION
  var ProductDescription: CSSM_STRING
  var ProductVendor: CSSM_STRING
  var ProductFlags: uint32
  init()
  init(StandardVersion: CSSM_VERSION, StandardDescription: CSSM_STRING, ProductVersion: CSSM_VERSION, ProductDescription: CSSM_STRING, ProductVendor: CSSM_STRING, ProductFlags: uint32)
}
struct cssm_krsubservice {
  var SubServiceId: uint32
  var Description: UnsafeMutablePointer<Int8>
  var WrappedProduct: CSSM_KR_WRAPPEDPRODUCT_INFO
  init()
  init(SubServiceId: uint32, Description: UnsafeMutablePointer<Int8>, WrappedProduct: CSSM_KR_WRAPPEDPRODUCT_INFO)
}
typealias CSSM_KRSUBSERVICE = cssm_krsubservice
typealias CSSM_KRSUBSERVICE_PTR = UnsafeMutablePointer<cssm_krsubservice>
typealias CSSM_KR_POLICY_TYPE = uint32
var CSSM_KR_INDIV_POLICY: Int32 { get }
var CSSM_KR_ENT_POLICY: Int32 { get }
var CSSM_KR_LE_MAN_POLICY: Int32 { get }
var CSSM_KR_LE_USE_POLICY: Int32 { get }
typealias CSSM_KR_POLICY_FLAGS = uint32
var CSSM_KR_INDIV: Int32 { get }
var CSSM_KR_ENT: Int32 { get }
var CSSM_KR_LE_MAN: Int32 { get }
var CSSM_KR_LE_USE: Int32 { get }
var CSSM_KR_OPTIMIZE: Int32 { get }
var CSSM_KR_DROP_WORKFACTOR: Int32 { get }
struct cssm_kr_policy_list_item {
  var next: COpaquePointer
  var AlgorithmId: CSSM_ALGORITHMS
  var Mode: CSSM_ENCRYPT_MODE
  var MaxKeyLength: uint32
  var MaxRounds: uint32
  var WorkFactor: uint8
  var PolicyFlags: CSSM_KR_POLICY_FLAGS
  var AlgClass: CSSM_CONTEXT_TYPE
  init()
}
struct cssm_kr_policy_info {
  var krbNotAllowed: CSSM_BOOL
  var numberOfEntries: uint32
  var policyEntry: UnsafeMutablePointer<CSSM_KR_POLICY_LIST_ITEM>
  init()
  init(krbNotAllowed: CSSM_BOOL, numberOfEntries: uint32, policyEntry: UnsafeMutablePointer<CSSM_KR_POLICY_LIST_ITEM>)
}
struct cssm_spi_kr_funcs {
  var RegistrationRequest: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, CSSM_KR_POLICY_FLAGS, UnsafeMutablePointer<sint32>, CSSM_HANDLE_PTR) -> CSSM_RETURN)!
  var RegistrationRetrieve: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<sint32>, CSSM_KR_PROFILE_PTR) -> CSSM_RETURN)!
  var GenerateRecoveryFields: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, CSSM_KR_POLICY_FLAGS, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var ProcessRecoveryFields: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, CSSM_KR_POLICY_FLAGS, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!
  var RecoveryRequest: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafeMutablePointer<sint32>, CSSM_HANDLE_PTR) -> CSSM_RETURN)!
  var RecoveryRetrieve: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<sint32>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>) -> CSSM_RETURN)!
  var GetRecoveredObject: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_HANDLE, uint32, CSSM_CSP_HANDLE, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, uint32, CSSM_KEY_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var RecoveryRequestAbort: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!
  var PassThrough: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!
  init()
  init(RegistrationRequest: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, CSSM_KR_POLICY_FLAGS, UnsafeMutablePointer<sint32>, CSSM_HANDLE_PTR) -> CSSM_RETURN)!, RegistrationRetrieve: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<sint32>, CSSM_KR_PROFILE_PTR) -> CSSM_RETURN)!, GenerateRecoveryFields: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, CSSM_KR_POLICY_FLAGS, CSSM_DATA_PTR) -> CSSM_RETURN)!, ProcessRecoveryFields: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, CSSM_KR_POLICY_FLAGS, UnsafePointer<CSSM_DATA>) -> CSSM_RETURN)!, RecoveryRequest: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafeMutablePointer<sint32>, CSSM_HANDLE_PTR) -> CSSM_RETURN)!, RecoveryRetrieve: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_HANDLE, UnsafeMutablePointer<sint32>, CSSM_HANDLE_PTR, UnsafeMutablePointer<uint32>) -> CSSM_RETURN)!, GetRecoveredObject: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_HANDLE, uint32, CSSM_CSP_HANDLE, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>, uint32, CSSM_KEY_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!, RecoveryRequestAbort: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!, PassThrough: (@convention(c) (CSSM_KRSP_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, CSSM_CC_HANDLE, UnsafePointer<CSSM_CONTEXT>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!)
}
typealias CSSM_SPI_ModuleEventHandler = @convention(c) (UnsafePointer<CSSM_GUID>, UnsafeMutablePointer<Void>, uint32, CSSM_SERVICE_TYPE, CSSM_MODULE_EVENT) -> CSSM_RETURN
typealias CSSM_CONTEXT_EVENT = uint32
var CSSM_CONTEXT_EVENT_CREATE: Int { get }
var CSSM_CONTEXT_EVENT_DELETE: Int { get }
var CSSM_CONTEXT_EVENT_UPDATE: Int { get }
struct cssm_module_funcs {
  var ServiceType: CSSM_SERVICE_TYPE
  var NumberOfServiceFuncs: uint32
  var ServiceFuncs: UnsafePointer<CSSM_PROC_ADDR?>
  init()
  init(ServiceType: CSSM_SERVICE_TYPE, NumberOfServiceFuncs: uint32, ServiceFuncs: UnsafePointer<CSSM_PROC_ADDR?>)
}
struct cssm_upcalls {
  var malloc_func: CSSM_UPCALLS_MALLOC!
  var free_func: CSSM_UPCALLS_FREE!
  var realloc_func: CSSM_UPCALLS_REALLOC!
  var calloc_func: CSSM_UPCALLS_CALLOC!
  var CcToHandle_func: (@convention(c) (CSSM_CC_HANDLE, CSSM_MODULE_HANDLE_PTR) -> CSSM_RETURN)!
  var GetModuleInfo_func: (@convention(c) (CSSM_MODULE_HANDLE, CSSM_GUID_PTR, CSSM_VERSION_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_SERVICE_TYPE>, UnsafeMutablePointer<CSSM_ATTACH_FLAGS>, UnsafeMutablePointer<CSSM_KEY_HIERARCHY>, CSSM_API_MEMORY_FUNCS_PTR, CSSM_FUNC_NAME_ADDR_PTR, uint32) -> CSSM_RETURN)!
  init()
  init(malloc_func: CSSM_UPCALLS_MALLOC!, free_func: CSSM_UPCALLS_FREE!, realloc_func: CSSM_UPCALLS_REALLOC!, calloc_func: CSSM_UPCALLS_CALLOC!, CcToHandle_func: (@convention(c) (CSSM_CC_HANDLE, CSSM_MODULE_HANDLE_PTR) -> CSSM_RETURN)!, GetModuleInfo_func: (@convention(c) (CSSM_MODULE_HANDLE, CSSM_GUID_PTR, CSSM_VERSION_PTR, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_SERVICE_TYPE>, UnsafeMutablePointer<CSSM_ATTACH_FLAGS>, UnsafeMutablePointer<CSSM_KEY_HIERARCHY>, CSSM_API_MEMORY_FUNCS_PTR, CSSM_FUNC_NAME_ADDR_PTR, uint32) -> CSSM_RETURN)!)
}
struct cssm_spi_tp_funcs {
  var SubmitCredRequest: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_TP_AUTHORITY_ID>, CSSM_TP_AUTHORITY_REQUEST_TYPE, UnsafePointer<CSSM_TP_REQUEST_SET>, UnsafePointer<CSSM_TP_CALLERAUTH_CONTEXT>, UnsafeMutablePointer<sint32>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var RetrieveCredResult: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_TP_CALLERAUTH_CONTEXT>, UnsafeMutablePointer<sint32>, UnsafeMutablePointer<CSSM_BOOL>, UnsafeMutablePointer<CSSM_TP_RESULT_SET_PTR>) -> CSSM_RETURN)!
  var ConfirmCredResult: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_TP_CALLERAUTH_CONTEXT>, UnsafePointer<CSSM_TP_CONFIRM_RESPONSE>, UnsafePointer<CSSM_TP_AUTHORITY_ID>) -> CSSM_RETURN)!
  var ReceiveConfirmation: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_TP_CONFIRM_RESPONSE_PTR>, UnsafeMutablePointer<sint32>) -> CSSM_RETURN)!
  var CertReclaimKey: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_CERTGROUP>, uint32, CSSM_LONG_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>) -> CSSM_RETURN)!
  var CertReclaimAbort: (@convention(c) (CSSM_TP_HANDLE, CSSM_LONG_HANDLE) -> CSSM_RETURN)!
  var FormRequest: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_TP_AUTHORITY_ID>, CSSM_TP_FORM_TYPE, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var FormSubmit: (@convention(c) (CSSM_TP_HANDLE, CSSM_TP_FORM_TYPE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_TP_AUTHORITY_ID>, UnsafePointer<CSSM_TP_AUTHORITY_ID>, CSSM_ACCESS_CREDENTIALS_PTR) -> CSSM_RETURN)!
  var CertGroupVerify: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR) -> CSSM_RETURN)!
  var CertCreateTemplate: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CertGetAllTemplateFields: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!
  var CertSign: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CrlVerify: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_ENCODED_CRL>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR) -> CSSM_RETURN)!
  var CrlCreateTemplate: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CertRevoke: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR, CSSM_TP_CERTCHANGE_REASON, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CertRemoveFromCrlTemplate: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var CrlSign: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_ENCODED_CRL>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var ApplyCrlToDb: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_ENCODED_CRL>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR) -> CSSM_RETURN)!
  var CertGroupConstruct: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, UnsafePointer<Void>, UnsafePointer<CSSM_CERTGROUP>, UnsafeMutablePointer<CSSM_CERTGROUP_PTR>) -> CSSM_RETURN)!
  var CertGroupPrune: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, UnsafePointer<CSSM_CERTGROUP>, UnsafeMutablePointer<CSSM_CERTGROUP_PTR>) -> CSSM_RETURN)!
  var CertGroupToTupleGroup: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, UnsafePointer<CSSM_CERTGROUP>, UnsafeMutablePointer<CSSM_TUPLEGROUP_PTR>) -> CSSM_RETURN)!
  var TupleGroupToCertGroup: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, UnsafePointer<CSSM_TUPLEGROUP>, UnsafeMutablePointer<CSSM_CERTGROUP_PTR>) -> CSSM_RETURN)!
  var PassThrough: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!
  init()
  init(SubmitCredRequest: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_TP_AUTHORITY_ID>, CSSM_TP_AUTHORITY_REQUEST_TYPE, UnsafePointer<CSSM_TP_REQUEST_SET>, UnsafePointer<CSSM_TP_CALLERAUTH_CONTEXT>, UnsafeMutablePointer<sint32>, CSSM_DATA_PTR) -> CSSM_RETURN)!, RetrieveCredResult: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_TP_CALLERAUTH_CONTEXT>, UnsafeMutablePointer<sint32>, UnsafeMutablePointer<CSSM_BOOL>, UnsafeMutablePointer<CSSM_TP_RESULT_SET_PTR>) -> CSSM_RETURN)!, ConfirmCredResult: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_TP_CALLERAUTH_CONTEXT>, UnsafePointer<CSSM_TP_CONFIRM_RESPONSE>, UnsafePointer<CSSM_TP_AUTHORITY_ID>) -> CSSM_RETURN)!, ReceiveConfirmation: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_TP_CONFIRM_RESPONSE_PTR>, UnsafeMutablePointer<sint32>) -> CSSM_RETURN)!, CertReclaimKey: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_CERTGROUP>, uint32, CSSM_LONG_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_RESOURCE_CONTROL_CONTEXT>) -> CSSM_RETURN)!, CertReclaimAbort: (@convention(c) (CSSM_TP_HANDLE, CSSM_LONG_HANDLE) -> CSSM_RETURN)!, FormRequest: (@convention(c) (CSSM_TP_HANDLE, UnsafePointer<CSSM_TP_AUTHORITY_ID>, CSSM_TP_FORM_TYPE, CSSM_DATA_PTR) -> CSSM_RETURN)!, FormSubmit: (@convention(c) (CSSM_TP_HANDLE, CSSM_TP_FORM_TYPE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_TP_AUTHORITY_ID>, UnsafePointer<CSSM_TP_AUTHORITY_ID>, CSSM_ACCESS_CREDENTIALS_PTR) -> CSSM_RETURN)!, CertGroupVerify: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR) -> CSSM_RETURN)!, CertCreateTemplate: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CertGetAllTemplateFields: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<uint32>, UnsafeMutablePointer<CSSM_FIELD_PTR>) -> CSSM_RETURN)!, CertSign: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!, CrlVerify: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_ENCODED_CRL>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR) -> CSSM_RETURN)!, CrlCreateTemplate: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, uint32, UnsafePointer<CSSM_FIELD>, CSSM_DATA_PTR) -> CSSM_RETURN)!, CertRevoke: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR, CSSM_TP_CERTCHANGE_REASON, CSSM_DATA_PTR) -> CSSM_RETURN)!, CertRemoveFromCrlTemplate: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_DATA>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!, CrlSign: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_ENCODED_CRL>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!, ApplyCrlToDb: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_ENCODED_CRL>, UnsafePointer<CSSM_CERTGROUP>, UnsafePointer<CSSM_TP_VERIFY_CONTEXT>, CSSM_TP_VERIFY_CONTEXT_RESULT_PTR) -> CSSM_RETURN)!, CertGroupConstruct: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CSP_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, UnsafePointer<Void>, UnsafePointer<CSSM_CERTGROUP>, UnsafeMutablePointer<CSSM_CERTGROUP_PTR>) -> CSSM_RETURN)!, CertGroupPrune: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, UnsafePointer<CSSM_CERTGROUP>, UnsafeMutablePointer<CSSM_CERTGROUP_PTR>) -> CSSM_RETURN)!, CertGroupToTupleGroup: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, UnsafePointer<CSSM_CERTGROUP>, UnsafeMutablePointer<CSSM_TUPLEGROUP_PTR>) -> CSSM_RETURN)!, TupleGroupToCertGroup: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, UnsafePointer<CSSM_TUPLEGROUP>, UnsafeMutablePointer<CSSM_CERTGROUP_PTR>) -> CSSM_RETURN)!, PassThrough: (@convention(c) (CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!)
}
typealias CSSM_HANDLE = CSSM_INTPTR
typealias CSSM_HANDLE_PTR = UnsafeMutablePointer<CSSM_INTPTR>
typealias CSSM_LONG_HANDLE = uint64
typealias CSSM_LONG_HANDLE_PTR = UnsafeMutablePointer<uint64>
typealias CSSM_MODULE_HANDLE = CSSM_HANDLE
typealias CSSM_MODULE_HANDLE_PTR = UnsafeMutablePointer<CSSM_HANDLE>
typealias CSSM_CC_HANDLE = CSSM_LONG_HANDLE
typealias CSSM_CSP_HANDLE = CSSM_MODULE_HANDLE
typealias CSSM_TP_HANDLE = CSSM_MODULE_HANDLE
typealias CSSM_AC_HANDLE = CSSM_MODULE_HANDLE
typealias CSSM_CL_HANDLE = CSSM_MODULE_HANDLE
typealias CSSM_DL_HANDLE = CSSM_MODULE_HANDLE
typealias CSSM_DB_HANDLE = CSSM_MODULE_HANDLE
var CSSM_INVALID_HANDLE: Int { get }
typealias CSSM_BOOL = sint32
var CSSM_FALSE: Int { get }
var CSSM_TRUE: Int { get }
typealias CSSM_RETURN = sint32
var CSSM_OK: Int { get }
var CSSM_MODULE_STRING_SIZE: Int { get }
typealias CSSM_STRING = (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
struct cssm_data {
  var Length: CSSM_SIZE
  var Data: UnsafeMutablePointer<uint8>
  init()
  init(Length: CSSM_SIZE, Data: UnsafeMutablePointer<uint8>)
}
struct cssm_guid {
  var Data1: uint32
  var Data2: uint16
  var Data3: uint16
  var Data4: (uint8, uint8, uint8, uint8, uint8, uint8, uint8, uint8)
  init()
  init(Data1: uint32, Data2: uint16, Data3: uint16, Data4: (uint8, uint8, uint8, uint8, uint8, uint8, uint8, uint8))
}
typealias CSSM_BITMASK = uint32
typealias CSSM_KEY_HIERARCHY = CSSM_BITMASK
var CSSM_KEY_HIERARCHY_NONE: Int { get }
var CSSM_KEY_HIERARCHY_INTEG: Int { get }
var CSSM_KEY_HIERARCHY_EXPORT: Int { get }
typealias CSSM_PVC_MODE = CSSM_BITMASK
var CSSM_PVC_NONE: Int { get }
var CSSM_PVC_APP: Int { get }
var CSSM_PVC_SP: Int { get }
typealias CSSM_PRIVILEGE_SCOPE = uint32
var CSSM_PRIVILEGE_SCOPE_NONE: Int { get }
var CSSM_PRIVILEGE_SCOPE_PROCESS: Int { get }
var CSSM_PRIVILEGE_SCOPE_THREAD: Int { get }
struct cssm_version {
  var Major: uint32
  var Minor: uint32
  init()
  init(Major: uint32, Minor: uint32)
}
typealias CSSM_SERVICE_MASK = uint32
var CSSM_SERVICE_CSSM: Int { get }
var CSSM_SERVICE_CSP: Int { get }
var CSSM_SERVICE_DL: Int { get }
var CSSM_SERVICE_CL: Int { get }
var CSSM_SERVICE_TP: Int { get }
var CSSM_SERVICE_AC: Int { get }
var CSSM_SERVICE_KR: Int { get }
typealias CSSM_SERVICE_TYPE = CSSM_SERVICE_MASK
struct cssm_subservice_uid {
  var Guid: CSSM_GUID
  var Version: CSSM_VERSION
  var SubserviceId: uint32
  var SubserviceType: CSSM_SERVICE_TYPE
  init()
  init(Guid: CSSM_GUID, Version: CSSM_VERSION, SubserviceId: uint32, SubserviceType: CSSM_SERVICE_TYPE)
}
typealias CSSM_MODULE_EVENT = uint32
typealias CSSM_MODULE_EVENT_PTR = UnsafeMutablePointer<uint32>
var CSSM_NOTIFY_INSERT: Int { get }
var CSSM_NOTIFY_REMOVE: Int { get }
var CSSM_NOTIFY_FAULT: Int { get }
typealias CSSM_API_ModuleEventHandler = @convention(c) (UnsafePointer<CSSM_GUID>, UnsafeMutablePointer<Void>, uint32, CSSM_SERVICE_TYPE, CSSM_MODULE_EVENT) -> CSSM_RETURN
typealias CSSM_ATTACH_FLAGS = uint32
var CSSM_ATTACH_READ_ONLY: Int { get }
typealias CSSM_PRIVILEGE = uint64
typealias CSSM_USEE_TAG = CSSM_PRIVILEGE
var CSSM_USEE_LAST: Int { get }
var CSSM_USEE_NONE: Int { get }
var CSSM_USEE_DOMESTIC: Int { get }
var CSSM_USEE_FINANCIAL: Int { get }
var CSSM_USEE_KRLE: Int { get }
var CSSM_USEE_KRENT: Int { get }
var CSSM_USEE_SSL: Int { get }
var CSSM_USEE_AUTHENTICATION: Int { get }
var CSSM_USEE_KEYEXCH: Int { get }
var CSSM_USEE_MEDICAL: Int { get }
var CSSM_USEE_INSURANCE: Int { get }
var CSSM_USEE_WEAK: Int { get }
typealias CSSM_NET_ADDRESS_TYPE = uint32
var CSSM_ADDR_NONE: Int { get }
var CSSM_ADDR_CUSTOM: Int { get }
var CSSM_ADDR_URL: Int { get }
var CSSM_ADDR_SOCKADDR: Int { get }
var CSSM_ADDR_NAME: Int { get }
struct cssm_net_address {
  var AddressType: CSSM_NET_ADDRESS_TYPE
  var Address: CSSM_DATA
  init()
  init(AddressType: CSSM_NET_ADDRESS_TYPE, Address: CSSM_DATA)
}
typealias CSSM_NET_PROTOCOL = uint32
var CSSM_NET_PROTO_NONE: Int { get }
var CSSM_NET_PROTO_CUSTOM: Int { get }
var CSSM_NET_PROTO_UNSPECIFIED: Int { get }
var CSSM_NET_PROTO_LDAP: Int { get }
var CSSM_NET_PROTO_LDAPS: Int { get }
var CSSM_NET_PROTO_LDAPNS: Int { get }
var CSSM_NET_PROTO_X500DAP: Int { get }
var CSSM_NET_PROTO_FTP: Int { get }
var CSSM_NET_PROTO_FTPS: Int { get }
var CSSM_NET_PROTO_OCSP: Int { get }
var CSSM_NET_PROTO_CMP: Int { get }
var CSSM_NET_PROTO_CMPS: Int { get }
typealias CSSM_CALLBACK = @convention(c) (CSSM_DATA_PTR, UnsafeMutablePointer<Void>) -> CSSM_RETURN
struct cssm_crypto_data {
  var Param: CSSM_DATA
  var Callback: CSSM_CALLBACK!
  var CallerCtx: UnsafeMutablePointer<Void>
  init()
  init(Param: CSSM_DATA, Callback: CSSM_CALLBACK!, CallerCtx: UnsafeMutablePointer<Void>)
}
typealias CSSM_WORDID_TYPE = sint32
var CSSM_WORDID__UNK_: Int { get }
var CSSM_WORDID__NLU_: Int { get }
var CSSM_WORDID__STAR_: Int { get }
var CSSM_WORDID_A: Int { get }
var CSSM_WORDID_ACL: Int { get }
var CSSM_WORDID_ALPHA: Int { get }
var CSSM_WORDID_B: Int { get }
var CSSM_WORDID_BER: Int { get }
var CSSM_WORDID_BINARY: Int { get }
var CSSM_WORDID_BIOMETRIC: Int { get }
var CSSM_WORDID_C: Int { get }
var CSSM_WORDID_CANCELED: Int { get }
var CSSM_WORDID_CERT: Int { get }
var CSSM_WORDID_COMMENT: Int { get }
var CSSM_WORDID_CRL: Int { get }
var CSSM_WORDID_CUSTOM: Int { get }
var CSSM_WORDID_D: Int { get }
var CSSM_WORDID_DATE: Int { get }
var CSSM_WORDID_DB_DELETE: Int { get }
var CSSM_WORDID_DB_EXEC_STORED_QUERY: Int { get }
var CSSM_WORDID_DB_INSERT: Int { get }
var CSSM_WORDID_DB_MODIFY: Int { get }
var CSSM_WORDID_DB_READ: Int { get }
var CSSM_WORDID_DBS_CREATE: Int { get }
var CSSM_WORDID_DBS_DELETE: Int { get }
var CSSM_WORDID_DECRYPT: Int { get }
var CSSM_WORDID_DELETE: Int { get }
var CSSM_WORDID_DELTA_CRL: Int { get }
var CSSM_WORDID_DER: Int { get }
var CSSM_WORDID_DERIVE: Int { get }
var CSSM_WORDID_DISPLAY: Int { get }
var CSSM_WORDID_DO: Int { get }
var CSSM_WORDID_DSA: Int { get }
var CSSM_WORDID_DSA_SHA1: Int { get }
var CSSM_WORDID_E: Int { get }
var CSSM_WORDID_ELGAMAL: Int { get }
var CSSM_WORDID_ENCRYPT: Int { get }
var CSSM_WORDID_ENTRY: Int { get }
var CSSM_WORDID_EXPORT_CLEAR: Int { get }
var CSSM_WORDID_EXPORT_WRAPPED: Int { get }
var CSSM_WORDID_G: Int { get }
var CSSM_WORDID_GE: Int { get }
var CSSM_WORDID_GENKEY: Int { get }
var CSSM_WORDID_HASH: Int { get }
var CSSM_WORDID_HASHED_PASSWORD: Int { get }
var CSSM_WORDID_HASHED_SUBJECT: Int { get }
var CSSM_WORDID_HAVAL: Int { get }
var CSSM_WORDID_IBCHASH: Int { get }
var CSSM_WORDID_IMPORT_CLEAR: Int { get }
var CSSM_WORDID_IMPORT_WRAPPED: Int { get }
var CSSM_WORDID_INTEL: Int { get }
var CSSM_WORDID_ISSUER: Int { get }
var CSSM_WORDID_ISSUER_INFO: Int { get }
var CSSM_WORDID_K_OF_N: Int { get }
var CSSM_WORDID_KEA: Int { get }
var CSSM_WORDID_KEYHOLDER: Int { get }
var CSSM_WORDID_L: Int { get }
var CSSM_WORDID_LE: Int { get }
var CSSM_WORDID_LOGIN: Int { get }
var CSSM_WORDID_LOGIN_NAME: Int { get }
var CSSM_WORDID_MAC: Int { get }
var CSSM_WORDID_MD2: Int { get }
var CSSM_WORDID_MD2WITHRSA: Int { get }
var CSSM_WORDID_MD4: Int { get }
var CSSM_WORDID_MD5: Int { get }
var CSSM_WORDID_MD5WITHRSA: Int { get }
var CSSM_WORDID_N: Int { get }
var CSSM_WORDID_NAME: Int { get }
var CSSM_WORDID_NDR: Int { get }
var CSSM_WORDID_NHASH: Int { get }
var CSSM_WORDID_NOT_AFTER: Int { get }
var CSSM_WORDID_NOT_BEFORE: Int { get }
var CSSM_WORDID_NULL: Int { get }
var CSSM_WORDID_NUMERIC: Int { get }
var CSSM_WORDID_OBJECT_HASH: Int { get }
var CSSM_WORDID_ONE_TIME: Int { get }
var CSSM_WORDID_ONLINE: Int { get }
var CSSM_WORDID_OWNER: Int { get }
var CSSM_WORDID_P: Int { get }
var CSSM_WORDID_PAM_NAME: Int { get }
var CSSM_WORDID_PASSWORD: Int { get }
var CSSM_WORDID_PGP: Int { get }
var CSSM_WORDID_PREFIX: Int { get }
var CSSM_WORDID_PRIVATE_KEY: Int { get }
var CSSM_WORDID_PROMPTED_BIOMETRIC: Int { get }
var CSSM_WORDID_PROMPTED_PASSWORD: Int { get }
var CSSM_WORDID_PROPAGATE: Int { get }
var CSSM_WORDID_PROTECTED_BIOMETRIC: Int { get }
var CSSM_WORDID_PROTECTED_PASSWORD: Int { get }
var CSSM_WORDID_PROTECTED_PIN: Int { get }
var CSSM_WORDID_PUBLIC_KEY: Int { get }
var CSSM_WORDID_PUBLIC_KEY_FROM_CERT: Int { get }
var CSSM_WORDID_Q: Int { get }
var CSSM_WORDID_RANGE: Int { get }
var CSSM_WORDID_REVAL: Int { get }
var CSSM_WORDID_RIPEMAC: Int { get }
var CSSM_WORDID_RIPEMD: Int { get }
var CSSM_WORDID_RIPEMD160: Int { get }
var CSSM_WORDID_RSA: Int { get }
var CSSM_WORDID_RSA_ISO9796: Int { get }
var CSSM_WORDID_RSA_PKCS: Int { get }
var CSSM_WORDID_RSA_PKCS_MD5: Int { get }
var CSSM_WORDID_RSA_PKCS_SHA1: Int { get }
var CSSM_WORDID_RSA_PKCS1: Int { get }
var CSSM_WORDID_RSA_PKCS1_MD5: Int { get }
var CSSM_WORDID_RSA_PKCS1_SHA1: Int { get }
var CSSM_WORDID_RSA_PKCS1_SIG: Int { get }
var CSSM_WORDID_RSA_RAW: Int { get }
var CSSM_WORDID_SDSIV1: Int { get }
var CSSM_WORDID_SEQUENCE: Int { get }
var CSSM_WORDID_SET: Int { get }
var CSSM_WORDID_SEXPR: Int { get }
var CSSM_WORDID_SHA1: Int { get }
var CSSM_WORDID_SHA1WITHDSA: Int { get }
var CSSM_WORDID_SHA1WITHECDSA: Int { get }
var CSSM_WORDID_SHA1WITHRSA: Int { get }
var CSSM_WORDID_SIGN: Int { get }
var CSSM_WORDID_SIGNATURE: Int { get }
var CSSM_WORDID_SIGNED_NONCE: Int { get }
var CSSM_WORDID_SIGNED_SECRET: Int { get }
var CSSM_WORDID_SPKI: Int { get }
var CSSM_WORDID_SUBJECT: Int { get }
var CSSM_WORDID_SUBJECT_INFO: Int { get }
var CSSM_WORDID_TAG: Int { get }
var CSSM_WORDID_THRESHOLD: Int { get }
var CSSM_WORDID_TIME: Int { get }
var CSSM_WORDID_URI: Int { get }
var CSSM_WORDID_VERSION: Int { get }
var CSSM_WORDID_X509_ATTRIBUTE: Int { get }
var CSSM_WORDID_X509V1: Int { get }
var CSSM_WORDID_X509V2: Int { get }
var CSSM_WORDID_X509V3: Int { get }
var CSSM_WORDID_X9_ATTRIBUTE: Int { get }
var CSSM_WORDID_VENDOR_START: Int { get }
var CSSM_WORDID_VENDOR_END: Int { get }
typealias CSSM_LIST_ELEMENT_TYPE = uint32
typealias CSSM_LIST_ELEMENT_TYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_LIST_ELEMENT_DATUM: Int { get }
var CSSM_LIST_ELEMENT_SUBLIST: Int { get }
var CSSM_LIST_ELEMENT_WORDID: Int { get }
typealias CSSM_LIST_TYPE = uint32
typealias CSSM_LIST_TYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_LIST_TYPE_UNKNOWN: Int { get }
var CSSM_LIST_TYPE_CUSTOM: Int { get }
var CSSM_LIST_TYPE_SEXPR: Int { get }
typealias CSSM_LIST_ELEMENT_PTR = UnsafeMutablePointer<cssm_list_element>
struct cssm_list {
  var ListType: CSSM_LIST_TYPE
  var Head: CSSM_LIST_ELEMENT_PTR
  var Tail: CSSM_LIST_ELEMENT_PTR
  init()
  init(ListType: CSSM_LIST_TYPE, Head: CSSM_LIST_ELEMENT_PTR, Tail: CSSM_LIST_ELEMENT_PTR)
}
struct cssm_list_element {
  struct __Unnamed_union_Element {
    var Sublist: CSSM_LIST
    var Word: CSSM_DATA
    init(Sublist: CSSM_LIST)
    init(Word: CSSM_DATA)
    init()
  }
  var NextElement: UnsafeMutablePointer<cssm_list_element>
  var WordID: CSSM_WORDID_TYPE
  var ElementType: CSSM_LIST_ELEMENT_TYPE
  var Element: cssm_list_element.__Unnamed_union_Element
  init()
  init(NextElement: UnsafeMutablePointer<cssm_list_element>, WordID: CSSM_WORDID_TYPE, ElementType: CSSM_LIST_ELEMENT_TYPE, Element: cssm_list_element.__Unnamed_union_Element)
}
typealias CSSM_LIST_ELEMENT = cssm_list_element
struct cssm_tuplegroup {
  var NumberOfTuples: uint32
  var Tuples: CSSM_TUPLE_PTR
  init()
  init(NumberOfTuples: uint32, Tuples: CSSM_TUPLE_PTR)
}
typealias CSSM_SAMPLE_TYPE = CSSM_WORDID_TYPE
var CSSM_SAMPLE_TYPE_PASSWORD: Int { get }
var CSSM_SAMPLE_TYPE_HASHED_PASSWORD: Int { get }
var CSSM_SAMPLE_TYPE_PROTECTED_PASSWORD: Int { get }
var CSSM_SAMPLE_TYPE_PROMPTED_PASSWORD: Int { get }
var CSSM_SAMPLE_TYPE_SIGNED_NONCE: Int { get }
var CSSM_SAMPLE_TYPE_SIGNED_SECRET: Int { get }
var CSSM_SAMPLE_TYPE_BIOMETRIC: Int { get }
var CSSM_SAMPLE_TYPE_PROTECTED_BIOMETRIC: Int { get }
var CSSM_SAMPLE_TYPE_PROMPTED_BIOMETRIC: Int { get }
var CSSM_SAMPLE_TYPE_THRESHOLD: Int { get }
struct cssm_sample {
  var TypedSample: CSSM_LIST
  var Verifier: UnsafePointer<CSSM_SUBSERVICE_UID>
  init()
  init(TypedSample: CSSM_LIST, Verifier: UnsafePointer<CSSM_SUBSERVICE_UID>)
}
struct cssm_samplegroup {
  var NumberOfSamples: uint32
  var Samples: UnsafePointer<CSSM_SAMPLE>
  init()
  init(NumberOfSamples: uint32, Samples: UnsafePointer<CSSM_SAMPLE>)
}
typealias CSSM_MALLOC = @convention(c) (CSSM_SIZE, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>
typealias CSSM_FREE = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
typealias CSSM_REALLOC = @convention(c) (UnsafeMutablePointer<Void>, CSSM_SIZE, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>
typealias CSSM_CALLOC = @convention(c) (uint32, CSSM_SIZE, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>
struct cssm_memory_funcs {
  var malloc_func: CSSM_MALLOC!
  var free_func: CSSM_FREE!
  var realloc_func: CSSM_REALLOC!
  var calloc_func: CSSM_CALLOC!
  var AllocRef: UnsafeMutablePointer<Void>
  init()
  init(malloc_func: CSSM_MALLOC!, free_func: CSSM_FREE!, realloc_func: CSSM_REALLOC!, calloc_func: CSSM_CALLOC!, AllocRef: UnsafeMutablePointer<Void>)
}
typealias CSSM_API_MEMORY_FUNCS = CSSM_MEMORY_FUNCS
typealias CSSM_API_MEMORY_FUNCS_PTR = UnsafeMutablePointer<CSSM_API_MEMORY_FUNCS>
typealias CSSM_CHALLENGE_CALLBACK = @convention(c) (UnsafePointer<CSSM_LIST>, CSSM_SAMPLEGROUP_PTR, UnsafeMutablePointer<Void>, UnsafePointer<CSSM_MEMORY_FUNCS>) -> CSSM_RETURN
typealias CSSM_CERT_TYPE = uint32
typealias CSSM_CERT_TYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_CERT_UNKNOWN: Int { get }
var CSSM_CERT_X_509v1: Int { get }
var CSSM_CERT_X_509v2: Int { get }
var CSSM_CERT_X_509v3: Int { get }
var CSSM_CERT_PGP: Int { get }
var CSSM_CERT_SPKI: Int { get }
var CSSM_CERT_SDSIv1: Int { get }
var CSSM_CERT_Intel: Int { get }
var CSSM_CERT_X_509_ATTRIBUTE: Int { get }
var CSSM_CERT_X9_ATTRIBUTE: Int { get }
var CSSM_CERT_TUPLE: Int { get }
var CSSM_CERT_ACL_ENTRY: Int { get }
var CSSM_CERT_MULTIPLE: Int { get }
var CSSM_CERT_LAST: Int { get }
var CSSM_CL_CUSTOM_CERT_TYPE: Int { get }
typealias CSSM_CERT_ENCODING = uint32
typealias CSSM_CERT_ENCODING_PTR = UnsafeMutablePointer<uint32>
var CSSM_CERT_ENCODING_UNKNOWN: Int { get }
var CSSM_CERT_ENCODING_CUSTOM: Int { get }
var CSSM_CERT_ENCODING_BER: Int { get }
var CSSM_CERT_ENCODING_DER: Int { get }
var CSSM_CERT_ENCODING_NDR: Int { get }
var CSSM_CERT_ENCODING_SEXPR: Int { get }
var CSSM_CERT_ENCODING_PGP: Int { get }
var CSSM_CERT_ENCODING_MULTIPLE: Int { get }
var CSSM_CERT_ENCODING_LAST: Int { get }
var CSSM_CL_CUSTOM_CERT_ENCODING: Int { get }
struct cssm_encoded_cert {
  var CertType: CSSM_CERT_TYPE
  var CertEncoding: CSSM_CERT_ENCODING
  var CertBlob: CSSM_DATA
  init()
  init(CertType: CSSM_CERT_TYPE, CertEncoding: CSSM_CERT_ENCODING, CertBlob: CSSM_DATA)
}
typealias CSSM_CERT_PARSE_FORMAT = uint32
typealias CSSM_CERT_PARSE_FORMAT_PTR = UnsafeMutablePointer<uint32>
var CSSM_CERT_PARSE_FORMAT_NONE: Int { get }
var CSSM_CERT_PARSE_FORMAT_CUSTOM: Int { get }
var CSSM_CERT_PARSE_FORMAT_SEXPR: Int { get }
var CSSM_CERT_PARSE_FORMAT_COMPLEX: Int { get }
var CSSM_CERT_PARSE_FORMAT_OID_NAMED: Int { get }
var CSSM_CERT_PARSE_FORMAT_TUPLE: Int { get }
var CSSM_CERT_PARSE_FORMAT_MULTIPLE: Int { get }
var CSSM_CERT_PARSE_FORMAT_LAST: Int { get }
var CSSM_CL_CUSTOM_CERT_PARSE_FORMAT: Int { get }
struct cssm_parsed_cert {
  var CertType: CSSM_CERT_TYPE
  var ParsedCertFormat: CSSM_CERT_PARSE_FORMAT
  var ParsedCert: UnsafeMutablePointer<Void>
  init()
  init(CertType: CSSM_CERT_TYPE, ParsedCertFormat: CSSM_CERT_PARSE_FORMAT, ParsedCert: UnsafeMutablePointer<Void>)
}
struct cssm_cert_pair {
  var EncodedCert: CSSM_ENCODED_CERT
  var ParsedCert: CSSM_PARSED_CERT
  init()
  init(EncodedCert: CSSM_ENCODED_CERT, ParsedCert: CSSM_PARSED_CERT)
}
typealias CSSM_CERTGROUP_TYPE = uint32
typealias CSSM_CERTGROUP_TYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_CERTGROUP_DATA: Int { get }
var CSSM_CERTGROUP_ENCODED_CERT: Int { get }
var CSSM_CERTGROUP_PARSED_CERT: Int { get }
var CSSM_CERTGROUP_CERT_PAIR: Int { get }
struct cssm_certgroup {
  struct __Unnamed_union_GroupList {
    var CertList: CSSM_DATA_PTR
    var EncodedCertList: CSSM_ENCODED_CERT_PTR
    var ParsedCertList: CSSM_PARSED_CERT_PTR
    var PairCertList: CSSM_CERT_PAIR_PTR
    init(CertList: CSSM_DATA_PTR)
    init(EncodedCertList: CSSM_ENCODED_CERT_PTR)
    init(ParsedCertList: CSSM_PARSED_CERT_PTR)
    init(PairCertList: CSSM_CERT_PAIR_PTR)
    init()
  }
  var CertType: CSSM_CERT_TYPE
  var CertEncoding: CSSM_CERT_ENCODING
  var NumCerts: uint32
  var GroupList: cssm_certgroup.__Unnamed_union_GroupList
  var CertGroupType: CSSM_CERTGROUP_TYPE
  var Reserved: UnsafeMutablePointer<Void>
  init()
  init(CertType: CSSM_CERT_TYPE, CertEncoding: CSSM_CERT_ENCODING, NumCerts: uint32, GroupList: cssm_certgroup.__Unnamed_union_GroupList, CertGroupType: CSSM_CERTGROUP_TYPE, Reserved: UnsafeMutablePointer<Void>)
}
typealias CSSM_CERTGROUP = cssm_certgroup
typealias CSSM_CERTGROUP_PTR = UnsafeMutablePointer<cssm_certgroup>
struct cssm_base_certs {
  var TPHandle: CSSM_TP_HANDLE
  var CLHandle: CSSM_CL_HANDLE
  var Certs: CSSM_CERTGROUP
  init()
  init(TPHandle: CSSM_TP_HANDLE, CLHandle: CSSM_CL_HANDLE, Certs: CSSM_CERTGROUP)
}
struct cssm_access_credentials {
  var EntryTag: CSSM_STRING
  var BaseCerts: CSSM_BASE_CERTS
  var Samples: CSSM_SAMPLEGROUP
  var Callback: CSSM_CHALLENGE_CALLBACK!
  var CallerCtx: UnsafeMutablePointer<Void>
  init()
  init(EntryTag: CSSM_STRING, BaseCerts: CSSM_BASE_CERTS, Samples: CSSM_SAMPLEGROUP, Callback: CSSM_CHALLENGE_CALLBACK!, CallerCtx: UnsafeMutablePointer<Void>)
}
typealias CSSM_ACL_SUBJECT_TYPE = sint32
var CSSM_ACL_SUBJECT_TYPE_ANY: Int { get }
var CSSM_ACL_SUBJECT_TYPE_THRESHOLD: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PASSWORD: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PROTECTED_PASSWORD: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PROMPTED_PASSWORD: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PUBLIC_KEY: Int { get }
var CSSM_ACL_SUBJECT_TYPE_HASHED_SUBJECT: Int { get }
var CSSM_ACL_SUBJECT_TYPE_BIOMETRIC: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PROTECTED_BIOMETRIC: Int { get }
var CSSM_ACL_SUBJECT_TYPE_PROMPTED_BIOMETRIC: Int { get }
var CSSM_ACL_SUBJECT_TYPE_LOGIN_NAME: Int { get }
var CSSM_ACL_SUBJECT_TYPE_EXT_PAM_NAME: Int { get }
typealias CSSM_ACL_AUTHORIZATION_TAG = sint32
var CSSM_ACL_AUTHORIZATION_TAG_VENDOR_DEFINED_START: Int { get }
var CSSM_ACL_AUTHORIZATION_ANY: Int { get }
var CSSM_ACL_AUTHORIZATION_LOGIN: Int { get }
var CSSM_ACL_AUTHORIZATION_GENKEY: Int { get }
var CSSM_ACL_AUTHORIZATION_DELETE: Int { get }
var CSSM_ACL_AUTHORIZATION_EXPORT_WRAPPED: Int { get }
var CSSM_ACL_AUTHORIZATION_EXPORT_CLEAR: Int { get }
var CSSM_ACL_AUTHORIZATION_IMPORT_WRAPPED: Int { get }
var CSSM_ACL_AUTHORIZATION_IMPORT_CLEAR: Int { get }
var CSSM_ACL_AUTHORIZATION_SIGN: Int { get }
var CSSM_ACL_AUTHORIZATION_ENCRYPT: Int { get }
var CSSM_ACL_AUTHORIZATION_DECRYPT: Int { get }
var CSSM_ACL_AUTHORIZATION_MAC: Int { get }
var CSSM_ACL_AUTHORIZATION_DERIVE: Int { get }
var CSSM_ACL_AUTHORIZATION_DBS_CREATE: Int { get }
var CSSM_ACL_AUTHORIZATION_DBS_DELETE: Int { get }
var CSSM_ACL_AUTHORIZATION_DB_READ: Int { get }
var CSSM_ACL_AUTHORIZATION_DB_INSERT: Int { get }
var CSSM_ACL_AUTHORIZATION_DB_MODIFY: Int { get }
var CSSM_ACL_AUTHORIZATION_DB_DELETE: Int { get }
struct cssm_authorizationgroup {
  var NumberOfAuthTags: uint32
  var AuthTags: UnsafeMutablePointer<CSSM_ACL_AUTHORIZATION_TAG>
  init()
  init(NumberOfAuthTags: uint32, AuthTags: UnsafeMutablePointer<CSSM_ACL_AUTHORIZATION_TAG>)
}
struct cssm_acl_validity_period {
  var StartDate: CSSM_DATA
  var EndDate: CSSM_DATA
  init()
  init(StartDate: CSSM_DATA, EndDate: CSSM_DATA)
}
struct cssm_acl_entry_prototype {
  var TypedSubject: CSSM_LIST
  var Delegate: CSSM_BOOL
  var Authorization: CSSM_AUTHORIZATIONGROUP
  var TimeRange: CSSM_ACL_VALIDITY_PERIOD
  var EntryTag: CSSM_STRING
  init()
  init(TypedSubject: CSSM_LIST, Delegate: CSSM_BOOL, Authorization: CSSM_AUTHORIZATIONGROUP, TimeRange: CSSM_ACL_VALIDITY_PERIOD, EntryTag: CSSM_STRING)
}
struct cssm_acl_owner_prototype {
  var TypedSubject: CSSM_LIST
  var Delegate: CSSM_BOOL
  init()
  init(TypedSubject: CSSM_LIST, Delegate: CSSM_BOOL)
}
typealias CSSM_ACL_SUBJECT_CALLBACK = @convention(c) (UnsafePointer<CSSM_LIST>, CSSM_LIST_PTR, UnsafeMutablePointer<Void>, UnsafePointer<CSSM_MEMORY_FUNCS>) -> CSSM_RETURN
struct cssm_acl_entry_input {
  var Prototype: CSSM_ACL_ENTRY_PROTOTYPE
  var Callback: CSSM_ACL_SUBJECT_CALLBACK!
  var CallerContext: UnsafeMutablePointer<Void>
  init()
  init(Prototype: CSSM_ACL_ENTRY_PROTOTYPE, Callback: CSSM_ACL_SUBJECT_CALLBACK!, CallerContext: UnsafeMutablePointer<Void>)
}
struct cssm_resource_control_context {
  var AccessCred: CSSM_ACCESS_CREDENTIALS_PTR
  var InitialAclEntry: CSSM_ACL_ENTRY_INPUT
  init()
  init(AccessCred: CSSM_ACCESS_CREDENTIALS_PTR, InitialAclEntry: CSSM_ACL_ENTRY_INPUT)
}
typealias CSSM_ACL_HANDLE = CSSM_HANDLE
struct cssm_acl_entry_info {
  var EntryPublicInfo: CSSM_ACL_ENTRY_PROTOTYPE
  var EntryHandle: CSSM_ACL_HANDLE
  init()
  init(EntryPublicInfo: CSSM_ACL_ENTRY_PROTOTYPE, EntryHandle: CSSM_ACL_HANDLE)
}
typealias CSSM_ACL_EDIT_MODE = uint32
var CSSM_ACL_EDIT_MODE_ADD: Int { get }
var CSSM_ACL_EDIT_MODE_DELETE: Int { get }
var CSSM_ACL_EDIT_MODE_REPLACE: Int { get }
struct cssm_acl_edit {
  var EditMode: CSSM_ACL_EDIT_MODE
  var OldEntryHandle: CSSM_ACL_HANDLE
  var NewEntry: UnsafePointer<CSSM_ACL_ENTRY_INPUT>
  init()
  init(EditMode: CSSM_ACL_EDIT_MODE, OldEntryHandle: CSSM_ACL_HANDLE, NewEntry: UnsafePointer<CSSM_ACL_ENTRY_INPUT>)
}
typealias CSSM_PROC_ADDR = @convention(c) () -> Void
typealias CSSM_PROC_ADDR_PTR = UnsafeMutablePointer<CSSM_PROC_ADDR?>
struct cssm_func_name_addr {
  var Name: CSSM_STRING
  var Address: CSSM_PROC_ADDR!
  init()
  init(Name: CSSM_STRING, Address: CSSM_PROC_ADDR!)
}
struct cssm_date {
  var Year: (uint8, uint8, uint8, uint8)
  var Month: (uint8, uint8)
  var Day: (uint8, uint8)
  init()
  init(Year: (uint8, uint8, uint8, uint8), Month: (uint8, uint8), Day: (uint8, uint8))
}
struct cssm_range {
  var Min: uint32
  var Max: uint32
  init()
  init(Min: uint32, Max: uint32)
}
struct cssm_query_size_data {
  var SizeInputBlock: uint32
  var SizeOutputBlock: uint32
  init()
  init(SizeInputBlock: uint32, SizeOutputBlock: uint32)
}
typealias CSSM_HEADERVERSION = uint32
var CSSM_KEYHEADER_VERSION: Int { get }
struct cssm_key_size {
  var LogicalKeySizeInBits: uint32
  var EffectiveKeySizeInBits: uint32
  init()
  init(LogicalKeySizeInBits: uint32, EffectiveKeySizeInBits: uint32)
}
typealias CSSM_KEYBLOB_TYPE = uint32
var CSSM_KEYBLOB_RAW: UInt32 { get }
var CSSM_KEYBLOB_REFERENCE: UInt32 { get }
var CSSM_KEYBLOB_WRAPPED: UInt32 { get }
var CSSM_KEYBLOB_OTHER: UInt32 { get }
typealias CSSM_KEYBLOB_FORMAT = uint32
var CSSM_KEYBLOB_RAW_FORMAT_NONE: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_PKCS1: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_PKCS3: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_MSCAPI: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_PGP: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_FIPS186: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_BSAFE: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_CCA: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_PKCS8: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_SPKI: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_OCTET_STRING: UInt32 { get }
var CSSM_KEYBLOB_RAW_FORMAT_OTHER: UInt32 { get }
var CSSM_KEYBLOB_WRAPPED_FORMAT_NONE: UInt32 { get }
var CSSM_KEYBLOB_WRAPPED_FORMAT_PKCS8: UInt32 { get }
var CSSM_KEYBLOB_WRAPPED_FORMAT_PKCS7: UInt32 { get }
var CSSM_KEYBLOB_WRAPPED_FORMAT_MSCAPI: UInt32 { get }
var CSSM_KEYBLOB_WRAPPED_FORMAT_OTHER: UInt32 { get }
var CSSM_KEYBLOB_REF_FORMAT_INTEGER: UInt32 { get }
var CSSM_KEYBLOB_REF_FORMAT_STRING: UInt32 { get }
var CSSM_KEYBLOB_REF_FORMAT_SPKI: UInt32 { get }
var CSSM_KEYBLOB_REF_FORMAT_OTHER: UInt32 { get }
typealias CSSM_KEYCLASS = uint32
var CSSM_KEYCLASS_PUBLIC_KEY: UInt32 { get }
var CSSM_KEYCLASS_PRIVATE_KEY: UInt32 { get }
var CSSM_KEYCLASS_SESSION_KEY: UInt32 { get }
var CSSM_KEYCLASS_SECRET_PART: UInt32 { get }
var CSSM_KEYCLASS_OTHER: UInt32 { get }
typealias CSSM_KEYATTR_FLAGS = uint32
var CSSM_KEYATTR_RETURN_DEFAULT: Int { get }
var CSSM_KEYATTR_RETURN_DATA: Int { get }
var CSSM_KEYATTR_RETURN_REF: Int { get }
var CSSM_KEYATTR_RETURN_NONE: Int { get }
var CSSM_KEYATTR_PERMANENT: Int { get }
var CSSM_KEYATTR_PRIVATE: Int { get }
var CSSM_KEYATTR_MODIFIABLE: Int { get }
var CSSM_KEYATTR_SENSITIVE: Int { get }
var CSSM_KEYATTR_EXTRACTABLE: Int { get }
var CSSM_KEYATTR_ALWAYS_SENSITIVE: Int { get }
var CSSM_KEYATTR_NEVER_EXTRACTABLE: Int { get }
typealias CSSM_KEYUSE = uint32
var CSSM_KEYUSE_ANY: UInt32 { get }
var CSSM_KEYUSE_ENCRYPT: UInt32 { get }
var CSSM_KEYUSE_DECRYPT: UInt32 { get }
var CSSM_KEYUSE_SIGN: UInt32 { get }
var CSSM_KEYUSE_VERIFY: UInt32 { get }
var CSSM_KEYUSE_SIGN_RECOVER: UInt32 { get }
var CSSM_KEYUSE_VERIFY_RECOVER: UInt32 { get }
var CSSM_KEYUSE_WRAP: UInt32 { get }
var CSSM_KEYUSE_UNWRAP: UInt32 { get }
var CSSM_KEYUSE_DERIVE: UInt32 { get }
typealias CSSM_ALGORITHMS = uint32
var CSSM_ALGID_NONE: UInt32 { get }
var CSSM_ALGID_CUSTOM: UInt32 { get }
var CSSM_ALGID_DH: UInt32 { get }
var CSSM_ALGID_PH: UInt32 { get }
var CSSM_ALGID_KEA: UInt32 { get }
var CSSM_ALGID_MD2: UInt32 { get }
var CSSM_ALGID_MD4: UInt32 { get }
var CSSM_ALGID_MD5: UInt32 { get }
var CSSM_ALGID_SHA1: UInt32 { get }
var CSSM_ALGID_NHASH: UInt32 { get }
var CSSM_ALGID_HAVAL: UInt32 { get }
var CSSM_ALGID_RIPEMD: UInt32 { get }
var CSSM_ALGID_IBCHASH: UInt32 { get }
var CSSM_ALGID_RIPEMAC: UInt32 { get }
var CSSM_ALGID_DES: UInt32 { get }
var CSSM_ALGID_DESX: UInt32 { get }
var CSSM_ALGID_RDES: UInt32 { get }
var CSSM_ALGID_3DES_3KEY_EDE: UInt32 { get }
var CSSM_ALGID_3DES_2KEY_EDE: UInt32 { get }
var CSSM_ALGID_3DES_1KEY_EEE: UInt32 { get }
var CSSM_ALGID_3DES_3KEY: UInt32 { get }
var CSSM_ALGID_3DES_3KEY_EEE: UInt32 { get }
var CSSM_ALGID_3DES_2KEY: UInt32 { get }
var CSSM_ALGID_3DES_2KEY_EEE: UInt32 { get }
var CSSM_ALGID_3DES_1KEY: UInt32 { get }
var CSSM_ALGID_IDEA: UInt32 { get }
var CSSM_ALGID_RC2: UInt32 { get }
var CSSM_ALGID_RC5: UInt32 { get }
var CSSM_ALGID_RC4: UInt32 { get }
var CSSM_ALGID_SEAL: UInt32 { get }
var CSSM_ALGID_CAST: UInt32 { get }
var CSSM_ALGID_BLOWFISH: UInt32 { get }
var CSSM_ALGID_SKIPJACK: UInt32 { get }
var CSSM_ALGID_LUCIFER: UInt32 { get }
var CSSM_ALGID_MADRYGA: UInt32 { get }
var CSSM_ALGID_FEAL: UInt32 { get }
var CSSM_ALGID_REDOC: UInt32 { get }
var CSSM_ALGID_REDOC3: UInt32 { get }
var CSSM_ALGID_LOKI: UInt32 { get }
var CSSM_ALGID_KHUFU: UInt32 { get }
var CSSM_ALGID_KHAFRE: UInt32 { get }
var CSSM_ALGID_MMB: UInt32 { get }
var CSSM_ALGID_GOST: UInt32 { get }
var CSSM_ALGID_SAFER: UInt32 { get }
var CSSM_ALGID_CRAB: UInt32 { get }
var CSSM_ALGID_RSA: UInt32 { get }
var CSSM_ALGID_DSA: UInt32 { get }
var CSSM_ALGID_MD5WithRSA: UInt32 { get }
var CSSM_ALGID_MD2WithRSA: UInt32 { get }
var CSSM_ALGID_ElGamal: UInt32 { get }
var CSSM_ALGID_MD2Random: UInt32 { get }
var CSSM_ALGID_MD5Random: UInt32 { get }
var CSSM_ALGID_SHARandom: UInt32 { get }
var CSSM_ALGID_DESRandom: UInt32 { get }
var CSSM_ALGID_SHA1WithRSA: UInt32 { get }
var CSSM_ALGID_CDMF: UInt32 { get }
var CSSM_ALGID_CAST3: UInt32 { get }
var CSSM_ALGID_CAST5: UInt32 { get }
var CSSM_ALGID_GenericSecret: UInt32 { get }
var CSSM_ALGID_ConcatBaseAndKey: UInt32 { get }
var CSSM_ALGID_ConcatKeyAndBase: UInt32 { get }
var CSSM_ALGID_ConcatBaseAndData: UInt32 { get }
var CSSM_ALGID_ConcatDataAndBase: UInt32 { get }
var CSSM_ALGID_XORBaseAndData: UInt32 { get }
var CSSM_ALGID_ExtractFromKey: UInt32 { get }
var CSSM_ALGID_SSL3PreMasterGen: UInt32 { get }
var CSSM_ALGID_SSL3MasterDerive: UInt32 { get }
var CSSM_ALGID_SSL3KeyAndMacDerive: UInt32 { get }
var CSSM_ALGID_SSL3MD5_MAC: UInt32 { get }
var CSSM_ALGID_SSL3SHA1_MAC: UInt32 { get }
var CSSM_ALGID_PKCS5_PBKDF1_MD5: UInt32 { get }
var CSSM_ALGID_PKCS5_PBKDF1_MD2: UInt32 { get }
var CSSM_ALGID_PKCS5_PBKDF1_SHA1: UInt32 { get }
var CSSM_ALGID_WrapLynks: UInt32 { get }
var CSSM_ALGID_WrapSET_OAEP: UInt32 { get }
var CSSM_ALGID_BATON: UInt32 { get }
var CSSM_ALGID_ECDSA: UInt32 { get }
var CSSM_ALGID_MAYFLY: UInt32 { get }
var CSSM_ALGID_JUNIPER: UInt32 { get }
var CSSM_ALGID_FASTHASH: UInt32 { get }
var CSSM_ALGID_3DES: UInt32 { get }
var CSSM_ALGID_SSL3MD5: UInt32 { get }
var CSSM_ALGID_SSL3SHA1: UInt32 { get }
var CSSM_ALGID_FortezzaTimestamp: UInt32 { get }
var CSSM_ALGID_SHA1WithDSA: UInt32 { get }
var CSSM_ALGID_SHA1WithECDSA: UInt32 { get }
var CSSM_ALGID_DSA_BSAFE: UInt32 { get }
var CSSM_ALGID_ECDH: UInt32 { get }
var CSSM_ALGID_ECMQV: UInt32 { get }
var CSSM_ALGID_PKCS12_SHA1_PBE: UInt32 { get }
var CSSM_ALGID_ECNRA: UInt32 { get }
var CSSM_ALGID_SHA1WithECNRA: UInt32 { get }
var CSSM_ALGID_ECES: UInt32 { get }
var CSSM_ALGID_ECAES: UInt32 { get }
var CSSM_ALGID_SHA1HMAC: UInt32 { get }
var CSSM_ALGID_FIPS186Random: UInt32 { get }
var CSSM_ALGID_ECC: UInt32 { get }
var CSSM_ALGID_MQV: UInt32 { get }
var CSSM_ALGID_NRA: UInt32 { get }
var CSSM_ALGID_IntelPlatformRandom: UInt32 { get }
var CSSM_ALGID_UTC: UInt32 { get }
var CSSM_ALGID_HAVAL3: UInt32 { get }
var CSSM_ALGID_HAVAL4: UInt32 { get }
var CSSM_ALGID_HAVAL5: UInt32 { get }
var CSSM_ALGID_TIGER: UInt32 { get }
var CSSM_ALGID_MD5HMAC: UInt32 { get }
var CSSM_ALGID_PKCS5_PBKDF2: UInt32 { get }
var CSSM_ALGID_RUNNING_COUNTER: UInt32 { get }
var CSSM_ALGID_LAST: UInt32 { get }
var CSSM_ALGID_VENDOR_DEFINED: UInt32 { get }
typealias CSSM_ENCRYPT_MODE = uint32
var CSSM_ALGMODE_NONE: UInt32 { get }
var CSSM_ALGMODE_CUSTOM: UInt32 { get }
var CSSM_ALGMODE_ECB: UInt32 { get }
var CSSM_ALGMODE_ECBPad: UInt32 { get }
var CSSM_ALGMODE_CBC: UInt32 { get }
var CSSM_ALGMODE_CBC_IV8: UInt32 { get }
var CSSM_ALGMODE_CBCPadIV8: UInt32 { get }
var CSSM_ALGMODE_CFB: UInt32 { get }
var CSSM_ALGMODE_CFB_IV8: UInt32 { get }
var CSSM_ALGMODE_CFBPadIV8: UInt32 { get }
var CSSM_ALGMODE_OFB: UInt32 { get }
var CSSM_ALGMODE_OFB_IV8: UInt32 { get }
var CSSM_ALGMODE_OFBPadIV8: UInt32 { get }
var CSSM_ALGMODE_COUNTER: UInt32 { get }
var CSSM_ALGMODE_BC: UInt32 { get }
var CSSM_ALGMODE_PCBC: UInt32 { get }
var CSSM_ALGMODE_CBCC: UInt32 { get }
var CSSM_ALGMODE_OFBNLF: UInt32 { get }
var CSSM_ALGMODE_PBC: UInt32 { get }
var CSSM_ALGMODE_PFB: UInt32 { get }
var CSSM_ALGMODE_CBCPD: UInt32 { get }
var CSSM_ALGMODE_PUBLIC_KEY: UInt32 { get }
var CSSM_ALGMODE_PRIVATE_KEY: UInt32 { get }
var CSSM_ALGMODE_SHUFFLE: UInt32 { get }
var CSSM_ALGMODE_ECB64: UInt32 { get }
var CSSM_ALGMODE_CBC64: UInt32 { get }
var CSSM_ALGMODE_OFB64: UInt32 { get }
var CSSM_ALGMODE_CFB32: UInt32 { get }
var CSSM_ALGMODE_CFB16: UInt32 { get }
var CSSM_ALGMODE_CFB8: UInt32 { get }
var CSSM_ALGMODE_WRAP: UInt32 { get }
var CSSM_ALGMODE_PRIVATE_WRAP: UInt32 { get }
var CSSM_ALGMODE_RELAYX: UInt32 { get }
var CSSM_ALGMODE_ECB128: UInt32 { get }
var CSSM_ALGMODE_ECB96: UInt32 { get }
var CSSM_ALGMODE_CBC128: UInt32 { get }
var CSSM_ALGMODE_OAEP_HASH: UInt32 { get }
var CSSM_ALGMODE_PKCS1_EME_V15: UInt32 { get }
var CSSM_ALGMODE_PKCS1_EME_OAEP: UInt32 { get }
var CSSM_ALGMODE_PKCS1_EMSA_V15: UInt32 { get }
var CSSM_ALGMODE_ISO_9796: UInt32 { get }
var CSSM_ALGMODE_X9_31: UInt32 { get }
var CSSM_ALGMODE_LAST: UInt32 { get }
var CSSM_ALGMODE_VENDOR_DEFINED: UInt32 { get }
struct cssm_keyheader {
  var HeaderVersion: CSSM_HEADERVERSION
  var CspId: CSSM_GUID
  var BlobType: CSSM_KEYBLOB_TYPE
  var Format: CSSM_KEYBLOB_FORMAT
  var AlgorithmId: CSSM_ALGORITHMS
  var KeyClass: CSSM_KEYCLASS
  var LogicalKeySizeInBits: uint32
  var KeyAttr: CSSM_KEYATTR_FLAGS
  var KeyUsage: CSSM_KEYUSE
  var StartDate: CSSM_DATE
  var EndDate: CSSM_DATE
  var WrapAlgorithmId: CSSM_ALGORITHMS
  var WrapMode: CSSM_ENCRYPT_MODE
  var Reserved: uint32
  init()
  init(HeaderVersion: CSSM_HEADERVERSION, CspId: CSSM_GUID, BlobType: CSSM_KEYBLOB_TYPE, Format: CSSM_KEYBLOB_FORMAT, AlgorithmId: CSSM_ALGORITHMS, KeyClass: CSSM_KEYCLASS, LogicalKeySizeInBits: uint32, KeyAttr: CSSM_KEYATTR_FLAGS, KeyUsage: CSSM_KEYUSE, StartDate: CSSM_DATE, EndDate: CSSM_DATE, WrapAlgorithmId: CSSM_ALGORITHMS, WrapMode: CSSM_ENCRYPT_MODE, Reserved: uint32)
}
struct cssm_key {
  var KeyHeader: CSSM_KEYHEADER
  var KeyData: CSSM_DATA
  init()
  init(KeyHeader: CSSM_KEYHEADER, KeyData: CSSM_DATA)
}
typealias CSSM_WRAP_KEY = CSSM_KEY
typealias CSSM_WRAP_KEY_PTR = UnsafeMutablePointer<CSSM_KEY>
typealias CSSM_CSPTYPE = uint32
var CSSM_CSP_SOFTWARE: Int { get }
var CSSM_CSP_HARDWARE: Int { get }
var CSSM_CSP_HYBRID: Int { get }
struct cssm_dl_db_handle {
  var DLHandle: CSSM_DL_HANDLE
  var DBHandle: CSSM_DB_HANDLE
  init()
  init(DLHandle: CSSM_DL_HANDLE, DBHandle: CSSM_DB_HANDLE)
}
typealias CSSM_CONTEXT_TYPE = uint32
var CSSM_ALGCLASS_NONE: Int { get }
var CSSM_ALGCLASS_CUSTOM: Int { get }
var CSSM_ALGCLASS_SIGNATURE: Int { get }
var CSSM_ALGCLASS_SYMMETRIC: Int { get }
var CSSM_ALGCLASS_DIGEST: Int { get }
var CSSM_ALGCLASS_RANDOMGEN: Int { get }
var CSSM_ALGCLASS_UNIQUEGEN: Int { get }
var CSSM_ALGCLASS_MAC: Int { get }
var CSSM_ALGCLASS_ASYMMETRIC: Int { get }
var CSSM_ALGCLASS_KEYGEN: Int { get }
var CSSM_ALGCLASS_DERIVEKEY: Int { get }
var CSSM_ATTRIBUTE_DATA_NONE: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_UINT32: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_CSSM_DATA: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_CRYPTO_DATA: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_KEY: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_STRING: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_DATE: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_RANGE: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_ACCESS_CREDENTIALS: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_VERSION: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_DL_DB_HANDLE: UInt32 { get }
var CSSM_ATTRIBUTE_DATA_KR_PROFILE: UInt32 { get }
var CSSM_ATTRIBUTE_TYPE_MASK: UInt32 { get }
typealias CSSM_ATTRIBUTE_TYPE = uint32
var CSSM_ATTRIBUTE_NONE: UInt32 { get }
var CSSM_ATTRIBUTE_CUSTOM: UInt32 { get }
var CSSM_ATTRIBUTE_DESCRIPTION: UInt32 { get }
var CSSM_ATTRIBUTE_KEY: UInt32 { get }
var CSSM_ATTRIBUTE_INIT_VECTOR: UInt32 { get }
var CSSM_ATTRIBUTE_SALT: UInt32 { get }
var CSSM_ATTRIBUTE_PADDING: UInt32 { get }
var CSSM_ATTRIBUTE_RANDOM: UInt32 { get }
var CSSM_ATTRIBUTE_SEED: UInt32 { get }
var CSSM_ATTRIBUTE_PASSPHRASE: UInt32 { get }
var CSSM_ATTRIBUTE_KEY_LENGTH: UInt32 { get }
var CSSM_ATTRIBUTE_KEY_LENGTH_RANGE: UInt32 { get }
var CSSM_ATTRIBUTE_BLOCK_SIZE: UInt32 { get }
var CSSM_ATTRIBUTE_OUTPUT_SIZE: UInt32 { get }
var CSSM_ATTRIBUTE_ROUNDS: UInt32 { get }
var CSSM_ATTRIBUTE_IV_SIZE: UInt32 { get }
var CSSM_ATTRIBUTE_ALG_PARAMS: UInt32 { get }
var CSSM_ATTRIBUTE_LABEL: UInt32 { get }
var CSSM_ATTRIBUTE_KEY_TYPE: UInt32 { get }
var CSSM_ATTRIBUTE_MODE: UInt32 { get }
var CSSM_ATTRIBUTE_EFFECTIVE_BITS: UInt32 { get }
var CSSM_ATTRIBUTE_START_DATE: UInt32 { get }
var CSSM_ATTRIBUTE_END_DATE: UInt32 { get }
var CSSM_ATTRIBUTE_KEYUSAGE: UInt32 { get }
var CSSM_ATTRIBUTE_KEYATTR: UInt32 { get }
var CSSM_ATTRIBUTE_VERSION: UInt32 { get }
var CSSM_ATTRIBUTE_PRIME: UInt32 { get }
var CSSM_ATTRIBUTE_BASE: UInt32 { get }
var CSSM_ATTRIBUTE_SUBPRIME: UInt32 { get }
var CSSM_ATTRIBUTE_ALG_ID: UInt32 { get }
var CSSM_ATTRIBUTE_ITERATION_COUNT: UInt32 { get }
var CSSM_ATTRIBUTE_ROUNDS_RANGE: UInt32 { get }
var CSSM_ATTRIBUTE_KRPROFILE_LOCAL: UInt32 { get }
var CSSM_ATTRIBUTE_KRPROFILE_REMOTE: UInt32 { get }
var CSSM_ATTRIBUTE_CSP_HANDLE: UInt32 { get }
var CSSM_ATTRIBUTE_DL_DB_HANDLE: UInt32 { get }
var CSSM_ATTRIBUTE_ACCESS_CREDENTIALS: UInt32 { get }
var CSSM_ATTRIBUTE_PUBLIC_KEY_FORMAT: UInt32 { get }
var CSSM_ATTRIBUTE_PRIVATE_KEY_FORMAT: UInt32 { get }
var CSSM_ATTRIBUTE_SYMMETRIC_KEY_FORMAT: UInt32 { get }
var CSSM_ATTRIBUTE_WRAPPED_KEY_FORMAT: UInt32 { get }
typealias CSSM_PADDING = uint32
var CSSM_PADDING_NONE: UInt32 { get }
var CSSM_PADDING_CUSTOM: UInt32 { get }
var CSSM_PADDING_ZERO: UInt32 { get }
var CSSM_PADDING_ONE: UInt32 { get }
var CSSM_PADDING_ALTERNATE: UInt32 { get }
var CSSM_PADDING_FF: UInt32 { get }
var CSSM_PADDING_PKCS5: UInt32 { get }
var CSSM_PADDING_PKCS7: UInt32 { get }
var CSSM_PADDING_CIPHERSTEALING: UInt32 { get }
var CSSM_PADDING_RANDOM: UInt32 { get }
var CSSM_PADDING_PKCS1: UInt32 { get }
var CSSM_PADDING_SIGRAW: UInt32 { get }
var CSSM_PADDING_VENDOR_DEFINED: UInt32 { get }
typealias CSSM_KEY_TYPE = CSSM_ALGORITHMS
struct cssm_context_attribute {
  var AttributeType: CSSM_ATTRIBUTE_TYPE
  var AttributeLength: uint32
  var Attribute: cssm_context_attribute_value
  init()
  init(AttributeType: CSSM_ATTRIBUTE_TYPE, AttributeLength: uint32, Attribute: cssm_context_attribute_value)
}
struct cssm_context_attribute_value {
  var String: UnsafeMutablePointer<Int8>
  var Uint32: uint32
  var AccessCredentials: CSSM_ACCESS_CREDENTIALS_PTR
  var Key: CSSM_KEY_PTR
  var Data: CSSM_DATA_PTR
  var Padding: CSSM_PADDING
  var Date: CSSM_DATE_PTR
  var Range: CSSM_RANGE_PTR
  var CryptoData: CSSM_CRYPTO_DATA_PTR
  var Version: CSSM_VERSION_PTR
  var DLDBHandle: CSSM_DL_DB_HANDLE_PTR
  var KRProfile: UnsafeMutablePointer<cssm_kr_profile>
  init(String: UnsafeMutablePointer<Int8>)
  init(Uint32: uint32)
  init(AccessCredentials: CSSM_ACCESS_CREDENTIALS_PTR)
  init(Key: CSSM_KEY_PTR)
  init(Data: CSSM_DATA_PTR)
  init(Padding: CSSM_PADDING)
  init(Date: CSSM_DATE_PTR)
  init(Range: CSSM_RANGE_PTR)
  init(CryptoData: CSSM_CRYPTO_DATA_PTR)
  init(Version: CSSM_VERSION_PTR)
  init(DLDBHandle: CSSM_DL_DB_HANDLE_PTR)
  init(KRProfile: UnsafeMutablePointer<cssm_kr_profile>)
  init()
}
typealias CSSM_CONTEXT_ATTRIBUTE = cssm_context_attribute
typealias CSSM_CONTEXT_ATTRIBUTE_PTR = UnsafeMutablePointer<cssm_context_attribute>
struct cssm_context {
  var ContextType: CSSM_CONTEXT_TYPE
  var AlgorithmType: CSSM_ALGORITHMS
  var NumberOfAttributes: uint32
  var ContextAttributes: CSSM_CONTEXT_ATTRIBUTE_PTR
  var CSPHandle: CSSM_CSP_HANDLE
  var Privileged: CSSM_BOOL
  var EncryptionProhibited: uint32
  var WorkFactor: uint32
  var Reserved: uint32
  init()
  init(ContextType: CSSM_CONTEXT_TYPE, AlgorithmType: CSSM_ALGORITHMS, NumberOfAttributes: uint32, ContextAttributes: CSSM_CONTEXT_ATTRIBUTE_PTR, CSPHandle: CSSM_CSP_HANDLE, Privileged: CSSM_BOOL, EncryptionProhibited: uint32, WorkFactor: uint32, Reserved: uint32)
}
typealias CSSM_SC_FLAGS = uint32
var CSSM_CSP_TOK_RNG: Int { get }
var CSSM_CSP_TOK_CLOCK_EXISTS: Int { get }
typealias CSSM_CSP_READER_FLAGS = uint32
var CSSM_CSP_RDR_TOKENPRESENT: Int { get }
var CSSM_CSP_RDR_EXISTS: Int { get }
var CSSM_CSP_RDR_HW: Int { get }
typealias CSSM_CSP_FLAGS = uint32
var CSSM_CSP_TOK_WRITE_PROTECTED: Int { get }
var CSSM_CSP_TOK_LOGIN_REQUIRED: Int { get }
var CSSM_CSP_TOK_USER_PIN_INITIALIZED: Int { get }
var CSSM_CSP_TOK_PROT_AUTHENTICATION: Int { get }
var CSSM_CSP_TOK_USER_PIN_EXPIRED: Int { get }
var CSSM_CSP_TOK_SESSION_KEY_PASSWORD: Int { get }
var CSSM_CSP_TOK_PRIVATE_KEY_PASSWORD: Int { get }
var CSSM_CSP_STORES_PRIVATE_KEYS: Int { get }
var CSSM_CSP_STORES_PUBLIC_KEYS: Int { get }
var CSSM_CSP_STORES_SESSION_KEYS: Int { get }
var CSSM_CSP_STORES_CERTIFICATES: Int { get }
var CSSM_CSP_STORES_GENERIC: Int { get }
typealias CSSM_PKCS_OAEP_MGF = uint32
var CSSM_PKCS_OAEP_MGF_NONE: Int { get }
var CSSM_PKCS_OAEP_MGF1_SHA1: Int { get }
var CSSM_PKCS_OAEP_MGF1_MD5: Int { get }
typealias CSSM_PKCS_OAEP_PSOURCE = uint32
var CSSM_PKCS_OAEP_PSOURCE_NONE: Int { get }
var CSSM_PKCS_OAEP_PSOURCE_Pspecified: Int { get }
struct cssm_pkcs1_oaep_params {
  var HashAlgorithm: uint32
  var HashParams: CSSM_DATA
  var MGF: CSSM_PKCS_OAEP_MGF
  var MGFParams: CSSM_DATA
  var PSource: CSSM_PKCS_OAEP_PSOURCE
  var PSourceParams: CSSM_DATA
  init()
  init(HashAlgorithm: uint32, HashParams: CSSM_DATA, MGF: CSSM_PKCS_OAEP_MGF, MGFParams: CSSM_DATA, PSource: CSSM_PKCS_OAEP_PSOURCE, PSourceParams: CSSM_DATA)
}
struct cssm_csp_operational_statistics {
  var UserAuthenticated: CSSM_BOOL
  var DeviceFlags: CSSM_CSP_FLAGS
  var TokenMaxSessionCount: uint32
  var TokenOpenedSessionCount: uint32
  var TokenMaxRWSessionCount: uint32
  var TokenOpenedRWSessionCount: uint32
  var TokenTotalPublicMem: uint32
  var TokenFreePublicMem: uint32
  var TokenTotalPrivateMem: uint32
  var TokenFreePrivateMem: uint32
  init()
  init(UserAuthenticated: CSSM_BOOL, DeviceFlags: CSSM_CSP_FLAGS, TokenMaxSessionCount: uint32, TokenOpenedSessionCount: uint32, TokenMaxRWSessionCount: uint32, TokenOpenedRWSessionCount: uint32, TokenTotalPublicMem: uint32, TokenFreePublicMem: uint32, TokenTotalPrivateMem: uint32, TokenFreePrivateMem: uint32)
}
var CSSM_VALUE_NOT_AVAILABLE: Int { get }
struct cssm_pkcs5_pbkdf1_params {
  var Passphrase: CSSM_DATA
  var InitVector: CSSM_DATA
  init()
  init(Passphrase: CSSM_DATA, InitVector: CSSM_DATA)
}
typealias CSSM_PKCS5_PBKDF2_PRF = uint32
var CSSM_PKCS5_PBKDF2_PRF_HMAC_SHA1: Int { get }
struct cssm_pkcs5_pbkdf2_params {
  var Passphrase: CSSM_DATA
  var PseudoRandomFunction: CSSM_PKCS5_PBKDF2_PRF
  init()
  init(Passphrase: CSSM_DATA, PseudoRandomFunction: CSSM_PKCS5_PBKDF2_PRF)
}
struct cssm_kea_derive_params {
  var Rb: CSSM_DATA
  var Yb: CSSM_DATA
  init()
  init(Rb: CSSM_DATA, Yb: CSSM_DATA)
}
struct cssm_tp_authority_id {
  var AuthorityCert: UnsafeMutablePointer<CSSM_DATA>
  var AuthorityLocation: CSSM_NET_ADDRESS_PTR
  init()
  init(AuthorityCert: UnsafeMutablePointer<CSSM_DATA>, AuthorityLocation: CSSM_NET_ADDRESS_PTR)
}
typealias CSSM_TP_AUTHORITY_REQUEST_TYPE = uint32
typealias CSSM_TP_AUTHORITY_REQUEST_TYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_TP_AUTHORITY_REQUEST_CERTISSUE: Int { get }
var CSSM_TP_AUTHORITY_REQUEST_CERTREVOKE: Int { get }
var CSSM_TP_AUTHORITY_REQUEST_CERTSUSPEND: Int { get }
var CSSM_TP_AUTHORITY_REQUEST_CERTRESUME: Int { get }
var CSSM_TP_AUTHORITY_REQUEST_CERTVERIFY: Int { get }
var CSSM_TP_AUTHORITY_REQUEST_CERTNOTARIZE: Int { get }
var CSSM_TP_AUTHORITY_REQUEST_CERTUSERECOVER: Int { get }
var CSSM_TP_AUTHORITY_REQUEST_CRLISSUE: Int { get }
typealias CSSM_TP_VERIFICATION_RESULTS_CALLBACK = @convention(c) (CSSM_MODULE_HANDLE, UnsafeMutablePointer<Void>, CSSM_DATA_PTR) -> CSSM_RETURN
typealias CSSM_OID = CSSM_DATA
typealias CSSM_OID_PTR = UnsafeMutablePointer<CSSM_DATA>
struct cssm_field {
  var FieldOid: CSSM_OID
  var FieldValue: CSSM_DATA
  init()
  init(FieldOid: CSSM_OID, FieldValue: CSSM_DATA)
}
struct cssm_tp_policyinfo {
  var NumberOfPolicyIds: uint32
  var PolicyIds: CSSM_FIELD_PTR
  var PolicyControl: UnsafeMutablePointer<Void>
  init()
  init(NumberOfPolicyIds: uint32, PolicyIds: CSSM_FIELD_PTR, PolicyControl: UnsafeMutablePointer<Void>)
}
typealias CSSM_TP_SERVICES = uint32
var CSSM_TP_KEY_ARCHIVE: Int { get }
var CSSM_TP_CERT_PUBLISH: Int { get }
var CSSM_TP_CERT_NOTIFY_RENEW: Int { get }
var CSSM_TP_CERT_DIR_UPDATE: Int { get }
var CSSM_TP_CRL_DISTRIBUTE: Int { get }
typealias CSSM_TP_ACTION = uint32
var CSSM_TP_ACTION_DEFAULT: Int { get }
typealias CSSM_TP_STOP_ON = uint32
var CSSM_TP_STOP_ON_POLICY: Int { get }
var CSSM_TP_STOP_ON_NONE: Int { get }
var CSSM_TP_STOP_ON_FIRST_PASS: Int { get }
var CSSM_TP_STOP_ON_FIRST_FAIL: Int { get }
typealias CSSM_TIMESTRING = UnsafeMutablePointer<Int8>
struct cssm_dl_db_list {
  var NumHandles: uint32
  var DLDBHandle: CSSM_DL_DB_HANDLE_PTR
  init()
  init(NumHandles: uint32, DLDBHandle: CSSM_DL_DB_HANDLE_PTR)
}
struct cssm_tp_callerauth_context {
  var Policy: CSSM_TP_POLICYINFO
  var VerifyTime: CSSM_TIMESTRING
  var VerificationAbortOn: CSSM_TP_STOP_ON
  var CallbackWithVerifiedCert: CSSM_TP_VERIFICATION_RESULTS_CALLBACK!
  var NumberOfAnchorCerts: uint32
  var AnchorCerts: CSSM_DATA_PTR
  var DBList: CSSM_DL_DB_LIST_PTR
  var CallerCredentials: CSSM_ACCESS_CREDENTIALS_PTR
  init()
  init(Policy: CSSM_TP_POLICYINFO, VerifyTime: CSSM_TIMESTRING, VerificationAbortOn: CSSM_TP_STOP_ON, CallbackWithVerifiedCert: CSSM_TP_VERIFICATION_RESULTS_CALLBACK!, NumberOfAnchorCerts: uint32, AnchorCerts: CSSM_DATA_PTR, DBList: CSSM_DL_DB_LIST_PTR, CallerCredentials: CSSM_ACCESS_CREDENTIALS_PTR)
}
typealias CSSM_CRL_PARSE_FORMAT = uint32
typealias CSSM_CRL_PARSE_FORMAT_PTR = UnsafeMutablePointer<uint32>
var CSSM_CRL_PARSE_FORMAT_NONE: Int { get }
var CSSM_CRL_PARSE_FORMAT_CUSTOM: Int { get }
var CSSM_CRL_PARSE_FORMAT_SEXPR: Int { get }
var CSSM_CRL_PARSE_FORMAT_COMPLEX: Int { get }
var CSSM_CRL_PARSE_FORMAT_OID_NAMED: Int { get }
var CSSM_CRL_PARSE_FORMAT_TUPLE: Int { get }
var CSSM_CRL_PARSE_FORMAT_MULTIPLE: Int { get }
var CSSM_CRL_PARSE_FORMAT_LAST: Int { get }
var CSSM_CL_CUSTOM_CRL_PARSE_FORMAT: Int { get }
typealias CSSM_CRL_TYPE = uint32
typealias CSSM_CRL_TYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_CRL_TYPE_UNKNOWN: Int { get }
var CSSM_CRL_TYPE_X_509v1: Int { get }
var CSSM_CRL_TYPE_X_509v2: Int { get }
var CSSM_CRL_TYPE_SPKI: Int { get }
var CSSM_CRL_TYPE_MULTIPLE: Int { get }
typealias CSSM_CRL_ENCODING = uint32
typealias CSSM_CRL_ENCODING_PTR = UnsafeMutablePointer<uint32>
var CSSM_CRL_ENCODING_UNKNOWN: Int { get }
var CSSM_CRL_ENCODING_CUSTOM: Int { get }
var CSSM_CRL_ENCODING_BER: Int { get }
var CSSM_CRL_ENCODING_DER: Int { get }
var CSSM_CRL_ENCODING_BLOOM: Int { get }
var CSSM_CRL_ENCODING_SEXPR: Int { get }
var CSSM_CRL_ENCODING_MULTIPLE: Int { get }
struct cssm_encoded_crl {
  var CrlType: CSSM_CRL_TYPE
  var CrlEncoding: CSSM_CRL_ENCODING
  var CrlBlob: CSSM_DATA
  init()
  init(CrlType: CSSM_CRL_TYPE, CrlEncoding: CSSM_CRL_ENCODING, CrlBlob: CSSM_DATA)
}
struct cssm_parsed_crl {
  var CrlType: CSSM_CRL_TYPE
  var ParsedCrlFormat: CSSM_CRL_PARSE_FORMAT
  var ParsedCrl: UnsafeMutablePointer<Void>
  init()
  init(CrlType: CSSM_CRL_TYPE, ParsedCrlFormat: CSSM_CRL_PARSE_FORMAT, ParsedCrl: UnsafeMutablePointer<Void>)
}
struct cssm_crl_pair {
  var EncodedCrl: CSSM_ENCODED_CRL
  var ParsedCrl: CSSM_PARSED_CRL
  init()
  init(EncodedCrl: CSSM_ENCODED_CRL, ParsedCrl: CSSM_PARSED_CRL)
}
typealias CSSM_CRLGROUP_TYPE = uint32
typealias CSSM_CRLGROUP_TYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_CRLGROUP_DATA: Int { get }
var CSSM_CRLGROUP_ENCODED_CRL: Int { get }
var CSSM_CRLGROUP_PARSED_CRL: Int { get }
var CSSM_CRLGROUP_CRL_PAIR: Int { get }
struct cssm_crlgroup {
  struct __Unnamed_union_GroupCrlList {
    var CrlList: CSSM_DATA_PTR
    var EncodedCrlList: CSSM_ENCODED_CRL_PTR
    var ParsedCrlList: CSSM_PARSED_CRL_PTR
    var PairCrlList: CSSM_CRL_PAIR_PTR
    init(CrlList: CSSM_DATA_PTR)
    init(EncodedCrlList: CSSM_ENCODED_CRL_PTR)
    init(ParsedCrlList: CSSM_PARSED_CRL_PTR)
    init(PairCrlList: CSSM_CRL_PAIR_PTR)
    init()
  }
  var CrlType: CSSM_CRL_TYPE
  var CrlEncoding: CSSM_CRL_ENCODING
  var NumberOfCrls: uint32
  var GroupCrlList: cssm_crlgroup.__Unnamed_union_GroupCrlList
  var CrlGroupType: CSSM_CRLGROUP_TYPE
  init()
  init(CrlType: CSSM_CRL_TYPE, CrlEncoding: CSSM_CRL_ENCODING, NumberOfCrls: uint32, GroupCrlList: cssm_crlgroup.__Unnamed_union_GroupCrlList, CrlGroupType: CSSM_CRLGROUP_TYPE)
}
typealias CSSM_CRLGROUP = cssm_crlgroup
typealias CSSM_CRLGROUP_PTR = UnsafeMutablePointer<cssm_crlgroup>
struct cssm_fieldgroup {
  var NumberOfFields: Int32
  var Fields: CSSM_FIELD_PTR
  init()
  init(NumberOfFields: Int32, Fields: CSSM_FIELD_PTR)
}
typealias CSSM_EVIDENCE_FORM = uint32
var CSSM_EVIDENCE_FORM_UNSPECIFIC: Int { get }
var CSSM_EVIDENCE_FORM_CERT: Int { get }
var CSSM_EVIDENCE_FORM_CRL: Int { get }
var CSSM_EVIDENCE_FORM_CERT_ID: Int { get }
var CSSM_EVIDENCE_FORM_CRL_ID: Int { get }
var CSSM_EVIDENCE_FORM_VERIFIER_TIME: Int { get }
var CSSM_EVIDENCE_FORM_CRL_THISTIME: Int { get }
var CSSM_EVIDENCE_FORM_CRL_NEXTTIME: Int { get }
var CSSM_EVIDENCE_FORM_POLICYINFO: Int { get }
var CSSM_EVIDENCE_FORM_TUPLEGROUP: Int { get }
struct cssm_evidence {
  var EvidenceForm: CSSM_EVIDENCE_FORM
  var Evidence: UnsafeMutablePointer<Void>
  init()
  init(EvidenceForm: CSSM_EVIDENCE_FORM, Evidence: UnsafeMutablePointer<Void>)
}
struct cssm_tp_verify_context {
  var Action: CSSM_TP_ACTION
  var ActionData: CSSM_DATA
  var Crls: CSSM_CRLGROUP
  var Cred: CSSM_TP_CALLERAUTH_CONTEXT_PTR
  init()
  init(Action: CSSM_TP_ACTION, ActionData: CSSM_DATA, Crls: CSSM_CRLGROUP, Cred: CSSM_TP_CALLERAUTH_CONTEXT_PTR)
}
struct cssm_tp_verify_context_result {
  var NumberOfEvidences: uint32
  var Evidence: CSSM_EVIDENCE_PTR
  init()
  init(NumberOfEvidences: uint32, Evidence: CSSM_EVIDENCE_PTR)
}
struct cssm_tp_request_set {
  var NumberOfRequests: uint32
  var Requests: UnsafeMutablePointer<Void>
  init()
  init(NumberOfRequests: uint32, Requests: UnsafeMutablePointer<Void>)
}
struct cssm_tp_result_set {
  var NumberOfResults: uint32
  var Results: UnsafeMutablePointer<Void>
  init()
  init(NumberOfResults: uint32, Results: UnsafeMutablePointer<Void>)
}
typealias CSSM_TP_CONFIRM_STATUS = uint32
typealias CSSM_TP_CONFIRM_STATUS_PTR = UnsafeMutablePointer<uint32>
var CSSM_TP_CONFIRM_STATUS_UNKNOWN: Int { get }
var CSSM_TP_CONFIRM_ACCEPT: Int { get }
var CSSM_TP_CONFIRM_REJECT: Int { get }
struct cssm_tp_confirm_response {
  var NumberOfResponses: uint32
  var Responses: CSSM_TP_CONFIRM_STATUS_PTR
  init()
  init(NumberOfResponses: uint32, Responses: CSSM_TP_CONFIRM_STATUS_PTR)
}
var CSSM_ESTIMATED_TIME_UNKNOWN: Int { get }
var CSSM_ELAPSED_TIME_UNKNOWN: Int { get }
var CSSM_ELAPSED_TIME_COMPLETE: Int { get }
struct cssm_tp_certissue_input {
  var CSPSubserviceUid: CSSM_SUBSERVICE_UID
  var CLHandle: CSSM_CL_HANDLE
  var NumberOfTemplateFields: uint32
  var SubjectCertFields: CSSM_FIELD_PTR
  var MoreServiceRequests: CSSM_TP_SERVICES
  var NumberOfServiceControls: uint32
  var ServiceControls: CSSM_FIELD_PTR
  var UserCredentials: CSSM_ACCESS_CREDENTIALS_PTR
  init()
  init(CSPSubserviceUid: CSSM_SUBSERVICE_UID, CLHandle: CSSM_CL_HANDLE, NumberOfTemplateFields: uint32, SubjectCertFields: CSSM_FIELD_PTR, MoreServiceRequests: CSSM_TP_SERVICES, NumberOfServiceControls: uint32, ServiceControls: CSSM_FIELD_PTR, UserCredentials: CSSM_ACCESS_CREDENTIALS_PTR)
}
typealias CSSM_TP_CERTISSUE_STATUS = uint32
var CSSM_TP_CERTISSUE_STATUS_UNKNOWN: Int { get }
var CSSM_TP_CERTISSUE_OK: Int { get }
var CSSM_TP_CERTISSUE_OKWITHCERTMODS: Int { get }
var CSSM_TP_CERTISSUE_OKWITHSERVICEMODS: Int { get }
var CSSM_TP_CERTISSUE_REJECTED: Int { get }
var CSSM_TP_CERTISSUE_NOT_AUTHORIZED: Int { get }
var CSSM_TP_CERTISSUE_WILL_BE_REVOKED: Int { get }
struct cssm_tp_certissue_output {
  var IssueStatus: CSSM_TP_CERTISSUE_STATUS
  var CertGroup: CSSM_CERTGROUP_PTR
  var PerformedServiceRequests: CSSM_TP_SERVICES
  init()
  init(IssueStatus: CSSM_TP_CERTISSUE_STATUS, CertGroup: CSSM_CERTGROUP_PTR, PerformedServiceRequests: CSSM_TP_SERVICES)
}
typealias CSSM_TP_CERTCHANGE_ACTION = uint32
var CSSM_TP_CERTCHANGE_NONE: Int { get }
var CSSM_TP_CERTCHANGE_REVOKE: Int { get }
var CSSM_TP_CERTCHANGE_HOLD: Int { get }
var CSSM_TP_CERTCHANGE_RELEASE: Int { get }
typealias CSSM_TP_CERTCHANGE_REASON = uint32
var CSSM_TP_CERTCHANGE_REASON_UNKNOWN: Int { get }
var CSSM_TP_CERTCHANGE_REASON_KEYCOMPROMISE: Int { get }
var CSSM_TP_CERTCHANGE_REASON_CACOMPROMISE: Int { get }
var CSSM_TP_CERTCHANGE_REASON_CEASEOPERATION: Int { get }
var CSSM_TP_CERTCHANGE_REASON_AFFILIATIONCHANGE: Int { get }
var CSSM_TP_CERTCHANGE_REASON_SUPERCEDED: Int { get }
var CSSM_TP_CERTCHANGE_REASON_SUSPECTEDCOMPROMISE: Int { get }
var CSSM_TP_CERTCHANGE_REASON_HOLDRELEASE: Int { get }
struct cssm_tp_certchange_input {
  var Action: CSSM_TP_CERTCHANGE_ACTION
  var Reason: CSSM_TP_CERTCHANGE_REASON
  var CLHandle: CSSM_CL_HANDLE
  var Cert: CSSM_DATA_PTR
  var ChangeInfo: CSSM_FIELD_PTR
  var StartTime: CSSM_TIMESTRING
  var CallerCredentials: CSSM_ACCESS_CREDENTIALS_PTR
  init()
  init(Action: CSSM_TP_CERTCHANGE_ACTION, Reason: CSSM_TP_CERTCHANGE_REASON, CLHandle: CSSM_CL_HANDLE, Cert: CSSM_DATA_PTR, ChangeInfo: CSSM_FIELD_PTR, StartTime: CSSM_TIMESTRING, CallerCredentials: CSSM_ACCESS_CREDENTIALS_PTR)
}
typealias CSSM_TP_CERTCHANGE_STATUS = uint32
var CSSM_TP_CERTCHANGE_STATUS_UNKNOWN: Int { get }
var CSSM_TP_CERTCHANGE_OK: Int { get }
var CSSM_TP_CERTCHANGE_OKWITHNEWTIME: Int { get }
var CSSM_TP_CERTCHANGE_WRONGCA: Int { get }
var CSSM_TP_CERTCHANGE_REJECTED: Int { get }
var CSSM_TP_CERTCHANGE_NOT_AUTHORIZED: Int { get }
struct cssm_tp_certchange_output {
  var ActionStatus: CSSM_TP_CERTCHANGE_STATUS
  var RevokeInfo: CSSM_FIELD
  init()
  init(ActionStatus: CSSM_TP_CERTCHANGE_STATUS, RevokeInfo: CSSM_FIELD)
}
struct cssm_tp_certverify_input {
  var CLHandle: CSSM_CL_HANDLE
  var Cert: CSSM_DATA_PTR
  var VerifyContext: CSSM_TP_VERIFY_CONTEXT_PTR
  init()
  init(CLHandle: CSSM_CL_HANDLE, Cert: CSSM_DATA_PTR, VerifyContext: CSSM_TP_VERIFY_CONTEXT_PTR)
}
typealias CSSM_TP_CERTVERIFY_STATUS = uint32
var CSSM_TP_CERTVERIFY_UNKNOWN: Int { get }
var CSSM_TP_CERTVERIFY_VALID: Int { get }
var CSSM_TP_CERTVERIFY_INVALID: Int { get }
var CSSM_TP_CERTVERIFY_REVOKED: Int { get }
var CSSM_TP_CERTVERIFY_SUSPENDED: Int { get }
var CSSM_TP_CERTVERIFY_EXPIRED: Int { get }
var CSSM_TP_CERTVERIFY_NOT_VALID_YET: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_AUTHORITY: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_SIGNATURE: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_CERT_VALUE: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_CERTGROUP: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_POLICY: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_POLICY_IDS: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_BASIC_CONSTRAINTS: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_CRL_DIST_PT: Int { get }
var CSSM_TP_CERTVERIFY_INVALID_NAME_TREE: Int { get }
var CSSM_TP_CERTVERIFY_UNKNOWN_CRITICAL_EXT: Int { get }
struct cssm_tp_certverify_output {
  var VerifyStatus: CSSM_TP_CERTVERIFY_STATUS
  var NumberOfEvidence: uint32
  var Evidence: CSSM_EVIDENCE_PTR
  init()
  init(VerifyStatus: CSSM_TP_CERTVERIFY_STATUS, NumberOfEvidence: uint32, Evidence: CSSM_EVIDENCE_PTR)
}
struct cssm_tp_certnotarize_input {
  var CLHandle: CSSM_CL_HANDLE
  var NumberOfFields: uint32
  var MoreFields: CSSM_FIELD_PTR
  var SignScope: CSSM_FIELD_PTR
  var ScopeSize: uint32
  var MoreServiceRequests: CSSM_TP_SERVICES
  var NumberOfServiceControls: uint32
  var ServiceControls: CSSM_FIELD_PTR
  var UserCredentials: CSSM_ACCESS_CREDENTIALS_PTR
  init()
  init(CLHandle: CSSM_CL_HANDLE, NumberOfFields: uint32, MoreFields: CSSM_FIELD_PTR, SignScope: CSSM_FIELD_PTR, ScopeSize: uint32, MoreServiceRequests: CSSM_TP_SERVICES, NumberOfServiceControls: uint32, ServiceControls: CSSM_FIELD_PTR, UserCredentials: CSSM_ACCESS_CREDENTIALS_PTR)
}
typealias CSSM_TP_CERTNOTARIZE_STATUS = uint32
var CSSM_TP_CERTNOTARIZE_STATUS_UNKNOWN: Int { get }
var CSSM_TP_CERTNOTARIZE_OK: Int { get }
var CSSM_TP_CERTNOTARIZE_OKWITHOUTFIELDS: Int { get }
var CSSM_TP_CERTNOTARIZE_OKWITHSERVICEMODS: Int { get }
var CSSM_TP_CERTNOTARIZE_REJECTED: Int { get }
var CSSM_TP_CERTNOTARIZE_NOT_AUTHORIZED: Int { get }
struct cssm_tp_certnotarize_output {
  var NotarizeStatus: CSSM_TP_CERTNOTARIZE_STATUS
  var NotarizedCertGroup: CSSM_CERTGROUP_PTR
  var PerformedServiceRequests: CSSM_TP_SERVICES
  init()
  init(NotarizeStatus: CSSM_TP_CERTNOTARIZE_STATUS, NotarizedCertGroup: CSSM_CERTGROUP_PTR, PerformedServiceRequests: CSSM_TP_SERVICES)
}
struct cssm_tp_certreclaim_input {
  var CLHandle: CSSM_CL_HANDLE
  var NumberOfSelectionFields: uint32
  var SelectionFields: CSSM_FIELD_PTR
  var UserCredentials: CSSM_ACCESS_CREDENTIALS_PTR
  init()
  init(CLHandle: CSSM_CL_HANDLE, NumberOfSelectionFields: uint32, SelectionFields: CSSM_FIELD_PTR, UserCredentials: CSSM_ACCESS_CREDENTIALS_PTR)
}
typealias CSSM_TP_CERTRECLAIM_STATUS = uint32
var CSSM_TP_CERTRECLAIM_STATUS_UNKNOWN: Int { get }
var CSSM_TP_CERTRECLAIM_OK: Int { get }
var CSSM_TP_CERTRECLAIM_NOMATCH: Int { get }
var CSSM_TP_CERTRECLAIM_REJECTED: Int { get }
var CSSM_TP_CERTRECLAIM_NOT_AUTHORIZED: Int { get }
struct cssm_tp_certreclaim_output {
  var ReclaimStatus: CSSM_TP_CERTRECLAIM_STATUS
  var ReclaimedCertGroup: CSSM_CERTGROUP_PTR
  var KeyCacheHandle: CSSM_LONG_HANDLE
  init()
  init(ReclaimStatus: CSSM_TP_CERTRECLAIM_STATUS, ReclaimedCertGroup: CSSM_CERTGROUP_PTR, KeyCacheHandle: CSSM_LONG_HANDLE)
}
struct cssm_tp_crlissue_input {
  var CLHandle: CSSM_CL_HANDLE
  var CrlIdentifier: uint32
  var CrlThisTime: CSSM_TIMESTRING
  var PolicyIdentifier: CSSM_FIELD_PTR
  var CallerCredentials: CSSM_ACCESS_CREDENTIALS_PTR
  init()
  init(CLHandle: CSSM_CL_HANDLE, CrlIdentifier: uint32, CrlThisTime: CSSM_TIMESTRING, PolicyIdentifier: CSSM_FIELD_PTR, CallerCredentials: CSSM_ACCESS_CREDENTIALS_PTR)
}
typealias CSSM_TP_CRLISSUE_STATUS = uint32
var CSSM_TP_CRLISSUE_STATUS_UNKNOWN: Int { get }
var CSSM_TP_CRLISSUE_OK: Int { get }
var CSSM_TP_CRLISSUE_NOT_CURRENT: Int { get }
var CSSM_TP_CRLISSUE_INVALID_DOMAIN: Int { get }
var CSSM_TP_CRLISSUE_UNKNOWN_IDENTIFIER: Int { get }
var CSSM_TP_CRLISSUE_REJECTED: Int { get }
var CSSM_TP_CRLISSUE_NOT_AUTHORIZED: Int { get }
struct cssm_tp_crlissue_output {
  var IssueStatus: CSSM_TP_CRLISSUE_STATUS
  var Crl: CSSM_ENCODED_CRL_PTR
  var CrlNextTime: CSSM_TIMESTRING
  init()
  init(IssueStatus: CSSM_TP_CRLISSUE_STATUS, Crl: CSSM_ENCODED_CRL_PTR, CrlNextTime: CSSM_TIMESTRING)
}
typealias CSSM_TP_FORM_TYPE = uint32
var CSSM_TP_FORM_TYPE_GENERIC: Int { get }
var CSSM_TP_FORM_TYPE_REGISTRATION: Int { get }
typealias CSSM_CL_TEMPLATE_TYPE = uint32
var CSSM_CL_TEMPLATE_INTERMEDIATE_CERT: Int { get }
var CSSM_CL_TEMPLATE_PKIX_CERTTEMPLATE: Int { get }
typealias CSSM_CERT_BUNDLE_TYPE = uint32
var CSSM_CERT_BUNDLE_UNKNOWN: Int { get }
var CSSM_CERT_BUNDLE_CUSTOM: Int { get }
var CSSM_CERT_BUNDLE_PKCS7_SIGNED_DATA: Int { get }
var CSSM_CERT_BUNDLE_PKCS7_SIGNED_ENVELOPED_DATA: Int { get }
var CSSM_CERT_BUNDLE_PKCS12: Int { get }
var CSSM_CERT_BUNDLE_PFX: Int { get }
var CSSM_CERT_BUNDLE_SPKI_SEQUENCE: Int { get }
var CSSM_CERT_BUNDLE_PGP_KEYRING: Int { get }
var CSSM_CERT_BUNDLE_LAST: Int { get }
var CSSM_CL_CUSTOM_CERT_BUNDLE_TYPE: Int { get }
typealias CSSM_CERT_BUNDLE_ENCODING = uint32
var CSSM_CERT_BUNDLE_ENCODING_UNKNOWN: Int { get }
var CSSM_CERT_BUNDLE_ENCODING_CUSTOM: Int { get }
var CSSM_CERT_BUNDLE_ENCODING_BER: Int { get }
var CSSM_CERT_BUNDLE_ENCODING_DER: Int { get }
var CSSM_CERT_BUNDLE_ENCODING_SEXPR: Int { get }
var CSSM_CERT_BUNDLE_ENCODING_PGP: Int { get }
struct cssm_cert_bundle_header {
  var BundleType: CSSM_CERT_BUNDLE_TYPE
  var BundleEncoding: CSSM_CERT_BUNDLE_ENCODING
  init()
  init(BundleType: CSSM_CERT_BUNDLE_TYPE, BundleEncoding: CSSM_CERT_BUNDLE_ENCODING)
}
struct cssm_cert_bundle {
  var BundleHeader: CSSM_CERT_BUNDLE_HEADER
  var Bundle: CSSM_DATA
  init()
  init(BundleHeader: CSSM_CERT_BUNDLE_HEADER, Bundle: CSSM_DATA)
}
var CSSM_FIELDVALUE_COMPLEX_DATA_TYPE: UInt32 { get }
typealias CSSM_DB_ATTRIBUTE_NAME_FORMAT = uint32
typealias CSSM_DB_ATTRIBUTE_NAME_FORMAT_PTR = UnsafeMutablePointer<uint32>
var CSSM_DB_ATTRIBUTE_NAME_AS_STRING: Int { get }
var CSSM_DB_ATTRIBUTE_NAME_AS_OID: Int { get }
var CSSM_DB_ATTRIBUTE_NAME_AS_INTEGER: Int { get }
typealias CSSM_DB_ATTRIBUTE_FORMAT = uint32
typealias CSSM_DB_ATTRIBUTE_FORMAT_PTR = UnsafeMutablePointer<uint32>
var CSSM_DB_ATTRIBUTE_FORMAT_STRING: Int { get }
var CSSM_DB_ATTRIBUTE_FORMAT_SINT32: Int { get }
var CSSM_DB_ATTRIBUTE_FORMAT_UINT32: Int { get }
var CSSM_DB_ATTRIBUTE_FORMAT_BIG_NUM: Int { get }
var CSSM_DB_ATTRIBUTE_FORMAT_REAL: Int { get }
var CSSM_DB_ATTRIBUTE_FORMAT_TIME_DATE: Int { get }
var CSSM_DB_ATTRIBUTE_FORMAT_BLOB: Int { get }
var CSSM_DB_ATTRIBUTE_FORMAT_MULTI_UINT32: Int { get }
var CSSM_DB_ATTRIBUTE_FORMAT_COMPLEX: Int { get }
struct cssm_db_attribute_info {
  var AttributeNameFormat: CSSM_DB_ATTRIBUTE_NAME_FORMAT
  var Label: cssm_db_attribute_label
  var AttributeFormat: CSSM_DB_ATTRIBUTE_FORMAT
  init()
  init(AttributeNameFormat: CSSM_DB_ATTRIBUTE_NAME_FORMAT, Label: cssm_db_attribute_label, AttributeFormat: CSSM_DB_ATTRIBUTE_FORMAT)
}
struct cssm_db_attribute_label {
  var AttributeName: UnsafeMutablePointer<Int8>
  var AttributeOID: CSSM_OID
  var AttributeID: uint32
  init(AttributeName: UnsafeMutablePointer<Int8>)
  init(AttributeOID: CSSM_OID)
  init(AttributeID: uint32)
  init()
}
typealias CSSM_DB_ATTRIBUTE_INFO = cssm_db_attribute_info
typealias CSSM_DB_ATTRIBUTE_INFO_PTR = UnsafeMutablePointer<cssm_db_attribute_info>
struct cssm_db_attribute_data {
  var Info: CSSM_DB_ATTRIBUTE_INFO
  var NumberOfValues: uint32
  var Value: CSSM_DATA_PTR
  init()
  init(Info: CSSM_DB_ATTRIBUTE_INFO, NumberOfValues: uint32, Value: CSSM_DATA_PTR)
}
typealias CSSM_DB_RECORDTYPE = uint32
var CSSM_DB_RECORDTYPE_SCHEMA_START: UInt32 { get }
var CSSM_DB_RECORDTYPE_SCHEMA_END: UInt32 { get }
var CSSM_DB_RECORDTYPE_OPEN_GROUP_START: UInt32 { get }
var CSSM_DB_RECORDTYPE_OPEN_GROUP_END: UInt32 { get }
var CSSM_DB_RECORDTYPE_APP_DEFINED_START: UInt32 { get }
var CSSM_DB_RECORDTYPE_APP_DEFINED_END: UInt32 { get }
var CSSM_DL_DB_SCHEMA_INFO: UInt32 { get }
var CSSM_DL_DB_SCHEMA_INDEXES: UInt32 { get }
var CSSM_DL_DB_SCHEMA_ATTRIBUTES: UInt32 { get }
var CSSM_DL_DB_SCHEMA_PARSING_MODULE: UInt32 { get }
var CSSM_DL_DB_RECORD_ANY: UInt32 { get }
var CSSM_DL_DB_RECORD_CERT: UInt32 { get }
var CSSM_DL_DB_RECORD_CRL: UInt32 { get }
var CSSM_DL_DB_RECORD_POLICY: UInt32 { get }
var CSSM_DL_DB_RECORD_GENERIC: UInt32 { get }
var CSSM_DL_DB_RECORD_PUBLIC_KEY: UInt32 { get }
var CSSM_DL_DB_RECORD_PRIVATE_KEY: UInt32 { get }
var CSSM_DL_DB_RECORD_SYMMETRIC_KEY: UInt32 { get }
var CSSM_DL_DB_RECORD_ALL_KEYS: UInt32 { get }
var CSSM_DB_CERT_USE_TRUSTED: Int { get }
var CSSM_DB_CERT_USE_SYSTEM: Int { get }
var CSSM_DB_CERT_USE_OWNER: Int { get }
var CSSM_DB_CERT_USE_REVOKED: Int { get }
var CSSM_DB_CERT_USE_SIGNING: Int { get }
var CSSM_DB_CERT_USE_PRIVACY: Int { get }
struct cssm_db_record_attribute_info {
  var DataRecordType: CSSM_DB_RECORDTYPE
  var NumberOfAttributes: uint32
  var AttributeInfo: CSSM_DB_ATTRIBUTE_INFO_PTR
  init()
  init(DataRecordType: CSSM_DB_RECORDTYPE, NumberOfAttributes: uint32, AttributeInfo: CSSM_DB_ATTRIBUTE_INFO_PTR)
}
struct cssm_db_record_attribute_data {
  var DataRecordType: CSSM_DB_RECORDTYPE
  var SemanticInformation: uint32
  var NumberOfAttributes: uint32
  var AttributeData: CSSM_DB_ATTRIBUTE_DATA_PTR
  init()
  init(DataRecordType: CSSM_DB_RECORDTYPE, SemanticInformation: uint32, NumberOfAttributes: uint32, AttributeData: CSSM_DB_ATTRIBUTE_DATA_PTR)
}
struct cssm_db_parsing_module_info {
  var RecordType: CSSM_DB_RECORDTYPE
  var ModuleSubserviceUid: CSSM_SUBSERVICE_UID
  init()
  init(RecordType: CSSM_DB_RECORDTYPE, ModuleSubserviceUid: CSSM_SUBSERVICE_UID)
}
typealias CSSM_DB_INDEX_TYPE = uint32
var CSSM_DB_INDEX_UNIQUE: Int { get }
var CSSM_DB_INDEX_NONUNIQUE: Int { get }
typealias CSSM_DB_INDEXED_DATA_LOCATION = uint32
var CSSM_DB_INDEX_ON_UNKNOWN: Int { get }
var CSSM_DB_INDEX_ON_ATTRIBUTE: Int { get }
var CSSM_DB_INDEX_ON_RECORD: Int { get }
struct cssm_db_index_info {
  var IndexType: CSSM_DB_INDEX_TYPE
  var IndexedDataLocation: CSSM_DB_INDEXED_DATA_LOCATION
  var Info: CSSM_DB_ATTRIBUTE_INFO
  init()
  init(IndexType: CSSM_DB_INDEX_TYPE, IndexedDataLocation: CSSM_DB_INDEXED_DATA_LOCATION, Info: CSSM_DB_ATTRIBUTE_INFO)
}
struct cssm_db_unique_record {
  var RecordLocator: CSSM_DB_INDEX_INFO
  var RecordIdentifier: CSSM_DATA
  init()
  init(RecordLocator: CSSM_DB_INDEX_INFO, RecordIdentifier: CSSM_DATA)
}
struct cssm_db_record_index_info {
  var DataRecordType: CSSM_DB_RECORDTYPE
  var NumberOfIndexes: uint32
  var IndexInfo: CSSM_DB_INDEX_INFO_PTR
  init()
  init(DataRecordType: CSSM_DB_RECORDTYPE, NumberOfIndexes: uint32, IndexInfo: CSSM_DB_INDEX_INFO_PTR)
}
typealias CSSM_DB_ACCESS_TYPE = uint32
typealias CSSM_DB_ACCESS_TYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_DB_ACCESS_READ: Int { get }
var CSSM_DB_ACCESS_WRITE: Int { get }
var CSSM_DB_ACCESS_PRIVILEGED: Int { get }
typealias CSSM_DB_MODIFY_MODE = uint32
var CSSM_DB_MODIFY_ATTRIBUTE_NONE: Int { get }
var CSSM_DB_MODIFY_ATTRIBUTE_ADD: Int { get }
var CSSM_DB_MODIFY_ATTRIBUTE_DELETE: Int { get }
var CSSM_DB_MODIFY_ATTRIBUTE_REPLACE: Int { get }
struct cssm_dbinfo {
  var NumberOfRecordTypes: uint32
  var DefaultParsingModules: CSSM_DB_PARSING_MODULE_INFO_PTR
  var RecordAttributeNames: CSSM_DB_RECORD_ATTRIBUTE_INFO_PTR
  var RecordIndexes: CSSM_DB_RECORD_INDEX_INFO_PTR
  var IsLocal: CSSM_BOOL
  var AccessPath: UnsafeMutablePointer<Int8>
  var Reserved: UnsafeMutablePointer<Void>
  init()
  init(NumberOfRecordTypes: uint32, DefaultParsingModules: CSSM_DB_PARSING_MODULE_INFO_PTR, RecordAttributeNames: CSSM_DB_RECORD_ATTRIBUTE_INFO_PTR, RecordIndexes: CSSM_DB_RECORD_INDEX_INFO_PTR, IsLocal: CSSM_BOOL, AccessPath: UnsafeMutablePointer<Int8>, Reserved: UnsafeMutablePointer<Void>)
}
typealias CSSM_DB_OPERATOR = uint32
typealias CSSM_DB_OPERATOR_PTR = UnsafeMutablePointer<uint32>
var CSSM_DB_EQUAL: Int { get }
var CSSM_DB_NOT_EQUAL: Int { get }
var CSSM_DB_LESS_THAN: Int { get }
var CSSM_DB_GREATER_THAN: Int { get }
var CSSM_DB_CONTAINS: Int { get }
var CSSM_DB_CONTAINS_INITIAL_SUBSTRING: Int { get }
var CSSM_DB_CONTAINS_FINAL_SUBSTRING: Int { get }
typealias CSSM_DB_CONJUNCTIVE = uint32
typealias CSSM_DB_CONJUNCTIVE_PTR = UnsafeMutablePointer<uint32>
var CSSM_DB_NONE: Int { get }
var CSSM_DB_AND: Int { get }
var CSSM_DB_OR: Int { get }
struct cssm_selection_predicate {
  var DbOperator: CSSM_DB_OPERATOR
  var Attribute: CSSM_DB_ATTRIBUTE_DATA
  init()
  init(DbOperator: CSSM_DB_OPERATOR, Attribute: CSSM_DB_ATTRIBUTE_DATA)
}
var CSSM_QUERY_TIMELIMIT_NONE: Int { get }
var CSSM_QUERY_SIZELIMIT_NONE: Int { get }
struct cssm_query_limits {
  var TimeLimit: uint32
  var SizeLimit: uint32
  init()
  init(TimeLimit: uint32, SizeLimit: uint32)
}
typealias CSSM_QUERY_FLAGS = uint32
var CSSM_QUERY_RETURN_DATA: Int { get }
struct cssm_query {
  var RecordType: CSSM_DB_RECORDTYPE
  var Conjunctive: CSSM_DB_CONJUNCTIVE
  var NumSelectionPredicates: uint32
  var SelectionPredicate: CSSM_SELECTION_PREDICATE_PTR
  var QueryLimits: CSSM_QUERY_LIMITS
  var QueryFlags: CSSM_QUERY_FLAGS
  init()
  init(RecordType: CSSM_DB_RECORDTYPE, Conjunctive: CSSM_DB_CONJUNCTIVE, NumSelectionPredicates: uint32, SelectionPredicate: CSSM_SELECTION_PREDICATE_PTR, QueryLimits: CSSM_QUERY_LIMITS, QueryFlags: CSSM_QUERY_FLAGS)
}
typealias CSSM_DLTYPE = uint32
typealias CSSM_DLTYPE_PTR = UnsafeMutablePointer<uint32>
var CSSM_DL_UNKNOWN: Int { get }
var CSSM_DL_CUSTOM: Int { get }
var CSSM_DL_LDAP: Int { get }
var CSSM_DL_ODBC: Int { get }
var CSSM_DL_PKCS11: Int { get }
var CSSM_DL_FFS: Int { get }
var CSSM_DL_MEMORY: Int { get }
var CSSM_DL_REMOTEDIR: Int { get }
typealias CSSM_DL_CUSTOM_ATTRIBUTES = UnsafeMutablePointer<Void>
typealias CSSM_DL_LDAP_ATTRIBUTES = UnsafeMutablePointer<Void>
typealias CSSM_DL_ODBC_ATTRIBUTES = UnsafeMutablePointer<Void>
typealias CSSM_DL_FFS_ATTRIBUTES = UnsafeMutablePointer<Void>
struct cssm_dl_pkcs11_attributes {
  var DeviceAccessFlags: uint32
  init()
  init(DeviceAccessFlags: uint32)
}
typealias CSSM_DL_PKCS11_ATTRIBUTE = UnsafeMutablePointer<cssm_dl_pkcs11_attributes>
typealias CSSM_DL_PKCS11_ATTRIBUTE_PTR = UnsafeMutablePointer<cssm_dl_pkcs11_attributes>
var CSSM_DB_DATASTORES_UNKNOWN: UInt32 { get }
struct cssm_name_list {
  var NumStrings: uint32
  var String: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>
  init()
  init(NumStrings: uint32, String: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>)
}
typealias CSSM_DB_RETRIEVAL_MODES = uint32
var CSSM_DB_TRANSACTIONAL_MODE: Int { get }
var CSSM_DB_FILESYSTEMSCAN_MODE: Int { get }
struct cssm_db_schema_attribute_info {
  var AttributeId: uint32
  var AttributeName: UnsafeMutablePointer<Int8>
  var AttributeNameID: CSSM_OID
  var DataType: CSSM_DB_ATTRIBUTE_FORMAT
  init()
  init(AttributeId: uint32, AttributeName: UnsafeMutablePointer<Int8>, AttributeNameID: CSSM_OID, DataType: CSSM_DB_ATTRIBUTE_FORMAT)
}
struct cssm_db_schema_index_info {
  var AttributeId: uint32
  var IndexId: uint32
  var IndexType: CSSM_DB_INDEX_TYPE
  var IndexedDataLocation: CSSM_DB_INDEXED_DATA_LOCATION
  init()
  init(AttributeId: uint32, IndexId: uint32, IndexType: CSSM_DB_INDEX_TYPE, IndexedDataLocation: CSSM_DB_INDEXED_DATA_LOCATION)
}
struct cssm_state_funcs {
  var cssm_GetAttachFunctions: (@convention(c) (CSSM_MODULE_HANDLE, CSSM_SERVICE_MASK, UnsafeMutablePointer<UnsafeMutablePointer<Void>>, CSSM_GUID_PTR, UnsafeMutablePointer<CSSM_BOOL>) -> CSSM_RETURN)!
  var cssm_ReleaseAttachFunctions: (@convention(c) (CSSM_MODULE_HANDLE) -> CSSM_RETURN)!
  var cssm_GetAppMemoryFunctions: (@convention(c) (CSSM_MODULE_HANDLE, CSSM_UPCALLS_PTR) -> CSSM_RETURN)!
  var cssm_IsFuncCallValid: (@convention(c) (CSSM_MODULE_HANDLE, CSSM_PROC_ADDR!, CSSM_PROC_ADDR!, CSSM_PRIVILEGE, UnsafeMutablePointer<CSSM_PRIVILEGE>, CSSM_BITMASK, UnsafeMutablePointer<CSSM_BOOL>) -> CSSM_RETURN)!
  var cssm_DeregisterManagerServices: (@convention(c) (UnsafePointer<CSSM_GUID>) -> CSSM_RETURN)!
  var cssm_DeliverModuleManagerEvent: (@convention(c) (UnsafePointer<CSSM_MANAGER_EVENT_NOTIFICATION>) -> CSSM_RETURN)!
  init()
  init(cssm_GetAttachFunctions: (@convention(c) (CSSM_MODULE_HANDLE, CSSM_SERVICE_MASK, UnsafeMutablePointer<UnsafeMutablePointer<Void>>, CSSM_GUID_PTR, UnsafeMutablePointer<CSSM_BOOL>) -> CSSM_RETURN)!, cssm_ReleaseAttachFunctions: (@convention(c) (CSSM_MODULE_HANDLE) -> CSSM_RETURN)!, cssm_GetAppMemoryFunctions: (@convention(c) (CSSM_MODULE_HANDLE, CSSM_UPCALLS_PTR) -> CSSM_RETURN)!, cssm_IsFuncCallValid: (@convention(c) (CSSM_MODULE_HANDLE, CSSM_PROC_ADDR!, CSSM_PROC_ADDR!, CSSM_PRIVILEGE, UnsafeMutablePointer<CSSM_PRIVILEGE>, CSSM_BITMASK, UnsafeMutablePointer<CSSM_BOOL>) -> CSSM_RETURN)!, cssm_DeregisterManagerServices: (@convention(c) (UnsafePointer<CSSM_GUID>) -> CSSM_RETURN)!, cssm_DeliverModuleManagerEvent: (@convention(c) (UnsafePointer<CSSM_MANAGER_EVENT_NOTIFICATION>) -> CSSM_RETURN)!)
}
struct cssm_manager_registration_info {
  var Initialize: (@convention(c) (uint32, uint32) -> CSSM_RETURN)!
  var Terminate: (@convention(c) () -> CSSM_RETURN)!
  var RegisterDispatchTable: (@convention(c) (CSSM_STATE_FUNCS_PTR) -> CSSM_RETURN)!
  var DeregisterDispatchTable: (@convention(c) () -> CSSM_RETURN)!
  var EventNotifyManager: (@convention(c) (UnsafePointer<CSSM_MANAGER_EVENT_NOTIFICATION>) -> CSSM_RETURN)!
  var RefreshFunctionTable: (@convention(c) (CSSM_FUNC_NAME_ADDR_PTR, uint32) -> CSSM_RETURN)!
  init()
  init(Initialize: (@convention(c) (uint32, uint32) -> CSSM_RETURN)!, Terminate: (@convention(c) () -> CSSM_RETURN)!, RegisterDispatchTable: (@convention(c) (CSSM_STATE_FUNCS_PTR) -> CSSM_RETURN)!, DeregisterDispatchTable: (@convention(c) () -> CSSM_RETURN)!, EventNotifyManager: (@convention(c) (UnsafePointer<CSSM_MANAGER_EVENT_NOTIFICATION>) -> CSSM_RETURN)!, RefreshFunctionTable: (@convention(c) (CSSM_FUNC_NAME_ADDR_PTR, uint32) -> CSSM_RETURN)!)
}
var CSSM_HINT_NONE: Int { get }
var CSSM_HINT_ADDRESS_APP: Int { get }
var CSSM_HINT_ADDRESS_SP: Int { get }
var CSSM_HINT_CALLBACK: Int32 { get }
typealias CSSM_MANAGER_EVENT_TYPES = uint32
var CSSM_MANAGER_SERVICE_REQUEST: Int32 { get }
var CSSM_MANAGER_REPLY: Int32 { get }
struct cssm_manager_event_notification {
  var DestinationModuleManagerType: CSSM_SERVICE_MASK
  var SourceModuleManagerType: CSSM_SERVICE_MASK
  var Event: CSSM_MANAGER_EVENT_TYPES
  var EventId: uint32
  var EventData: CSSM_DATA
  init()
  init(DestinationModuleManagerType: CSSM_SERVICE_MASK, SourceModuleManagerType: CSSM_SERVICE_MASK, Event: CSSM_MANAGER_EVENT_TYPES, EventId: uint32, EventData: CSSM_DATA)
}
typealias MDS_HANDLE = CSSM_DL_HANDLE
typealias MDS_DB_HANDLE = CSSM_DL_DB_HANDLE
struct mds_funcs {
  var DbOpen: (@convention(c) (MDS_HANDLE, UnsafePointer<Int8>, UnsafePointer<CSSM_NET_ADDRESS>, CSSM_DB_ACCESS_TYPE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<Void>, UnsafeMutablePointer<CSSM_DB_HANDLE>) -> CSSM_RETURN)!
  var DbClose: (@convention(c) (MDS_DB_HANDLE) -> CSSM_RETURN)!
  var GetDbNames: (@convention(c) (MDS_HANDLE, UnsafeMutablePointer<CSSM_NAME_LIST_PTR>) -> CSSM_RETURN)!
  var GetDbNameFromHandle: (@convention(c) (MDS_DB_HANDLE, UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> CSSM_RETURN)!
  var FreeNameList: (@convention(c) (MDS_HANDLE, CSSM_NAME_LIST_PTR) -> CSSM_RETURN)!
  var DataInsert: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_RECORDTYPE, UnsafePointer<CSSM_DB_RECORD_ATTRIBUTE_DATA>, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!
  var DataDelete: (@convention(c) (MDS_DB_HANDLE, UnsafePointer<CSSM_DB_UNIQUE_RECORD>) -> CSSM_RETURN)!
  var DataModify: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_RECORDTYPE, CSSM_DB_UNIQUE_RECORD_PTR, UnsafePointer<CSSM_DB_RECORD_ATTRIBUTE_DATA>, UnsafePointer<CSSM_DATA>, CSSM_DB_MODIFY_MODE) -> CSSM_RETURN)!
  var DataGetFirst: (@convention(c) (MDS_DB_HANDLE, UnsafePointer<CSSM_QUERY>, CSSM_HANDLE_PTR, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!
  var DataGetNext: (@convention(c) (MDS_DB_HANDLE, CSSM_HANDLE, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!
  var DataAbortQuery: (@convention(c) (MDS_DB_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!
  var DataGetFromUniqueRecordId: (@convention(c) (MDS_DB_HANDLE, UnsafePointer<CSSM_DB_UNIQUE_RECORD>, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!
  var FreeUniqueRecord: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_UNIQUE_RECORD_PTR) -> CSSM_RETURN)!
  var CreateRelation: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_RECORDTYPE, UnsafePointer<Int8>, uint32, UnsafePointer<CSSM_DB_SCHEMA_ATTRIBUTE_INFO>, uint32, UnsafePointer<CSSM_DB_SCHEMA_INDEX_INFO>) -> CSSM_RETURN)!
  var DestroyRelation: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_RECORDTYPE) -> CSSM_RETURN)!
  init()
  init(DbOpen: (@convention(c) (MDS_HANDLE, UnsafePointer<Int8>, UnsafePointer<CSSM_NET_ADDRESS>, CSSM_DB_ACCESS_TYPE, UnsafePointer<CSSM_ACCESS_CREDENTIALS>, UnsafePointer<Void>, UnsafeMutablePointer<CSSM_DB_HANDLE>) -> CSSM_RETURN)!, DbClose: (@convention(c) (MDS_DB_HANDLE) -> CSSM_RETURN)!, GetDbNames: (@convention(c) (MDS_HANDLE, UnsafeMutablePointer<CSSM_NAME_LIST_PTR>) -> CSSM_RETURN)!, GetDbNameFromHandle: (@convention(c) (MDS_DB_HANDLE, UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> CSSM_RETURN)!, FreeNameList: (@convention(c) (MDS_HANDLE, CSSM_NAME_LIST_PTR) -> CSSM_RETURN)!, DataInsert: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_RECORDTYPE, UnsafePointer<CSSM_DB_RECORD_ATTRIBUTE_DATA>, UnsafePointer<CSSM_DATA>, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!, DataDelete: (@convention(c) (MDS_DB_HANDLE, UnsafePointer<CSSM_DB_UNIQUE_RECORD>) -> CSSM_RETURN)!, DataModify: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_RECORDTYPE, CSSM_DB_UNIQUE_RECORD_PTR, UnsafePointer<CSSM_DB_RECORD_ATTRIBUTE_DATA>, UnsafePointer<CSSM_DATA>, CSSM_DB_MODIFY_MODE) -> CSSM_RETURN)!, DataGetFirst: (@convention(c) (MDS_DB_HANDLE, UnsafePointer<CSSM_QUERY>, CSSM_HANDLE_PTR, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!, DataGetNext: (@convention(c) (MDS_DB_HANDLE, CSSM_HANDLE, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR, UnsafeMutablePointer<CSSM_DB_UNIQUE_RECORD_PTR>) -> CSSM_RETURN)!, DataAbortQuery: (@convention(c) (MDS_DB_HANDLE, CSSM_HANDLE) -> CSSM_RETURN)!, DataGetFromUniqueRecordId: (@convention(c) (MDS_DB_HANDLE, UnsafePointer<CSSM_DB_UNIQUE_RECORD>, CSSM_DB_RECORD_ATTRIBUTE_DATA_PTR, CSSM_DATA_PTR) -> CSSM_RETURN)!, FreeUniqueRecord: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_UNIQUE_RECORD_PTR) -> CSSM_RETURN)!, CreateRelation: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_RECORDTYPE, UnsafePointer<Int8>, uint32, UnsafePointer<CSSM_DB_SCHEMA_ATTRIBUTE_INFO>, uint32, UnsafePointer<CSSM_DB_SCHEMA_INDEX_INFO>) -> CSSM_RETURN)!, DestroyRelation: (@convention(c) (MDS_DB_HANDLE, CSSM_DB_RECORDTYPE) -> CSSM_RETURN)!)
}
var MDS_OBJECT_DIRECTORY_NAME: String { get }
var MDS_CDSA_DIRECTORY_NAME: String { get }
var CSSM_DB_RELATIONID_MDS_START: Int32 { get }
var CSSM_DB_RELATIONID_MDS_END: Int32 { get }
var MDS_OBJECT_RECORDTYPE: Int32 { get }
var MDS_CDSA_SCHEMA_START: Int32 { get }
var CSSM_DB_ATTRIBUTE_MDS_START: Int32 { get }
var CSSM_DB_ATTRIBUTE_MDS_END: Int32 { get }
var MDS_OBJECT_NUM_RELATIONS: Int32 { get }
var MDS_OBJECT_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_NUM_RELATIONS: Int32 { get }
var MDS_CDSADIR_CSSM_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_EMM_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_COMMON_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_CSP_PRIMARY_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_CSP_CAPABILITY_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_CSP_ENCAPSULATED_PRODUCT_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_CSP_SC_INFO_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_DL_PRIMARY_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_DL_ENCAPSULATED_PRODUCT_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_CL_PRIMARY_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_CL_ENCAPSULATED_PRODUCT_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_TP_PRIMARY_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_TP_OIDS_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_TP_ENCAPSULATED_PRODUCT_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_EMM_PRIMARY_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_AC_PRIMARY_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_SCHEMA_RELATONS_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_SCHEMA_ATTRIBUTES_NUM_ATTRIBUTES: Int32 { get }
var MDS_CDSADIR_SCHEMA_INDEXES_NUM_ATTRIBUTES: Int32 { get }
typealias DERByte = UInt8
typealias DERSize = Int
struct DERItem {
  var data: UnsafeMutablePointer<DERByte>
  var length: DERSize
  init()
  init(data: UnsafeMutablePointer<DERByte>, length: DERSize)
}
let oidRsa: DERItem
let oidMd2Rsa: DERItem
let oidMd4Rsa: DERItem
let oidMd5Rsa: DERItem
let oidSha1Rsa: DERItem
let oidSha256Rsa: DERItem
let oidSha384Rsa: DERItem
let oidSha512Rsa: DERItem
let oidSha224Rsa: DERItem
let oidEcPubKey: DERItem
let oidSha1Ecdsa: DERItem
let oidSha224Ecdsa: DERItem
let oidSha256Ecdsa: DERItem
let oidSha384Ecdsa: DERItem
let oidSha512Ecdsa: DERItem
let oidSha1Dsa: DERItem
let oidMd2: DERItem
let oidMd4: DERItem
let oidMd5: DERItem
let oidSha1: DERItem
let oidSha1DsaOIW: DERItem
let oidSha1DsaCommonOIW: DERItem
let oidSha1RsaOIW: DERItem
let oidSha256: DERItem
let oidSha384: DERItem
let oidSha512: DERItem
let oidSha224: DERItem
let oidFee: DERItem
let oidMd5Fee: DERItem
let oidSha1Fee: DERItem
let oidSubjectKeyIdentifier: DERItem
let oidKeyUsage: DERItem
let oidPrivateKeyUsagePeriod: DERItem
let oidSubjectAltName: DERItem
let oidIssuerAltName: DERItem
let oidBasicConstraints: DERItem
let oidNameConstraints: DERItem
let oidCrlDistributionPoints: DERItem
let oidCertificatePolicies: DERItem
let oidAnyPolicy: DERItem
let oidPolicyMappings: DERItem
let oidAuthorityKeyIdentifier: DERItem
let oidPolicyConstraints: DERItem
let oidExtendedKeyUsage: DERItem
let oidAnyExtendedKeyUsage: DERItem
let oidInhibitAnyPolicy: DERItem
let oidAuthorityInfoAccess: DERItem
let oidSubjectInfoAccess: DERItem
let oidAdOCSP: DERItem
let oidAdCAIssuer: DERItem
let oidNetscapeCertType: DERItem
let oidEntrustVersInfo: DERItem
let oidMSNTPrincipalName: DERItem
let oidQtCps: DERItem
let oidQtUNotice: DERItem
let oidCommonName: DERItem
let oidCountryName: DERItem
let oidLocalityName: DERItem
let oidStateOrProvinceName: DERItem
let oidOrganizationName: DERItem
let oidOrganizationalUnitName: DERItem
let oidDescription: DERItem
let oidEmailAddress: DERItem
let oidFriendlyName: DERItem
let oidLocalKeyId: DERItem
let oidExtendedKeyUsageServerAuth: DERItem
let oidExtendedKeyUsageClientAuth: DERItem
let oidExtendedKeyUsageCodeSigning: DERItem
let oidExtendedKeyUsageEmailProtection: DERItem
let oidExtendedKeyUsageTimeStamping: DERItem
let oidExtendedKeyUsageOCSPSigning: DERItem
let oidExtendedKeyUsageIPSec: DERItem
let oidExtendedKeyUsageMicrosoftSGC: DERItem
let oidExtendedKeyUsageNetscapeSGC: DERItem
let oidGoogleEmbeddedSignedCertificateTimestamp: DERItem
let oidGoogleOCSPSignedCertificateTimestamp: DERItem
var INTEL_LENGTH: Int32 { get }
var OID_ISO_CCITT_DIR_SERVICE: Int32 { get }
var OID_DS: Int32 { get }
var OID_DS_LENGTH: Int32 { get }
var OID_ISO_STANDARD: Int32 { get }
var OID_ISO_MEMBER: Int32 { get }
var OID_ISO_IDENTIFIED_ORG: Int32 { get }
var OID_ITU_RFCDATA_MEMBER_LENGTH: Int32 { get }
var OID_ITU_RFCDATA: Int32 { get }
var OID_ISO_MEMBER_LENGTH: Int32 { get }
var OID_ANSI_X9_62_LEN: Int32 { get }
var OID_PKIX_LENGTH: Int32 { get }
var OID_ETSI_LENGTH: Int32 { get }
var OID_ETSI_QCS_LENGTH: Int32 { get }
var OID_OIW_LENGTH: Int32 { get }
var OID_NIST_HASHALG_LENGTH: Int32 { get }
var OID_KERBv5_LEN: Int32 { get }
var OID_CERTICOM_LEN: Int32 { get }
var NETSCAPE_BASE_OID_LEN: Int32 { get }
var INTEL_X509_C_DATATYPE: Int32 { get }
var INTEL_X509_LDAPSTRING_DATATYPE: Int32 { get }
var CE_NCT_SSL_Client: Int32 { get }
var CE_NCT_SSL_Server: Int32 { get }
var CE_NCT_SMIME: Int32 { get }
var CE_NCT_ObjSign: Int32 { get }
var CE_NCT_Reserved: Int32 { get }
var CE_NCT_SSL_CA: Int32 { get }
var CE_NCT_SMIME_CA: Int32 { get }
var CE_NCT_ObjSignCA: Int32 { get }
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
