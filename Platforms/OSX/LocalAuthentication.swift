
@available(OSX 10.10, *)
enum LAPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /// Device owner was authenticated by Touch ID or device passcode.
  ///
  /// @discussion Touch ID or passcode authentication is required. If Touch ID is available, enrolled and
  ///             not locked out, user is asked for it first, otherwise they are asked to enter device
  ///             passcode. If passcode is not enabled, policy evaluation will fail.
  ///
  ///             Touch ID authentication dialog behaves similarly as the one used by
  ///             LAPolicyDeviceOwnerAuthenticationWithBiometrics. However, instead of "Enter Password"
  ///             button there is "Enter Passcode" button which, when tapped, switches the authentication
  ///             method and allows users to enter device passcode.
  ///
  ///             Passcode authentication will get locked after 6 unsuccessful attempts with progressively
  ///             increased backoff delay.
  @available(OSX 10.11, *)
  case DeviceOwnerAuthentication
}

/// Class that represents an authentication context.
///
/// @discussion This context can be used for evaluating policies.
///
/// @see LAPolicy
@available(OSX 10.10, *)
class LAContext : Object {

  /// Determines if a particular policy can be evaluated.
  ///
  /// @discussion Policies can have certain requirements which, when not satisfied, would always cause
  ///             the policy evaluation to fail. Examples can be a passcode set or a fingerprint
  ///             enrolled with Touch ID. This method allows easy checking for such conditions.
  ///
  ///             Applications should consume the returned value immediately and avoid relying on it
  ///             for an extensive period of time. At least, it is guaranteed to stay valid until the
  ///             application enters background.
  ///
  /// @warning    Do not call this method in the reply block of evaluatePolicy:reply: because it could
  ///             lead to a deadlock.
  ///
  /// @param policy Policy for which the preflight check should be run.
  ///
  /// @param error Optional output parameter which is set to nil if the policy can be evaluated, or it
  ///              contains error information if policy evaluation is not possible.
  ///
  /// @return YES if the policy can be evaluated, NO otherwise.
  func canEvaluatePolicy(policy: LAPolicy, error: ErrorPointer) -> Bool

  /// Evaluates the specified policy.
  ///
  /// @discussion Policy evaluation may involve prompting user for various kinds of interaction
  ///             or authentication. Actual behavior is dependent on evaluated policy, device type,
  ///             and can be affected by installed configuration profiles.
  ///
  ///             Be sure to keep a strong reference to the context while the evaluation is in progress.
  ///             Otherwise, an evaluation would be canceled when the context is being deallocated.
  ///
  ///             The method does not block. Instead, the caller must provide a reply block to be
  ///             called asynchronously when evaluation finishes. The block is executed on a private
  ///             queue internal to the framework in an unspecified threading context. Other than that,
  ///             no guarantee is made about which queue, thread, or run-loop the block is executed on.
  ///
  ///             Implications of successful policy evaluation are policy specific. In general, this
  ///             operation is not idempotent. Policy evaluation may fail for various reasons, including
  ///             user cancel, system cancel and others, see LAError codes.
  ///
  /// @param policy Policy to be evaluated.
  ///
  /// @param reply Reply block that is executed when policy evaluation finishes.
  ///
  /// @param localizedReason Application reason for authentication. This string must be provided in correct
  ///                        localization and should be short and clear. It will be eventually displayed in
  ///                        the authentication dialog subtitle. A name of the calling application will be
  ///                        already displayed in title, so it should not be duplicated here.
  ///
  /// @param success Reply parameter that is YES if the policy has been evaluated successfully or NO if
  ///                the evaluation failed.
  ///
  /// @param error Reply parameter that is nil if the policy has been evaluated successfully, or it contains
  ///              error information about the evaluation failure.
  ///
  /// @warning localizedReason parameter is mandatory and the call will throw NSInvalidArgumentException if
  ///          nil or empty string is specified.
  ///
  /// @see LAError
  ///
  /// Typical error codes returned by this call are:
  /// @li          LAErrorUserFallback if user tapped the fallback button
  /// @li          LAErrorUserCancel if user has tapped the Cancel button
  /// @li          LAErrorSystemCancel if some system event interrupted the evaluation (e.g. Home button pressed).
  func evaluatePolicy(policy: LAPolicy, localizedReason: String, reply: (Bool, Error?) -> Void)

  /// Invalidates the context.
  ///
  /// @discussion The context is invalidated automatically when it is (auto)released. This method
  ///             allows invalidating it manually while it is still in scope.
  ///
  ///             Invalidation terminates any existing policy evaluation and the respective call will
  ///             fail with LAErrorAppCancel. After the context has been invalidated, it can not be
  ///             used for policy evaluation and an attempt to do so will fail with LAErrorInvalidContext.
  ///
  ///             Invalidating a context that has been already invalidated has no effect.
  @available(OSX 10.11, *)
  func invalidate()

  /// Sets a credential to this context.
  ///
  /// @discussion Some policies allow to bind application-provided credential with them.
  ///             This method allows credential to be passed to the right context.
  ///
  /// @param credential Credential to be used with subsequent calls. Setting this parameter to nil will remove
  ///                   any existing credential of the specified type.
  ///
  /// @param type Type of the provided credential.
  ///
  /// @return YES if the credential was set successfully, NO otherwise.
  ///
  @available(OSX 10.11, *)
  func setCredential(credential: Data?, type: LACredentialType) -> Bool

  /// Reveals if credential was set with this context.
  ///
  /// @param type Type of credential we are asking for.
  ///
  /// @return YES on success, NO otherwise.
  ///
  @available(OSX 10.11, *)
  func isCredentialSet(type: LACredentialType) -> Bool

  /// Evaluates access control object for the specified operation.
  ///
  /// @discussion Access control evaluation may involve prompting user for various kinds of interaction
  ///             or authentication. Actual behavior is dependent on evaluated access control, device type,
  ///             and can be affected by installed configuration profiles.
  ///
  ///             Be sure to keep a strong reference to the context while the evaluation is in progress.
  ///             Otherwise, an evaluation would be canceled when the context is being deallocated.
  ///
  ///             The method does not block. Instead, the caller must provide a reply block to be
  ///             called asynchronously when evaluation finishes. The block is executed on a private
  ///             queue internal to the framework in an unspecified threading context. Other than that,
  ///             no guarantee is made about which queue, thread, or run-loop the block is executed on.
  ///
  ///             After successful access control evaluation, the LAContext can be used with keychain operations,
  ///             so that they do not require user to authenticate.
  ///
  ///             Access control evaluation may fail for various reasons, including user cancel, system cancel
  ///             and others, see LAError codes.
  ///
  /// @param accessControl Access control object that is typically created by SecAccessControlCreateWithFlags.
  ///
  /// @param operation Type of operation the access control will be used with.
  ///
  /// @param localizedReason Application reason for authentication. This string must be provided in correct
  ///                        localization and should be short and clear. It will be eventually displayed in
  ///                        the authentication dialog subtitle. A name of the calling application will be
  ///                        already displayed in title, so it should not be duplicated here.
  ///
  /// @param reply Reply block that is executed when access control evaluation finishes.
  ///
  /// @param success Reply parameter that is YES if the access control has been evaluated successfully or NO
  ///                if the evaluation failed.
  ///
  /// @param error Reply parameter that is nil if the access control has been evaluated successfully, or it
  ///              contains error information about the evaluation failure.
  ///
  /// @warning localizedReason parameter is mandatory and the call will throw NSInvalidArgumentException if
  ///          nil or empty string is specified.
  @available(OSX 10.11, *)
  func evaluateAccessControl(accessControl: SecAccessControl, operation: LAAccessControlOperation, localizedReason: String, reply: (Bool, Error?) -> Void)

  /// Fallback button title.
  /// @discussion Allows fallback button title customization. A default title "Enter Password" is used when
  ///             this property is left nil. If set to empty string, the button will be hidden.
  var localizedFallbackTitle: String?

  /// Contains policy domain state.
  ///
  /// @discussion  This property is set only when evaluatePolicy is called and succesful Touch ID authentication
  ///              was performed, or when canEvaluatePolicy succeeds for a biometric policy.
  ///              It stays nil for all other cases.
  ///              If finger database was modified (fingers were removed or added), evaluatedPolicyDomainState
  ///              data will change. Nature of such database changes cannot be determined
  ///              but comparing data of evaluatedPolicyDomainState after different evaluatePolicy
  ///              will reveal the fact database was changed between calls.
  @available(OSX 10.11, *)
  var evaluatedPolicyDomainState: Data? { get }
  init()
}
@available(OSX 10.11, *)
enum LACredentialType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /// Password provided by application
  ///
  /// @discussion If not set, LocalAuthentication will ask for the password when necessary. It will use
  ///             its own user interface depending on the evaluated policy or ACL.
  ///             Applications can provide the password using the setCredential method. In such case,
  ///             LocalAuthentication will not show password entry user interface.
  ///             When entered from the LocalAuthentication user interface, the password is stored as
  ///             UTF-8 encoded string.
  case ApplicationPassword
}
@available(OSX 10.11, *)
enum LAAccessControlOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /// Access control will be used for item creation.
  case CreateItem

  /// Access control will be used for accessing existing item.
  case UseItem

  /// Access control will be used for key creation.
  case CreateKey

  /// Access control will be used for accessing existing key.
  case UseKeySign
}
@available(OSX 10.10, *)
enum LAError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /// Authentication was not successful, because user failed to provide valid credentials.
  case AuthenticationFailed

  /// Authentication was canceled by user (e.g. tapped Cancel button).
  case UserCancel

  /// Authentication was canceled, because the user tapped the fallback button (Enter Password).
  case UserFallback

  /// Authentication was canceled by system (e.g. another application went to foreground).
  case SystemCancel

  /// Authentication could not start, because passcode is not set on the device.
  case PasscodeNotSet

  /// Authentication could not start, because Touch ID is not available on the device.
  case TouchIDNotAvailable

  /// Authentication could not start, because Touch ID has no enrolled fingers.
  case TouchIDNotEnrolled

  /// Authentication was not successful, because there were too many failed Touch ID attempts and
  /// Touch ID is now locked. Passcode is required to unlock Touch ID, e.g. evaluating
  /// LAPolicyDeviceOwnerAuthenticationWithBiometrics will ask for passcode as a prerequisite.
  @available(OSX 10.11, *)
  case TouchIDLockout

  /// Authentication was canceled by application (e.g. invalidate was called while
  /// authentication was in progress).
  @available(OSX 10.11, *)
  case AppCancel

  /// LAContext passed to this call has been previously invalidated.
  @available(OSX 10.11, *)
  case InvalidContext
}

extension LAError : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}

/// LocalAuthentication error domain.
@available(OSX 10.10, *)
let LAErrorDomain: String
var kLAPolicyDeviceOwnerAuthenticationWithBiometrics: Int32 { get }
var kLAPolicyDeviceOwnerAuthentication: Int32 { get }
var kLAOptionUserFallback: Int32 { get }
var kLAOptionAuthenticationReason: Int32 { get }
var kLAErrorAuthenticationFailed: Int32 { get }
var kLAErrorUserCancel: Int32 { get }
var kLAErrorUserFallback: Int32 { get }
var kLAErrorSystemCancel: Int32 { get }
var kLAErrorPasscodeNotSet: Int32 { get }
var kLAErrorTouchIDNotAvailable: Int32 { get }
var kLAErrorTouchIDNotEnrolled: Int32 { get }
var kLAErrorTouchIDLockout: Int32 { get }
var kLAErrorAppCancel: Int32 { get }
var kLAErrorInvalidContext: Int32 { get }
var kLAErrorDomain: String { get }
