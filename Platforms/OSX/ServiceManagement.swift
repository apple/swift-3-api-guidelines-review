
@available(OSX, introduced=10.6, deprecated=10.10)
let kSMErrorDomainIPC: CFString!
@available(OSX, introduced=10.6, deprecated=10.10)
let kSMErrorDomainFramework: CFString!
@available(OSX, introduced=10.6, deprecated=10.10)
let kSMErrorDomainLaunchd: CFString!
var kSMErrorInternalFailure: Int { get }
var kSMErrorInvalidSignature: Int { get }
var kSMErrorAuthorizationFailure: Int { get }
var kSMErrorToolNotValid: Int { get }
var kSMErrorJobNotFound: Int { get }
var kSMErrorServiceUnavailable: Int { get }
var kSMErrorJobPlistNotFound: Int { get }
var kSMErrorJobMustBeEnabled: Int { get }
var kSMErrorInvalidPlist: Int { get }

/*!
 * @function SMLoginItemSetEnabled
 *
 * @abstract 
 * Enable a helper application located in the main application bundle's 
 * Contents/Library/LoginItems directory.
 *
 * @param identifier
 * The bundle identifier of the helper application bundle.
 *
 * @param enabled
 * The Boolean enabled state of the helper application. This value is effective
 * only for the currently logged in user. If true, the helper application will
 * be started immediately (and upon subsequent logins) and kept running. If
 * false, the helper application will no longer be kept running.
 *
 * @result 
 * Returns true if the requested change has taken effect.
 */
@available(OSX 10.6, *)
func SMLoginItemSetEnabled(identifier: CFString, _ enabled: UInt8) -> UInt8
var kSMRightBlessPrivilegedHelper: String { get }
var kSMRightModifySystemDaemons: String { get }

/*! 
 * @abstract
 * A constant representing the privileged Mach bootstrap context. Modifications
 * to this context require root privileges.
 */
@available(OSX 10.6, *)
let kSMDomainSystemLaunchd: CFString!

/*! 
 * @abstract
 * A constant representing the Mach bootstrap context associated with the
 * caller's UID. On iOS, this symbol is a synonym for 
 * {@link kSMDomainSystemLaunchd}.
 */
@available(OSX 10.6, *)
let kSMDomainUserLaunchd: CFString!

/*!
 * @function SMJobCopyDictionary
 *
 * @abstract
 * Copy the job description dictionary for the given job label.
 *
 * @param domain
 * The job's domain (e.g. {@link kSMDomainSystemLaunchd} or
 * {@link kSMDomainUserLaunchd}).
 *
 * @param jobLabel
 * The label identifier for the job to copy.
 *
 * @result
 * A new dictionary describing the job, or NULL if the job could not be found.
 * Must be released by the caller.
 *
 * @discussion
 * The contents of the returned dictionary are NOT wholy representative of the
 * property list on-disk and are not stable from release to release. This 
 * routine is deprecated and will be removed in a future release. There will be
 * no provided replacement.
 */
@available(OSX, introduced=10.6, deprecated=10.10)
func SMJobCopyDictionary(domain: CFString!, _ jobLabel: CFString) -> Unmanaged<CFDictionary>!

/*!
 * @function SMCopyAllJobDictionaries
 * @abstract
 * Copy the job description dictionaries for all jobs in the given domain.
 *
 * @param domain
 * The job's domain (e.g. {@link kSMDomainSystemLaunchd} or
 * {@link kSMDomainUserLaunchd}).
 *
 * @result
 * A new array containing all job dictionaries, or NULL if an error occurred. 
 * Must be released by the caller.
 *
 * @discussion
 * SMCopyAllJobDictionaries returns an array of the job description dictionaries
 * for all jobs in the given domain, or NULL if an error occurred. This routine
 * is deprecated and will be removed in a future release. There will be no
 * provided replacement.
 *
 * For the specific use of testing the state of a login item that may have been
 * enabled with SMLoginItemSetEnabled() in order to show that state to the
 * user, this function remains the recommended API. A replacement API for this
 * specific use will be provided before this function is removed.
 */
@available(OSX, introduced=10.6, deprecated=10.10)
func SMCopyAllJobDictionaries(domain: CFString!) -> Unmanaged<CFArray>!

/*!
 * @function SMJobSubmit
 * @abstract
 * Submits the given job to the specified domain.
 * 
 * @param domain
 * The job's domain (e.g. {@link kSMDomainSystemLaunchd} or
 * {@link kSMDomainUserLaunchd}).
 *
 * @param job
 * A dictionary describing a job.
 *
 * @param auth
 * An AuthorizationRef containing the {@link kSMRightModifySystemDaemons} right
 * if the given domain is kSMDomainSystemLaunchd. Otherwise, NULL may be passed.
 *
 * @param outError
 * Upon unsuccessful return, a new CFError object describing the error.  Upon 
 * successful return, this argument is set to NULL.  This argument may be NULL. 
 * It is the responsibility of the application to release the error reference.
 *
 * @result 
 * True if the job was submitted successfully, otherwise false.
 *
 * @discussion
 * This routine is deprecated and will be removed in a future release. A 
 * replacement will be provided by libxpc.
 */
@available(OSX, introduced=10.6, deprecated=10.10)
func SMJobSubmit(domain: CFString!, _ job: CFDictionary, _ auth: AuthorizationRef, _ outError: UnsafeMutablePointer<Unmanaged<CFError>?>) -> UInt8

/*!
 * @function SMJobRemove
 *
 * @abstract
 * Removes the job with the given label from the specified domain.
 *
 * @param domain
 * The job's domain (e.g. {@link kSMDomainSystemLaunchd} or
 * {@link kSMDomainUserLaunchd}).
 *
 * @param jobLabel
 * The label for the job to remove.
 *
 * @param auth
 * An AuthorizationRef containing the {@link kSMRightModifySystemDaemons} right
 * if the given domain is kSMDomainSystemLaunchd. Otherwise, NULL may be passed.
 *
 * @param wait
 * Pass true to block until the process for the given job has exited.
 *
 * @param outError
 * Upon unsuccessful return, a new CFError object describing the error.  Upon 
 * successful return, this argument is set to NULL.  This argument may be NULL. 
 * It is the responsibility of the application to release the error reference.
 *
 * @result
 * True if the job was removed successfully, otherwise false.
 *
 * @discussion
 * This routine is deprecated and will be removed in a future release. A
 * replacement will be provided by libxpc.
 */
@available(OSX, introduced=10.6, deprecated=10.10)
func SMJobRemove(domain: CFString!, _ jobLabel: CFString, _ auth: AuthorizationRef, _ wait: UInt8, _ outError: UnsafeMutablePointer<Unmanaged<CFError>?>) -> UInt8

/*!
 * @function SMJobBless
 *
 * If the job is already installed, success is returned.
 *
 * In order to use this function the following requirements must be met:
 *
 * 1.	The calling application and target executable tool must both be signed.
 * 
 * 2.	The calling application's Info.plist must include a
 *		"SMPrivilegedExecutables" dictionary of strings. Each string is a
 *		textual representation of a code signing requirement used to determine
 *		whether the application owns the privileged tool once installed (i.e. in
 *		order for subsequent versions to update the installed version).
 *
 *		Each key of SMPrivilegedExecutables is a reverse-DNS label for the helper
 *		tool (must be globally unique).
 *
 * 3.	The helper tool must have an embedded Info.plist containing an 
 *		"SMAuthorizedClients" array of strings. Each string is a textual 
 *		representation of a code signing requirement describing a client which 
 *		is allowed to add and remove the tool.
 *
 * 4.	The helper tool must have an embedded launchd plist. The only required 
 *		key in this plist is the Label key. When the launchd plist is extracted 
 *		and written to disk, the key for ProgramArguments will be set to an 
 *		array of 1 element pointing to a standard location. You cannot specify 
 *		your own Program or ProgramArguments, so do not rely on custom command 
 *		line arguments being passed to your tool. Pass any parameters via IPC.
 *		This plist must be embedded in the __TEXT,__launchd_plist section of the
 *		binary.
 *
 *		A property list may be embedded in an executable at link-time with the
 *		-sectcreate linker flag.
 *
 * 5.	The helper tool must reside in the Contents/Library/LaunchServices 
 *		directory inside the application bundle, and its name must be its 
 *		launchd job label. So if your launchd job label is 
 *		"com.apple.Mail.helper", this must be the name of the tool in your 
 *		application bundle.
 * 
 * @param domain
 * The job's domain. Passing any value other than {@link kSMDomainSystemLaunchd}
 * will result in undefined behavior.
 *
 * @param executableLabel
 * The label of the privileged executable to install. This label must be one of
 * the keys found in the SMPrivilegedExecutables dictionary in the application's
 * Info.plist.
 *
 * @param auth
 * An authorization reference containing the 
 * {@link kSMRightBlessPrivilegedHelper} right.
 *
 * @param outError
 * Upon unsuccessful return, a new CFError object describing the error.  Upon 
 * successful return, this argument is set to NULL.  This argument may be NULL. 
 * It is the responsibility of the application to release the error reference.
 *
 * @result
 * True if the helper tool was successfully bootstrapped, otherwise false.
 *
 * @discussion
 * SMJobBless submits the executable for the given label as a launchd job.  This
 * routine obviates the need for a setuid helper invoked via
 * AuthorizationExecuteWithPrivileges() in order to install a launchd plist.
 */
@available(OSX 10.6, *)
func SMJobBless(domain: CFString!, _ executableLabel: CFString, _ auth: AuthorizationRef, _ outError: UnsafeMutablePointer<Unmanaged<CFError>?>) -> UInt8
