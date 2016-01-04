
typealias OM_uint32 = UInt32
typealias OM_uint64 = UInt64
typealias gss_uint32 = UInt32
typealias gss_name_t = COpaquePointer
typealias gss_const_name_t = COpaquePointer
typealias gss_ctx_id_t = COpaquePointer
struct gss_OID_desc_struct {
  var length: OM_uint32
  var elements: UnsafeMutablePointer<Void>
  init()
  init(length: OM_uint32, elements: UnsafeMutablePointer<Void>)
}
typealias gss_OID_desc = gss_OID_desc_struct
typealias gss_OID = UnsafeMutablePointer<gss_OID_desc_struct>
typealias gss_const_OID = UnsafePointer<gss_OID_desc>
struct gss_OID_set_desc_struct {
  var count: Int
  var elements: gss_OID
  init()
  init(count: Int, elements: gss_OID)
}
typealias gss_OID_set_desc = gss_OID_set_desc_struct
typealias gss_OID_set = UnsafeMutablePointer<gss_OID_set_desc_struct>
typealias gss_const_OID_set = UnsafePointer<gss_OID_set_desc>
typealias gss_cred_usage_t = Int32
typealias gss_cred_id_t = COpaquePointer
typealias gss_const_cred_id_t = COpaquePointer
struct gss_buffer_desc_struct {
  var length: Int
  var value: UnsafeMutablePointer<Void>
  init()
  init(length: Int, value: UnsafeMutablePointer<Void>)
}
typealias gss_buffer_desc = gss_buffer_desc_struct
typealias gss_buffer_t = UnsafeMutablePointer<gss_buffer_desc_struct>
typealias gss_const_buffer_t = UnsafePointer<gss_buffer_desc>
struct gss_channel_bindings_struct {
  var initiator_addrtype: OM_uint32
  var initiator_address: gss_buffer_desc
  var acceptor_addrtype: OM_uint32
  var acceptor_address: gss_buffer_desc
  var application_data: gss_buffer_desc
  init()
  init(initiator_addrtype: OM_uint32, initiator_address: gss_buffer_desc, acceptor_addrtype: OM_uint32, acceptor_address: gss_buffer_desc, application_data: gss_buffer_desc)
}
typealias gss_channel_bindings_t = UnsafeMutablePointer<gss_channel_bindings_struct>
typealias gss_const_channel_bindings_t = UnsafePointer<gss_channel_bindings_struct>
struct gss_buffer_set_desc_struct {
  var count: Int
  var elements: UnsafeMutablePointer<gss_buffer_desc>
  init()
  init(count: Int, elements: UnsafeMutablePointer<gss_buffer_desc>)
}
typealias gss_buffer_set_desc = gss_buffer_set_desc_struct
typealias gss_buffer_set_t = UnsafeMutablePointer<gss_buffer_set_desc_struct>
struct gss_iov_buffer_desc_struct {
  var type: OM_uint32
  var buffer: gss_buffer_desc
  init()
  init(type: OM_uint32, buffer: gss_buffer_desc)
}
typealias gss_iov_buffer_desc = gss_iov_buffer_desc_struct
typealias gss_iov_buffer_t = UnsafeMutablePointer<gss_iov_buffer_desc_struct>
typealias gss_qop_t = OM_uint32
typealias gss_status_id_t = UnsafeMutablePointer<OM_uint32>
typealias gss_auth_identity_t = COpaquePointer
var GSS_C_DELEG_FLAG: Int32 { get }
var GSS_C_MUTUAL_FLAG: Int32 { get }
var GSS_C_REPLAY_FLAG: Int32 { get }
var GSS_C_SEQUENCE_FLAG: Int32 { get }
var GSS_C_CONF_FLAG: Int32 { get }
var GSS_C_INTEG_FLAG: Int32 { get }
var GSS_C_ANON_FLAG: Int32 { get }
var GSS_C_PROT_READY_FLAG: Int32 { get }
var GSS_C_TRANS_FLAG: Int32 { get }
var GSS_C_DCE_STYLE: Int32 { get }
var GSS_C_IDENTIFY_FLAG: Int32 { get }
var GSS_C_EXTENDED_ERROR_FLAG: Int32 { get }
var GSS_C_DELEG_POLICY_FLAG: Int32 { get }
var GSS_C_BOTH: Int32 { get }
var GSS_C_INITIATE: Int32 { get }
var GSS_C_ACCEPT: Int32 { get }
var GSS_C_GSS_CODE: Int32 { get }
var GSS_C_MECH_CODE: Int32 { get }
var GSS_C_AF_UNSPEC: Int32 { get }
var GSS_C_AF_LOCAL: Int32 { get }
var GSS_C_AF_INET: Int32 { get }
var GSS_C_AF_IMPLINK: Int32 { get }
var GSS_C_AF_PUP: Int32 { get }
var GSS_C_AF_CHAOS: Int32 { get }
var GSS_C_AF_NS: Int32 { get }
var GSS_C_AF_NBS: Int32 { get }
var GSS_C_AF_ECMA: Int32 { get }
var GSS_C_AF_DATAKIT: Int32 { get }
var GSS_C_AF_CCITT: Int32 { get }
var GSS_C_AF_SNA: Int32 { get }
var GSS_C_AF_DECnet: Int32 { get }
var GSS_C_AF_DLI: Int32 { get }
var GSS_C_AF_LAT: Int32 { get }
var GSS_C_AF_HYLINK: Int32 { get }
var GSS_C_AF_APPLETALK: Int32 { get }
var GSS_C_AF_BSC: Int32 { get }
var GSS_C_AF_DSS: Int32 { get }
var GSS_C_AF_OSI: Int32 { get }
var GSS_C_AF_X25: Int32 { get }
var GSS_C_AF_INET6: Int32 { get }
var GSS_C_AF_NULLADDR: Int32 { get }
var GSS_C_QOP_DEFAULT: Int32 { get }
var GSS_KRB5_CONF_C_QOP_DES: Int32 { get }
var GSS_KRB5_CONF_C_QOP_DES3_KD: Int32 { get }
var GSS_C_INDEFINITE: UInt { get }
var GSS_IOV_BUFFER_TYPE_EMPTY: Int32 { get }
var GSS_IOV_BUFFER_TYPE_DATA: Int32 { get }
var GSS_IOV_BUFFER_TYPE_HEADER: Int32 { get }
var GSS_IOV_BUFFER_TYPE_MECH_PARAMS: Int32 { get }
var GSS_IOV_BUFFER_TYPE_TRAILER: Int32 { get }
var GSS_IOV_BUFFER_TYPE_PADDING: Int32 { get }
var GSS_IOV_BUFFER_TYPE_STREAM: Int32 { get }
var GSS_IOV_BUFFER_TYPE_SIGN_ONLY: Int32 { get }
var GSS_IOV_BUFFER_TYPE_FLAG_MASK: UInt32 { get }
var GSS_IOV_BUFFER_FLAG_ALLOCATE: Int32 { get }
var GSS_IOV_BUFFER_FLAG_ALLOCATED: Int32 { get }
var GSS_IOV_BUFFER_TYPE_FLAG_ALLOCATE: Int32 { get }
var GSS_IOV_BUFFER_TYPE_FLAG_ALLOCATED: Int32 { get }
var GSS_S_COMPLETE: Int32 { get }
var GSS_C_CALLING_ERROR_OFFSET: Int32 { get }
var GSS_C_ROUTINE_ERROR_OFFSET: Int32 { get }
var GSS_C_SUPPLEMENTARY_OFFSET: Int32 { get }
var GSS_C_CALLING_ERROR_MASK: UInt { get }
var GSS_C_ROUTINE_ERROR_MASK: UInt { get }
var GSS_C_SUPPLEMENTARY_MASK: UInt { get }
var GSS_C_OPTION_MASK: Int32 { get }
var GSS_C_CRED_NO_UI: Int32 { get }
var GSS_C_PRF_KEY_FULL: Int32 { get }
var GSS_C_PRF_KEY_PARTIAL: Int32 { get }
var __gss_c_attr_local_login_user: gss_buffer_desc
var kGSSICPassword: String { get }
var kGSSICCertificate: String { get }
var kGSSICVerifyCredential: String { get }
var kGSSCredentialUsage: String { get }
var kGSS_C_INITIATE: String { get }
var kGSS_C_ACCEPT: String { get }
var kGSS_C_BOTH: String { get }
var kGSSICLKDCHostname: String { get }
var kGSSICKerberosCacheName: String { get }
var kGSSICSiteName: String { get }
var kGSSICAppIdentifierACL: String { get }
var kGSSICVerifyCredentialAcceptorName: String { get }
var kGSSICCreateNewCredential: String { get }
var kGSSICAppleSourceApp: String { get }
var kGSSICAppleSourceAppAuditToken: String { get }
var kGSSICAppleSourceAppPID: String { get }
var kGSSICAppleSourceAppSigningIdentity: String { get }
var kGSSChangePasswordOldPassword: String { get }
var kGSSChangePasswordNewPassword: String { get }

/**
 * Returns a GSS credential for a given UUID if the credential exists.
 *
 * @param uuid the UUID of the credential to fetch
 *
 * @returns a gss_cred_id_t, normal CoreFoundaton rules for rules
 * applies so the CFUUIDRef needs to be released with either CFRelease() or gss_release_name().
 *
 * @ingroup gssapi
 */
@available(OSX 10.9, *)
func GSSCreateCredentialFromUUID(uuid: CFUUID) -> gss_cred_id_t
@available(OSX 10.10, *)
func GSSCreateError(mech: gss_const_OID, _ major_status: OM_uint32, _ minor_status: OM_uint32) -> Unmanaged<CFError>?

/**
 * Create a GSS name from a buffer and type.
 *
 * @param name name buffer describing a credential, can be either a CFDataRef or CFStringRef of a name.
 * @param name_type on OID of the GSS_C_NT_* OIDs constants specifiy the name type.
 * @param error if an error happen, this may be set to a CFErrorRef describing the failure futher.
 *
 * @returns returns gss_name_t or NULL on failure. Must be freed using gss_release_name() or CFRelease(). Follows CoreFoundation Create/Copy rule.
 *
 * @ingroup gssapi
 */
@available(OSX 10.9, *)
func GSSCreateName(name: AnyObject, _ name_type: gss_const_OID, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> gss_name_t

/**
 * Copy the name describing the credential
 *
 * @param cred the credential to get the name from
 *
 * @returns returns gss_name_t or NULL on failure. Must be freed using gss_release_name() or CFRelease(). Follows CoreFoundation Create/Copy rule.
 *
 * @ingroup gssapi
 */
@available(OSX 10.9, *)
func GSSCredentialCopyName(cred: gss_cred_id_t) -> gss_name_t

/**
 * Returns a copy of the UUID of the GSS credential
 *
 * @param credential credential
 *
 * @returns CFUUIDRef that can be used to turn into a credential,
 * normal CoreFoundaton rules for rules applies so the CFUUIDRef needs
 * to be released.
 *
 * @ingroup gssapi
 */
@available(OSX 10.9, *)
func GSSCredentialCopyUUID(credential: gss_cred_id_t) -> Unmanaged<CFUUID>?

/**
 * Return the lifetime (in seconds) left of the credential.
 *
 * @param cred the credential to get the name from
 *
 * @returns the lifetime of the credentials. 0 on failure and
 * GSS_C_INDEFINITE on credentials that never expire.
 *
 * @ingroup gssapi
 */
@available(OSX 10.9, *)
func GSSCredentialGetLifetime(cred: gss_cred_id_t) -> OM_uint32

/**
 * Returns a string that is suitable for displaying to user, must not
 * be used for verify subjects on an ACLs.
 *
 * @param name to get a display strings from
 *
 * @returns a string that is printable. Follows CoreFoundation Create/Copy rule.
 *
 * @ingroup gssapi
 */
@available(OSX 10.9, *)
func GSSNameCreateDisplayString(name: gss_name_t) -> Unmanaged<CFString>?

/**
 * Change pasword for a gss name
 *
 * @param name name to change password for
 * @param mech mechanism to use
 * @param attributes old and new password (kGSSChangePasswordOldPassword and kGSSChangePasswordNewPassword) and other attributes.
 * @param error if not NULL, error might be set case function doesn't
 *       return GSS_S_COMPLETE, in that case is must be released with
 *       CFRelease().
 *
 * @returns returns GSS_S_COMPLETE on success, error might be set if passed in.
 *
 * @ingroup gssapi
 */
@available(OSX 10.9, *)
func gss_aapl_change_password(name: gss_name_t, _ mech: gss_const_OID, _ attributes: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> OM_uint32

/**
 * Acquire a new initial credentials using long term credentials (password, certificate).
 *
 * Credentials acquired should be free-ed with gss_release_cred() or
 * destroyed with (removed from storage) gss_destroy_cred().
 *
 * Some mechanism types can not directly acquire or validate
 * credential (for example PK-U2U, SCRAM, NTLM or IAKERB), for those
 * mechanisms its instead the gss_init_sec_context() that will either acquire or
 * force validation of the credential.
 *
 * This function is blocking and should not be used on threads used for UI updates.
 *
 * @param desired_name name to use to acquire credential. Import the name using gss_import_name(). The type of the name has to be supported by the desired_mech used.
 *
 * @param desired_mech mechanism to use to acquire credential. GSS_C_NO_OID is not valid input and a mechanism must be selected. For example GSS_KRB5_MECHANISM, GSS_NTLM_MECHNISM or any other mechanisms supported by the implementation. See gss_indicate_mechs().
 *
 * @param attributes CFDictionary that contains how to acquire the credential, see below for examples
 *
 * @param output_cred_handle the resulting credential handle, value is set to GSS_C_NO_CREDENTIAL on failure.
 *
 * @param error an CFErrorRef returned in case of an error, that needs to be released with CFRelease() by the caller, input can be NULL.
 *
 * @returns a gss_error code, see the CFErrorRef passed back in error for the failure message.
 *
 * attributes must contains one of the following keys
 * * kGSSICPassword - CFStringRef password
 * * kGSSICCertificate - SecIdentityRef, SecCertificate, or CFDataRef[data of a Keychain Persistent Reference] to the certificate to use with PKINIT/PKU2U
 *
 * optional keys
 * * kGSSCredentialUsage - one of kGSS_C_INITIATE, kGSS_C_ACCEPT, kGSS_C_BOTH, default if not given is kGSS_C_INITIATE
 * * kGSSICVerifyCredential - validate the credential with a trusted source that there was no MITM
 * * kGSSICLKDCHostname - CFStringRef hostname of LKDC hostname
 * * kGSSICKerberosCacheName - CFStringRef name of cache that will be created (including type)
 * * kGSSICSiteName - CFStringRef name of site (you are authenticating too) used for load balancing in DNS in Kerberos)
 * * kGSSICAppIdentifierACL - CFArrayRef[CFStringRef] prefix of bundle ID allowed to access this credential
 * * kGSSICCreateNewCredential - CFBooleanRef if set caller wants to create a new credential and not overwrite a credential with the same name
 *
 * * kGSSICAppleSourceApp - CFDictionaryRef application we are performing this on behalf of (only applies to AppVPN)
 *
 * Keys for kGSSICAppleSourceApp dictionary:
 *
 * - kGSSICAppleSourceAppAuditToken - audit token of process this is
 *  		preformed on behalf of, the audit_token_t is wrapped
 *  		in a CFDataRef.
 * - kGSSICAppleSourceAppPID - PID in a CFNumberRef of process this is
 *              preformed on behalf of
 * - kGSSICAppleSourceAppUUID - UUID of the application
 * - kGSSICAppleSourceAppSigningIdentity - bundle/signing identity of the application
 *
 *	  
 * @ingroup gssapi
 */
@available(OSX 10.7, *)
func gss_aapl_initial_cred(desired_name: gss_name_t, _ desired_mech: gss_const_OID, _ attributes: CFDictionary?, _ output_cred_handle: UnsafeMutablePointer<gss_cred_id_t>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> OM_uint32
var __gss_krb5_copy_ccache_x_oid_desc: gss_OID_desc
var __gss_krb5_get_tkt_flags_x_oid_desc: gss_OID_desc
var __gss_krb5_extract_authz_data_from_sec_context_x_oid_desc: gss_OID_desc
var __gss_krb5_compat_des3_mic_x_oid_desc: gss_OID_desc
var __gss_krb5_register_acceptor_identity_x_oid_desc: gss_OID_desc
var __gss_krb5_export_lucid_context_x_oid_desc: gss_OID_desc
var __gss_krb5_export_lucid_context_v1_x_oid_desc: gss_OID_desc
var __gss_krb5_set_dns_canonicalize_x_oid_desc: gss_OID_desc
var __gss_krb5_get_subkey_x_oid_desc: gss_OID_desc
var __gss_krb5_get_initiator_subkey_x_oid_desc: gss_OID_desc
var __gss_krb5_get_acceptor_subkey_x_oid_desc: gss_OID_desc
var __gss_krb5_send_to_kdc_x_oid_desc: gss_OID_desc
var __gss_krb5_get_authtime_x_oid_desc: gss_OID_desc
var __gss_krb5_get_service_keyblock_x_oid_desc: gss_OID_desc
var __gss_krb5_set_allowable_enctypes_x_oid_desc: gss_OID_desc
var __gss_krb5_set_default_realm_x_oid_desc: gss_OID_desc
var __gss_krb5_ccache_name_x_oid_desc: gss_OID_desc
var __gss_krb5_set_time_offset_x_oid_desc: gss_OID_desc
var __gss_krb5_get_time_offset_x_oid_desc: gss_OID_desc
var __gss_krb5_plugin_register_x_oid_desc: gss_OID_desc
var __gss_ntlm_get_session_key_x_oid_desc: gss_OID_desc
var __gss_c_nt_ntlm_oid_desc: gss_OID_desc
var __gss_c_nt_dn_oid_desc: gss_OID_desc
var __gss_c_ntlm_guest_oid_desc: gss_OID_desc
var __gss_c_ntlm_v1_oid_desc: gss_OID_desc
var __gss_c_ntlm_v2_oid_desc: gss_OID_desc
var __gss_c_ntlm_session_key_oid_desc: gss_OID_desc
var __gss_c_ntlm_force_v1_oid_desc: gss_OID_desc
var __gss_krb5_cred_no_ci_flags_x_oid_desc: gss_OID_desc
var __gss_c_nt_uuid_oid_desc: gss_OID_desc
var __gss_c_ntlm_support_channelbindings_oid_desc: gss_OID_desc
var __gss_c_ntlm_support_lm2_oid_desc: gss_OID_desc
var __gss_krb5_import_cred_x_oid_desc: gss_OID_desc
var __gss_c_ntlm_reset_keys_oid_desc: gss_OID_desc
var __gss_c_cred_diag_oid_desc: gss_OID_desc
var __gss_c_cred_validate_oid_desc: gss_OID_desc
var __gss_c_cred_set_default_oid_desc: gss_OID_desc
var __gss_c_cred_get_default_oid_desc: gss_OID_desc
var __gss_c_cred_renew_oid_desc: gss_OID_desc
var __gss_c_ctx_pfs_x_oid_desc: gss_OID_desc
var __gss_c_ma_sasl_mech_name_oid_desc: gss_OID_desc
var __gss_c_ma_mech_name_oid_desc: gss_OID_desc
var __gss_c_ma_mech_description_oid_desc: gss_OID_desc
var __gss_c_cred_password_oid_desc: gss_OID_desc
var __gss_c_cred_certificate_oid_desc: gss_OID_desc
var __gss_c_cred_secidentity_oid_desc: gss_OID_desc
var __gss_c_cred_heimbase_oid_desc: gss_OID_desc
var __gss_sasl_digest_md5_mechanism_oid_desc: gss_OID_desc
var __gss_netlogon_mechanism_oid_desc: gss_OID_desc
var __gss_appl_lkdc_supported_oid_desc: gss_OID_desc
var __gss_netlogon_set_session_key_x_oid_desc: gss_OID_desc
var __gss_netlogon_set_sign_algorithm_x_oid_desc: gss_OID_desc
var __gss_netlogon_nt_netbios_dns_name_oid_desc: gss_OID_desc
var __gss_c_inq_win2k_pac_x_oid_desc: gss_OID_desc
var __gss_c_inq_sspi_session_key_oid_desc: gss_OID_desc
var __gss_krb5_mechanism_oid_desc: gss_OID_desc
var __gss_ntlm_mechanism_oid_desc: gss_OID_desc
var __gss_iakerb_mechanism_oid_desc: gss_OID_desc
var __gss_pku2u_mechanism_oid_desc: gss_OID_desc
var __gss_scram_mechanism_oid_desc: gss_OID_desc
var __gss_c_nt_user_name_oid_desc: gss_OID_desc
var __gss_c_nt_machine_uid_name_oid_desc: gss_OID_desc
var __gss_c_nt_string_uid_name_oid_desc: gss_OID_desc
var __gss_c_nt_hostbased_service_x_oid_desc: gss_OID_desc
var __gss_c_nt_hostbased_service_oid_desc: gss_OID_desc
var __gss_c_nt_anonymous_oid_desc: gss_OID_desc
var __gss_c_nt_export_name_oid_desc: gss_OID_desc
var __gss_c_peer_has_updated_spnego_oid_desc: gss_OID_desc
var __gss_c_ma_mech_concrete_oid_desc: gss_OID_desc
var __gss_c_ma_mech_pseudo_oid_desc: gss_OID_desc
var __gss_c_ma_mech_composite_oid_desc: gss_OID_desc
var __gss_c_ma_mech_nego_oid_desc: gss_OID_desc
var __gss_c_ma_mech_glue_oid_desc: gss_OID_desc
var __gss_c_ma_not_mech_oid_desc: gss_OID_desc
var __gss_c_ma_deprecated_oid_desc: gss_OID_desc
var __gss_c_ma_not_dflt_mech_oid_desc: gss_OID_desc
var __gss_c_ma_itok_framed_oid_desc: gss_OID_desc
var __gss_c_ma_auth_init_oid_desc: gss_OID_desc
var __gss_c_ma_auth_targ_oid_desc: gss_OID_desc
var __gss_c_ma_auth_init_init_oid_desc: gss_OID_desc
var __gss_c_ma_auth_targ_init_oid_desc: gss_OID_desc
var __gss_c_ma_auth_init_anon_oid_desc: gss_OID_desc
var __gss_c_ma_auth_targ_anon_oid_desc: gss_OID_desc
var __gss_c_ma_deleg_cred_oid_desc: gss_OID_desc
var __gss_c_ma_integ_prot_oid_desc: gss_OID_desc
var __gss_c_ma_conf_prot_oid_desc: gss_OID_desc
var __gss_c_ma_mic_oid_desc: gss_OID_desc
var __gss_c_ma_wrap_oid_desc: gss_OID_desc
var __gss_c_ma_prot_ready_oid_desc: gss_OID_desc
var __gss_c_ma_replay_det_oid_desc: gss_OID_desc
var __gss_c_ma_oos_det_oid_desc: gss_OID_desc
var __gss_c_ma_cbindings_oid_desc: gss_OID_desc
var __gss_c_ma_pfs_oid_desc: gss_OID_desc
var __gss_c_ma_compress_oid_desc: gss_OID_desc
var __gss_c_ma_ctx_trans_oid_desc: gss_OID_desc

/**
 * @page internalVSmechname Internal names and mechanism names
 * @section gssapi_api_INvsMN Name forms
 *
 * There are two forms of name in GSS-API, Internal form and
 * Contiguous string ("flat") form. gss_export_name() and
 * gss_import_name() can be used to convert between the two forms.
 *
 * - The contiguous string form is described by an oid specificing the
 *   type and an octet string. A special form of the contiguous
 *   string form is the exported name object. The exported name
 *   defined for each mechanism, is something that can be stored and
 *   complared later. The exported name is what should be used for
 *   ACLs comparisons.
 *
 * - The Internal form
 *
 *   There is also special form of the Internal Name (IN), and that is
 *   the Mechanism Name (MN). In the mechanism name all the generic
 *   information is stripped of and only contain the information for
 *   one mechanism.  In GSS-API some function return MN and some
 *   require MN as input. Each of these function is marked up as such.
 *
 *
 * Describe relationship between import_name, canonicalize_name,
 * export_name and friends.
 */
@available(OSX 10.7, *)
func gss_accept_sec_context(minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: UnsafeMutablePointer<gss_ctx_id_t>, _ acceptor_cred_handle: gss_cred_id_t, _ input_token: gss_buffer_t, _ input_chan_bindings: gss_channel_bindings_t, _ src_name: UnsafeMutablePointer<gss_name_t>, _ mech_type: UnsafeMutablePointer<gss_OID>, _ output_token: gss_buffer_t, _ ret_flags: UnsafeMutablePointer<OM_uint32>, _ time_rec: UnsafeMutablePointer<OM_uint32>, _ delegated_cred_handle: UnsafeMutablePointer<gss_cred_id_t>) -> OM_uint32
@available(OSX 10.7, *)
func gss_acquire_cred(minor_status: UnsafeMutablePointer<OM_uint32>, _ desired_name: gss_name_t, _ time_req: OM_uint32, _ desired_mechs: gss_OID_set, _ cred_usage: gss_cred_usage_t, _ output_cred_handle: UnsafeMutablePointer<gss_cred_id_t>, _ actual_mechs: UnsafeMutablePointer<gss_OID_set>, _ time_rec: UnsafeMutablePointer<OM_uint32>) -> OM_uint32
@available(OSX 10.7, *)
func gss_acquire_cred_with_password(minor_status: UnsafeMutablePointer<OM_uint32>, _ desired_name: gss_name_t, _ password: gss_buffer_t, _ time_req: OM_uint32, _ desired_mechs: gss_OID_set, _ cred_usage: gss_cred_usage_t, _ output_cred_handle: UnsafeMutablePointer<gss_cred_id_t>, _ actual_mechs: UnsafeMutablePointer<gss_OID_set>, _ time_rec: UnsafeMutablePointer<OM_uint32>) -> OM_uint32
@available(OSX 10.7, *)
func gss_add_buffer_set_member(minor_status: UnsafeMutablePointer<OM_uint32>, _ member_buffer: gss_buffer_t, _ buffer_set: UnsafeMutablePointer<gss_buffer_set_t>) -> OM_uint32
@available(OSX 10.7, *)
func gss_add_cred(minor_status: UnsafeMutablePointer<OM_uint32>, _ input_cred_handle: gss_cred_id_t, _ desired_name: gss_name_t, _ desired_mech: gss_OID, _ cred_usage: gss_cred_usage_t, _ initiator_time_req: OM_uint32, _ acceptor_time_req: OM_uint32, _ output_cred_handle: UnsafeMutablePointer<gss_cred_id_t>, _ actual_mechs: UnsafeMutablePointer<gss_OID_set>, _ initiator_time_rec: UnsafeMutablePointer<OM_uint32>, _ acceptor_time_rec: UnsafeMutablePointer<OM_uint32>) -> OM_uint32

/**
 * Add a oid to the oid set, function does not make a copy of the oid,
 * so the pointer to member_oid needs to be stable for the whole time
 * oid_set is used.
 *
 * If there is a duplicate member of the oid, the new member is not
 * added to to the set.
 *
 * @param minor_status minor status code.
 * @param member_oid member to add to the oid set
 * @param oid_set oid set to add the member too
 *
 * @returns a gss_error code, see gss_display_status() about printing
 *          the error code.
 *
 * @ingroup gssapi
 */
@available(OSX 10.7, *)
func gss_add_oid_set_member(minor_status: UnsafeMutablePointer<OM_uint32>, _ member_oid: gss_const_OID, _ oid_set: UnsafeMutablePointer<gss_OID_set>) -> OM_uint32

/**
 *  gss_canonicalize_name takes a Internal Name (IN) and converts in into a
 *  mechanism specific Mechanism Name (MN).
 *
 *  The input name may multiple name, or generic name types.
 *
 *  If the input_name if of the GSS_C_NT_USER_NAME, and the Kerberos
 *  mechanism is specified, the resulting MN type is a
 *  GSS_KRB5_NT_PRINCIPAL_NAME.
 *
 *  For more information about @ref internalVSmechname.
 *
 *  @param minor_status minor status code.
 *  @param input_name name to covert, unchanged by gss_canonicalize_name().
 *  @param mech_type the type to convert Name too.
 *  @param output_name the resulting type, release with
 *         gss_release_name(), independent of input_name.
 *
 *  @returns a gss_error code, see gss_display_status() about printing
 *         the error code.
 *
 *  @ingroup gssapi
 */
@available(OSX 10.7, *)
func gss_canonicalize_name(minor_status: UnsafeMutablePointer<OM_uint32>, _ input_name: gss_name_t, _ mech_type: gss_OID, _ output_name: UnsafeMutablePointer<gss_name_t>) -> OM_uint32
@available(OSX 10.7, *)
func gss_compare_name(minor_status: UnsafeMutablePointer<OM_uint32>, _ name1_arg: gss_name_t, _ name2_arg: gss_name_t, _ name_equal: UnsafeMutablePointer<Int32>) -> OM_uint32
@available(OSX 10.7, *)
func gss_context_time(minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ time_rec: UnsafeMutablePointer<OM_uint32>) -> OM_uint32
@available(OSX 10.7, *)
func gss_create_empty_buffer_set(minor_status: UnsafeMutablePointer<OM_uint32>, _ buffer_set: UnsafeMutablePointer<gss_buffer_set_t>) -> OM_uint32
@available(OSX 10.7, *)
func gss_create_empty_oid_set(minor_status: UnsafeMutablePointer<OM_uint32>, _ oid_set: UnsafeMutablePointer<gss_OID_set>) -> OM_uint32
@available(OSX 10.7, *)
func gss_decapsulate_token(input_token: gss_const_buffer_t, _ oid: gss_const_OID, _ output_token: gss_buffer_t) -> OM_uint32
@available(OSX 10.7, *)
func gss_delete_sec_context(minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: UnsafeMutablePointer<gss_ctx_id_t>, _ output_token: gss_buffer_t) -> OM_uint32

/**
 * Destroy a credential 
 *
 * gss_release_cred() frees the memory, gss_destroy_cred() removes the credentials from memory/disk and then call gss_release_cred() on the credential.
 *
 * @param min_stat minor status code
 * @param cred_handle credentail to destory
 *
 * @returns a gss_error code, see gss_display_status() about printing
 *          the error code.
 * 
 * @ingroup gssapi
 */
@available(OSX 10.7, *)
func gss_destroy_cred(min_stat: UnsafeMutablePointer<OM_uint32>, _ cred_handle: UnsafeMutablePointer<gss_cred_id_t>) -> OM_uint32

/**
 * Return names and descriptions of mech attributes
 *
 * @param minor_status minor status code
 * @param mech_attr attributes wanted
 * @param name name of attribute
 * @param short_desc short description
 * @param long_desc long description
 *
 * @return returns GSS_S_COMPLETE or an error code.
 */
@available(OSX 10.7, *)
func gss_display_mech_attr(minor_status: UnsafeMutablePointer<OM_uint32>, _ mech_attr: gss_const_OID, _ name: gss_buffer_t, _ short_desc: gss_buffer_t, _ long_desc: gss_buffer_t) -> OM_uint32

/**
 * Create a representstion of a name suitable for display
 *
 * A name that is useful to print to user, not suitable for
 * authorization. For authorization use gss_authorize_localname(), or
 * gss_userok().
 *
 * @param minor_status minor status code returned
 * @param input_name name to be converted into a name
 * @param output_name_buffer output buffer with name, must be released with gss_release_buffer() on success.
 * @param output_name_type type OID of then name
 *
 * @returns GSS major status code
 *
 * @ingroup gssapi
 */
@available(OSX 10.7, *)
func gss_display_name(minor_status: UnsafeMutablePointer<OM_uint32>, _ input_name: gss_name_t, _ output_name_buffer: gss_buffer_t, _ output_name_type: UnsafeMutablePointer<gss_OID>) -> OM_uint32
@available(OSX 10.7, *)
func gss_display_status(minor_status: UnsafeMutablePointer<OM_uint32>, _ status_value: OM_uint32, _ status_type: Int32, _ mech_type: gss_OID, _ message_content: UnsafeMutablePointer<OM_uint32>, _ status_string: gss_buffer_t) -> OM_uint32
@available(OSX 10.7, *)
func gss_duplicate_name(minor_status: UnsafeMutablePointer<OM_uint32>, _ src_name: gss_name_t, _ dest_name: UnsafeMutablePointer<gss_name_t>) -> OM_uint32
@available(OSX 10.7, *)
func gss_encapsulate_token(input_token: gss_const_buffer_t, _ oid: gss_const_OID, _ output_token: gss_buffer_t) -> OM_uint32
@available(OSX 10.7, *)
func gss_export_cred(minor_status: UnsafeMutablePointer<OM_uint32>, _ cred_handle: gss_cred_id_t, _ token: gss_buffer_t) -> OM_uint32
@available(OSX 10.7, *)
func gss_export_name(minor_status: UnsafeMutablePointer<OM_uint32>, _ input_name: gss_name_t, _ exported_name: gss_buffer_t) -> OM_uint32
@available(OSX 10.7, *)
func gss_export_sec_context(minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: UnsafeMutablePointer<gss_ctx_id_t>, _ interprocess_token: gss_buffer_t) -> OM_uint32
@available(OSX 10.7, *)
func gss_get_mic(minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ qop_req: gss_qop_t, _ message_buffer: gss_buffer_t, _ message_token: gss_buffer_t) -> OM_uint32
@available(OSX 10.7, *)
func gss_import_cred(minor_status: UnsafeMutablePointer<OM_uint32>, _ token: gss_buffer_t, _ cred_handle: UnsafeMutablePointer<gss_cred_id_t>) -> OM_uint32

/**
 * Import a name internal or mechanism name
 *
 * Type of name and their format:
 * - GSS_C_NO_OID
 * - GSS_C_NT_USER_NAME
 * - GSS_C_NT_HOSTBASED_SERVICE
 * - GSS_C_NT_EXPORT_NAME
 * - GSS_C_NT_ANONYMOUS
 * - GSS_KRB5_NT_PRINCIPAL_NAME
 *
 * For more information about @ref internalVSmechname.
 *
 * @param minor_status minor status code
 * @param input_name_buffer import name buffer
 * @param input_name_type type of the import name buffer
 * @param output_name the resulting type, release with
 *        gss_release_name(), independent of input_name
 *
 * @returns a gss_error code, see gss_display_status() about printing
 *        the error code.
 *
 * @ingroup gssapi
 */
@available(OSX 10.7, *)
func gss_import_name(minor_status: UnsafeMutablePointer<OM_uint32>, _ input_name_buffer: gss_buffer_t, _ input_name_type: gss_const_OID, _ output_name: UnsafeMutablePointer<gss_name_t>) -> OM_uint32

/**
	 * If we can't find a mechanism name for the name, we fail though.
 */
@available(OSX 10.7, *)
func gss_import_sec_context(minor_status: UnsafeMutablePointer<OM_uint32>, _ interprocess_token: gss_buffer_t, _ context_handle: UnsafeMutablePointer<gss_ctx_id_t>) -> OM_uint32
@available(OSX 10.7, *)
func gss_indicate_mechs(minor_status: UnsafeMutablePointer<OM_uint32>, _ mech_set: UnsafeMutablePointer<gss_OID_set>) -> OM_uint32

/**
 * Return set of mechanism that fullfill the criteria
 *
 * @return returns GSS_S_COMPLETE or an error code.
 */
@available(OSX 10.10, *)
func gss_indicate_mechs_by_attrs(minor_status: UnsafeMutablePointer<OM_uint32>, _ desired_mech_attrs: gss_const_OID_set, _ except_mech_attrs: gss_const_OID_set, _ critical_mech_attrs: gss_const_OID_set, _ mechs: UnsafeMutablePointer<gss_OID_set>) -> OM_uint32

/**
 * As the initiator build a context with an acceptor.
 *
 * This function is blocking and should not be used on threads blocking UI updates.
 *
 * Returns in the major
 * - GSS_S_COMPLETE - if the context if build
 * - GSS_S_CONTINUE_NEEDED -  if the caller needs  to continue another
 *	round of gss_i nit_sec_context
 * - error code - any other error code
 *
 * @param minor_status minor status code.
 *
 * @param initiator_cred_handle the credential to use when building
 *        the context, if GSS_C_NO_CREDENTIAL is passed, the default
 *        credential for the mechanism will be used.
 *
 * @param context_handle a pointer to a context handle, will be
 * 	  returned as long as there is not an error.
 *
 * @param target_name the target name of acceptor, created using
 * 	  gss_import_name(). The name is can be of any name types the
 * 	  mechanism supports, check supported name types with
 * 	  gss_inquire_names_for_mech().
 *
 * @param input_mech_type mechanism type to use, if GSS_C_NO_OID is
 *        used, Kerberos (GSS_KRB5_MECHANISM) will be tried. Other
 *        available mechanism are listed in the @ref gssapi_mechs_intro
 *        section.
 *
 * @param req_flags flags using when building the context, see @ref
 *        gssapi_context_flags
 *
 * @param time_req time requested this context should be valid in
 *        seconds, common used value is GSS_C_INDEFINITE
 *
 * @param input_chan_bindings Channel bindings used, if not exepected
 *        otherwise, used GSS_C_NO_CHANNEL_BINDINGS
 *
 * @param input_token input token sent from the acceptor, for the
 * 	  initial packet the buffer of { NULL, 0 } should be used.
 *
 * @param actual_mech_type the actual mech used, MUST NOT be freed
 *        since it pointing to static memory.
 *
 * @param output_token if there is an output token, regardless of
 * 	  complete, continue_needed, or error it should be sent to the
 * 	  acceptor
 *
 * @param ret_flags return what flags was negotitated, caller should
 * 	  check if they are accetable. For example, if
 * 	  GSS_C_MUTUAL_FLAG was negotiated with the acceptor or not.
 *
 * @param time_rec amount of time this context is valid for
 *
 * @returns a gss_error code, see gss_display_status() about printing
 *          the error code.
 *
 * @ingroup gssapi
 */
@available(OSX 10.7, *)
func gss_init_sec_context(minor_status: UnsafeMutablePointer<OM_uint32>, _ initiator_cred_handle: gss_cred_id_t, _ context_handle: UnsafeMutablePointer<gss_ctx_id_t>, _ target_name: gss_name_t, _ input_mech_type: gss_OID, _ req_flags: OM_uint32, _ time_req: OM_uint32, _ input_chan_bindings: gss_channel_bindings_t, _ input_token: gss_buffer_t, _ actual_mech_type: UnsafeMutablePointer<gss_OID>, _ output_token: gss_buffer_t, _ ret_flags: UnsafeMutablePointer<OM_uint32>, _ time_rec: UnsafeMutablePointer<OM_uint32>) -> OM_uint32

/**
 * List support attributes for a mech and/or all mechanisms.
 *
 * @param minor_status minor status code
 * @param mech given together with mech_attr will return the list of
 *        attributes for mechanism, can optionally be GSS_C_NO_OID.
 * @param mech_attr see mech parameter, can optionally be NULL,
 *        release with gss_release_oid_set().
 * @param known_mech_attrs all attributes for mechanisms supported,
 *        release with gss_release_oid_set().
 *
 * @ingroup gssapi
 */
@available(OSX 10.7, *)
func gss_inquire_attrs_for_mech(minor_status: UnsafeMutablePointer<OM_uint32>, _ mech: gss_const_OID, _ mech_attr: UnsafeMutablePointer<gss_OID_set>, _ known_mech_attrs: UnsafeMutablePointer<gss_OID_set>) -> OM_uint32
@available(OSX 10.7, *)
func gss_inquire_context(minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ src_name: UnsafeMutablePointer<gss_name_t>, _ targ_name: UnsafeMutablePointer<gss_name_t>, _ lifetime_rec: UnsafeMutablePointer<OM_uint32>, _ mech_type: UnsafeMutablePointer<gss_OID>, _ ctx_flags: UnsafeMutablePointer<OM_uint32>, _ locally_initiated: UnsafeMutablePointer<Int32>, _ xopen: UnsafeMutablePointer<Int32>) -> OM_uint32
@available(OSX 10.7, *)
func gss_inquire_cred(minor_status: UnsafeMutablePointer<OM_uint32>, _ cred_handle: gss_cred_id_t, _ name_ret: UnsafeMutablePointer<gss_name_t>, _ lifetime: UnsafeMutablePointer<OM_uint32>, _ cred_usage: UnsafeMutablePointer<gss_cred_usage_t>, _ mechanisms: UnsafeMutablePointer<gss_OID_set>) -> OM_uint32
@available(OSX 10.7, *)
func gss_inquire_cred_by_mech(minor_status: UnsafeMutablePointer<OM_uint32>, _ cred_handle: gss_cred_id_t, _ mech_type: gss_OID, _ cred_name: UnsafeMutablePointer<gss_name_t>, _ initiator_lifetime: UnsafeMutablePointer<OM_uint32>, _ acceptor_lifetime: UnsafeMutablePointer<OM_uint32>, _ cred_usage: UnsafeMutablePointer<gss_cred_usage_t>) -> OM_uint32
@available(OSX 10.7, *)
func gss_inquire_cred_by_oid(minor_status: UnsafeMutablePointer<OM_uint32>, _ cred_handle: gss_cred_id_t, _ desired_object: gss_OID, _ data_set: UnsafeMutablePointer<gss_buffer_set_t>) -> OM_uint32

/**
 * Find a mech for a sasl name
 *
 * @param minor_status minor status code
 * @param sasl_mech_name sasl mech name
 * @param mech_type mech type
 *
 * @return returns GSS_S_COMPLETE or an error code.
 */
@available(OSX 10.10, *)
func gss_inquire_mech_for_saslname(minor_status: UnsafeMutablePointer<OM_uint32>, _ sasl_mech_name: gss_buffer_t, _ mech_type: UnsafeMutablePointer<gss_OID>) -> OM_uint32
@available(OSX 10.7, *)
func gss_inquire_mechs_for_name(minor_status: UnsafeMutablePointer<OM_uint32>, _ input_name: gss_name_t, _ mech_types: UnsafeMutablePointer<gss_OID_set>) -> OM_uint32
@available(OSX 10.7, *)
func gss_inquire_name(minor_status: UnsafeMutablePointer<OM_uint32>, _ input_name: gss_name_t, _ name_is_MN: UnsafeMutablePointer<Int32>, _ MN_mech: UnsafeMutablePointer<gss_OID>, _ attrs: UnsafeMutablePointer<gss_buffer_set_t>) -> OM_uint32
@available(OSX 10.7, *)
func gss_inquire_names_for_mech(minor_status: UnsafeMutablePointer<OM_uint32>, _ mechanism: gss_const_OID, _ name_types: UnsafeMutablePointer<gss_OID_set>) -> OM_uint32

/**
 * Returns different protocol names and description of the mechanism.
 *
 * @param minor_status minor status code
 * @param desired_mech mech list query
 * @param sasl_mech_name SASL GS2 protocol name
 * @param mech_name gssapi protocol name
 * @param mech_description description of gssapi mech
 *
 * @return returns GSS_S_COMPLETE or a error code.
 *
 * @ingroup gssapi
 */
@available(OSX 10.10, *)
func gss_inquire_saslname_for_mech(minor_status: UnsafeMutablePointer<OM_uint32>, _ desired_mech: gss_OID, _ sasl_mech_name: gss_buffer_t, _ mech_name: gss_buffer_t, _ mech_description: gss_buffer_t) -> OM_uint32
@available(OSX 10.7, *)
func gss_inquire_sec_context_by_oid(minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ desired_object: gss_OID, _ data_set: UnsafeMutablePointer<gss_buffer_set_t>) -> OM_uint32
@available(OSX 10.7, *)
func gss_iter_creds(min_stat: UnsafeMutablePointer<OM_uint32>, _ flags: OM_uint32, _ mech: gss_const_OID, _ useriter: (gss_OID, gss_cred_id_t) -> Void) -> OM_uint32

/**
 * Iterate over all credentials
 *
 * @param min_stat set to minor status in case of an error
 * @param flags flags argument, no flags currently defined, pass in 0 (zero)
 * @param mech the mechanism type of credentials to iterate over, by passing in GSS_C_NO_OID, the function will iterate over all credentails
 * @param userctx user context passed to the useriter funcion
 * @param useriter function that will be called on each gss_cred_id_t, when NULL is passed the list is completed. Must free the credential with gss_release_cred().
 *
 * @ingroup gssapi
 */
@available(OSX 10.7, *)
func gss_iter_creds_f(min_stat: UnsafeMutablePointer<OM_uint32>, _ flags: OM_uint32, _ mech: gss_const_OID, _ userctx: UnsafeMutablePointer<Void>, _ useriter: @convention(c) (UnsafeMutablePointer<Void>, gss_OID, gss_cred_id_t) -> Void) -> OM_uint32
@available(OSX 10.7, *)
func gss_krb5_ccache_name(minor_status: UnsafeMutablePointer<OM_uint32>, _ name: UnsafePointer<Int8>, _ out_name: UnsafeMutablePointer<UnsafePointer<Int8>>) -> OM_uint32
@available(OSX 10.7, *)
func gss_krb5_export_lucid_sec_context(minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: UnsafeMutablePointer<gss_ctx_id_t>, _ version: OM_uint32, _ rctx: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> OM_uint32
@available(OSX 10.7, *)
func gss_krb5_free_lucid_sec_context(minor_status: UnsafeMutablePointer<OM_uint32>, _ c: UnsafeMutablePointer<Void>) -> OM_uint32
@available(OSX 10.7, *)
func gss_krb5_set_allowable_enctypes(minor_status: UnsafeMutablePointer<OM_uint32>, _ cred: gss_cred_id_t, _ num_enctypes: OM_uint32, _ enctypes: UnsafeMutablePointer<Int32>) -> OM_uint32

/**
 * Compare two GSS-API OIDs with each other.
 *
 * GSS_C_NO_OID matches nothing, not even it-self.
 *
 * @param a first oid to compare
 * @param b second oid to compare
 *
 * @return non-zero when both oid are the same OID, zero when they are
 *         not the same.
 *
 * @ingroup gssapi
 */
@available(OSX 10.7, *)
func gss_oid_equal(a: gss_const_OID, _ b: gss_const_OID) -> Int32

/**
 * Turn an mech OID into an name
 *
 * Try to turn a OID into a mechanism name. If a matching OID can't be
 * found, this function will return NULL.
 *
 * The caller must free the oid_str buffer with gss_release_buffer()
 * when done with the string.
 *	  
 * @param minor_status an minor status code
 * @param oid an oid
 * @param oid_str buffer that will point to a NUL terminated string that is the numreric OID
 *
 * @returns a gss major status code
 *
 * @ingroup gssapi
 */
@available(OSX 10.7, *)
func gss_oid_to_str(minor_status: UnsafeMutablePointer<OM_uint32>, _ oid: gss_OID, _ oid_str: gss_buffer_t) -> OM_uint32
@available(OSX 10.7, *)
func gss_process_context_token(minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ token_buffer: gss_buffer_t) -> OM_uint32
@available(OSX 10.7, *)
func gss_pseudo_random(minor_status: UnsafeMutablePointer<OM_uint32>, _ context: gss_ctx_id_t, _ prf_key: Int32, _ prf_in: gss_buffer_t, _ desired_output_len: Int, _ prf_out: gss_buffer_t) -> OM_uint32
@available(OSX 10.7, *)
func gss_release_buffer(minor_status: UnsafeMutablePointer<OM_uint32>, _ buffer: gss_buffer_t) -> OM_uint32
@available(OSX 10.7, *)
func gss_release_buffer_set(minor_status: UnsafeMutablePointer<OM_uint32>, _ buffer_set: UnsafeMutablePointer<gss_buffer_set_t>) -> OM_uint32

/**
 * Release a credentials
 *
 * Its ok to release the GSS_C_NO_CREDENTIAL/NULL credential, it will
 * return a GSS_S_COMPLETE error code. On return cred_handle is set ot
 * GSS_C_NO_CREDENTIAL.
 *
 * Example:
 *
 * @code
 * gss_cred_id_t cred = GSS_C_NO_CREDENTIAL;
 * major = gss_release_cred(&minor, &cred);
 * @endcode
 *
 * @param minor_status minor status return code, mech specific
 * @param cred_handle a pointer to the credential too release
 *
 * @return an gssapi error code
 *
 * @ingroup gssapi
 */
@available(OSX 10.7, *)
func gss_release_cred(minor_status: UnsafeMutablePointer<OM_uint32>, _ cred_handle: UnsafeMutablePointer<gss_cred_id_t>) -> OM_uint32

/**
 * Free a name
 *
 * import_name can point to NULL or be NULL, or a pointer to a
 * gss_name_t structure. If it was a pointer to gss_name_t, the
 * pointer will be set to NULL on success and failure.
 *
 * @param minor_status minor status code
 * @param input_name name to free
 *
 * @returns a gss_error code, see gss_display_status() about printing
 *        the error code.
 *
 * @ingroup gssapi
 */
@available(OSX 10.7, *)
func gss_release_name(minor_status: UnsafeMutablePointer<OM_uint32>, _ input_name: UnsafeMutablePointer<gss_name_t>) -> OM_uint32
@available(OSX 10.7, *)
func gss_release_oid_set(minor_status: UnsafeMutablePointer<OM_uint32>, _ set: UnsafeMutablePointer<gss_OID_set>) -> OM_uint32
@available(OSX 10.7, *)
func gss_set_cred_option(minor_status: UnsafeMutablePointer<OM_uint32>, _ cred_handle: UnsafeMutablePointer<gss_cred_id_t>, _ object: gss_OID, _ value: gss_buffer_t) -> OM_uint32
@available(OSX 10.7, *)
func gss_set_sec_context_option(minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: UnsafeMutablePointer<gss_ctx_id_t>, _ object: gss_OID, _ value: gss_buffer_t) -> OM_uint32
@available(OSX 10.7, *)
func gss_test_oid_set_member(minor_status: UnsafeMutablePointer<OM_uint32>, _ member: gss_const_OID, _ set: gss_OID_set, _ present: UnsafeMutablePointer<Int32>) -> OM_uint32
@available(OSX 10.7, *)
func gss_unwrap(minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ input_message_buffer: gss_buffer_t, _ output_message_buffer: gss_buffer_t, _ conf_state: UnsafeMutablePointer<Int32>, _ qop_state: UnsafeMutablePointer<gss_qop_t>) -> OM_uint32
@available(OSX 10.9, *)
func gss_userok(name: gss_name_t, _ user: UnsafePointer<Int8>) -> Int32
@available(OSX 10.7, *)
func gss_verify_mic(minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ message_buffer: gss_buffer_t, _ token_buffer: gss_buffer_t, _ qop_state: UnsafeMutablePointer<gss_qop_t>) -> OM_uint32

/**
 * Wrap a message using either confidentiality (encryption +
 * signature) or sealing (signature).
 *
 * @param minor_status minor status code.
 * @param context_handle context handle.
 * @param conf_req_flag if non zero, confidentiality is requestd.
 * @param qop_req type of protection needed, in most cases it GSS_C_QOP_DEFAULT should be passed in.
 * @param input_message_buffer messages to wrap
 * @param conf_state returns non zero if confidentiality was honoured.
 * @param output_message_buffer the resulting buffer, release with gss_release_buffer().
 *
 * @ingroup gssapi
 */
@available(OSX 10.7, *)
func gss_wrap(minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ conf_req_flag: Int32, _ qop_req: gss_qop_t, _ input_message_buffer: gss_buffer_t, _ conf_state: UnsafeMutablePointer<Int32>, _ output_message_buffer: gss_buffer_t) -> OM_uint32
@available(OSX 10.7, *)
func gss_wrap_size_limit(minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ conf_req_flag: Int32, _ qop_req: gss_qop_t, _ req_output_size: OM_uint32, _ max_input_size: UnsafeMutablePointer<OM_uint32>) -> OM_uint32
@available(OSX 10.7, *)
func gsskrb5_extract_authz_data_from_sec_context(minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ ad_type: Int32, _ ad_data: gss_buffer_t) -> OM_uint32
@available(OSX 10.7, *)
func gsskrb5_register_acceptor_identity(identity: UnsafePointer<Int8>) -> OM_uint32
@available(OSX 10.7, *)
func krb5_gss_register_acceptor_identity(identity: UnsafePointer<Int8>) -> OM_uint32
var __gss_spnego_mechanism_oid_desc: gss_OID_desc
