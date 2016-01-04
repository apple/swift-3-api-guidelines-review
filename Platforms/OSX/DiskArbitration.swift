
var kDADiskMountOptionDefault: Int { get }
var kDADiskMountOptionWhole: Int { get }
typealias DADiskMountOptions = UInt32
var kDADiskRenameOptionDefault: Int { get }
typealias DADiskRenameOptions = UInt32
var kDADiskUnmountOptionDefault: Int { get }
var kDADiskUnmountOptionForce: Int { get }
var kDADiskUnmountOptionWhole: Int { get }
typealias DADiskUnmountOptions = UInt32
var kDADiskEjectOptionDefault: Int { get }
typealias DADiskEjectOptions = UInt32
var kDADiskClaimOptionDefault: Int { get }
typealias DADiskClaimOptions = UInt32
var kDADiskOptionDefault: Int { get }
typealias DADiskOptions = UInt32

/*!
 * @constant   kDADiskDescriptionMatchMediaUnformatted
 * Predefined CFDictionary object containing a set of disk description keys and values
 * appropriate for matching unformatted media using DARegister*Callback().
 */
var kDADiskDescriptionMatchMediaUnformatted: Unmanaged<CFDictionary>

/*!
 * @constant   kDADiskDescriptionMatchMediaWhole
 * Predefined CFDictionary object containing a set of disk description keys and values
 * appropriate for matching whole media using DARegister*Callback().
 */
var kDADiskDescriptionMatchMediaWhole: Unmanaged<CFDictionary>

/*!
 * @constant   kDADiskDescriptionMatchVolumeMountable
 * Predefined CFDictionary object containing a set of disk description keys and values
 * appropriate for matching mountable volumes using DARegister*Callback().
 */
var kDADiskDescriptionMatchVolumeMountable: Unmanaged<CFDictionary>

/*!
 * @constant   kDADiskDescriptionMatchVolumeUnrecognized
 * Predefined CFDictionary object containing a set of disk description keys and values
 * appropriate for matching unrecognized volumes using DARegister*Callback().
 */
var kDADiskDescriptionMatchVolumeUnrecognized: Unmanaged<CFDictionary>

/*!
 * @constant   kDADiskDescriptionWatchVolumeName
 * Predefined CFArray object containing a set of disk description keys appropriate for
 * watching volume name changes using DARegisterDiskDescriptionChangedCallback().
 */
var kDADiskDescriptionWatchVolumeName: Unmanaged<CFArray>

/*!
 * @constant   kDADiskDescriptionWatchVolumePath
 * Predefined CFArray object containing a set of disk description keys appropriate for
 * watching volume mount changes using DARegisterDiskDescriptionChangedCallback().
 */
var kDADiskDescriptionWatchVolumePath: Unmanaged<CFArray>

/*!
 * @typedef    DADiskAppearedCallback
 * @abstract   Type of the callback function used by DARegisterDiskAppearedCallback().
 * @param      disk    A disk object.
 * @param      context The user-defined context parameter given to the registration function.
 */
typealias DADiskAppearedCallback = @convention(c) (DADisk, UnsafeMutablePointer<Void>) -> Void

/*!
 * @function   DARegisterDiskAppearedCallback
 * @abstract   Registers a callback function to be called whenever a disk has appeared.
 * @param      session  The session object.
 * @param      match    The disk description keys to match.  Pass NULL for all disk objects.
 * @param      callback The callback function to call when a disk has appeared.
 * @param      context  The user-defined context parameter to pass to the callback function.
 */
func DARegisterDiskAppearedCallback(session: DASession, _ match: CFDictionary?, _ callback: DADiskAppearedCallback, _ context: UnsafeMutablePointer<Void>)

/*!
 * @typedef    DADiskDescriptionChangedCallback
 * @abstract   Type of the callback function used by DARegisterDiskDescriptionChangedCallback().
 * @param      disk    A disk object.
 * @param      keys    A list of changed keys.
 * @param      context The user-defined context parameter given to the registration function.
 */
typealias DADiskDescriptionChangedCallback = @convention(c) (DADisk, CFArray, UnsafeMutablePointer<Void>) -> Void

/*!
 * @function   DARegisterDiskDescriptionChangedCallback
 * @abstract   Registers a callback function to be called whenever a disk description has changed.
 * @param      session  The session object.
 * @param      match    The disk description keys to match.  Pass NULL for all disk objects.
 * @param      watch    The disk description keys to watch.  Pass NULL for all keys.
 * @param      callback The callback function to call when a watched key changes.
 * @param      context  The user-defined context parameter to pass to the callback function.
 */
func DARegisterDiskDescriptionChangedCallback(session: DASession, _ match: CFDictionary?, _ watch: CFArray?, _ callback: DADiskDescriptionChangedCallback, _ context: UnsafeMutablePointer<Void>)

/*!
 * @typedef    DADiskDisappearedCallback
 * @abstract   Type of the callback function used by DARegisterDiskDisappearedCallback().
 * @param      disk    A disk object.
 * @param      context The user-defined context parameter given to the registration function.
 */
typealias DADiskDisappearedCallback = @convention(c) (DADisk, UnsafeMutablePointer<Void>) -> Void

/*!
 * @function   DARegisterDiskDisappearedCallback
 * @abstract   Registers a callback function to be called whenever a disk has disappeared.
 * @param      session  The session object.
 * @param      match    The disk description keys to match.  Pass NULL for all disk objects.
 * @param      callback The callback function to call when a disk has disappeared.
 * @param      context  The user-defined context parameter to pass to the callback function.
 */
func DARegisterDiskDisappearedCallback(session: DASession, _ match: CFDictionary?, _ callback: DADiskDisappearedCallback, _ context: UnsafeMutablePointer<Void>)

/*!
 * @typedef    DADiskMountCallback
 * @abstract   Type of the callback function used by DADiskMount().
 * @param      disk      The disk object.
 * @param      dissenter A dissenter object on failure or NULL on success.
 * @param      context   The user-defined context parameter given to the mount function.
 */
typealias DADiskMountCallback = @convention(c) (DADisk, DADissenter?, UnsafeMutablePointer<Void>) -> Void

/*!
 * @function   DADiskMount
 * @abstract   Mounts the volume at the specified disk object.
 * @param      disk     The disk object.
 * @param      path     The mount path.  Pass NULL for a "standard" mount path.
 * @param      options  The mount options.
 * @param      callback The callback function to call once the mount completes.
 * @param      context  The user-defined context parameter to pass to the callback function.
 */
func DADiskMount(disk: DADisk, _ path: CFURL?, _ options: DADiskMountOptions, _ callback: DADiskMountCallback?, _ context: UnsafeMutablePointer<Void>)

/*!
 * @function   DADiskMountWithArguments
 * @abstract   Mounts the volume at the specified disk object, with the specified mount options.
 * @param      disk      The disk object.
 * @param      path      The mount path.  Pass NULL for a "standard" mount path.
 * @param      options   The mount options.
 * @param      callback  The callback function to call once the mount completes.
 * @param      context   The user-defined context parameter to pass to the callback function.
 * @param      arguments The null-terminated list of mount options to pass to /sbin/mount -o.
 */
func DADiskMountWithArguments(disk: DADisk, _ path: CFURL?, _ options: DADiskMountOptions, _ callback: DADiskMountCallback?, _ context: UnsafeMutablePointer<Void>, _ arguments: UnsafeMutablePointer<Unmanaged<CFString>?>)

/*!
 * @typedef    DADiskMountApprovalCallback
 * @abstract   Type of the callback function used by DARegisterDiskMountApprovalCallback().
 * @param      disk    A disk object.
 * @param      context The user-defined context parameter given to the registration function.
 * @result     A dissenter reference.  Pass NULL to approve.
 * @discussion
 * The caller of this callback receives a reference to the returned object.  The
 * caller also implicitly retains the object and is responsible for releasing it
 * with CFRelease().
 */
typealias DADiskMountApprovalCallback = @convention(c) (DADisk, UnsafeMutablePointer<Void>) -> Unmanaged<DADissenter>?

/*!
 * @function   DARegisterDiskMountApprovalCallback
 * @abstract   Registers a callback function to be called whenever a volume is to be mounted.
 * @param      session  The session object.
 * @param      match    The disk description keys to match.  Pass NULL for all disk objects.
 * @param      callback The callback function to call when a volume is to be mounted.
 * @param      context  The user-defined context parameter to pass to the callback function.
 */
func DARegisterDiskMountApprovalCallback(session: DASession, _ match: CFDictionary?, _ callback: DADiskMountApprovalCallback, _ context: UnsafeMutablePointer<Void>)

/*!
 * @typedef    DADiskRenameCallback
 * @abstract   Type of the callback function used by DADiskRename().
 * @param      disk      The disk object.
 * @param      dissenter A dissenter object on failure or NULL on success.
 * @param      context   The user-defined context parameter given to the rename function.
 */
typealias DADiskRenameCallback = @convention(c) (DADisk, DADissenter?, UnsafeMutablePointer<Void>) -> Void

/*!
 * @function   DADiskRename
 * @abstract   Renames the volume at the specified disk object.
 * @param      disk     The disk object.
 * @param      options  The rename options.
 * @param      callback The callback function to call once the rename completes.
 * @param      context  The user-defined context parameter to pass to the callback function.
 */
func DADiskRename(disk: DADisk, _ name: CFString, _ options: DADiskRenameOptions, _ callback: DADiskRenameCallback?, _ context: UnsafeMutablePointer<Void>)

/*!
 * @typedef    DADiskUnmountCallback
 * @abstract   Type of the callback function used by DADiskUnmount().
 * @param      disk      The disk object.
 * @param      dissenter A dissenter object on failure or NULL on success.
 * @param      context   The user-defined context parameter given to the unmount function.
 */
typealias DADiskUnmountCallback = @convention(c) (DADisk, DADissenter?, UnsafeMutablePointer<Void>) -> Void

/*!
 * @function   DADiskUnmount
 * @abstract   Unmounts the volume at the specified disk object.
 * @param      disk     The disk object.
 * @param      options  The unmount options.
 * @param      callback The callback function to call once the unmount completes.
 * @param      context  The user-defined context parameter to pass to the callback function.
 */
func DADiskUnmount(disk: DADisk, _ options: DADiskUnmountOptions, _ callback: DADiskUnmountCallback?, _ context: UnsafeMutablePointer<Void>)

/*!
 * @typedef    DADiskUnmountApprovalCallback
 * @abstract   Type of the callback function used by DARegisterDiskUnmountApprovalCallback().
 * @param      disk    A disk object.
 * @param      context The user-defined context parameter given to the registration function.
 * @result     A dissenter reference.  Pass NULL to approve.
 * @discussion
 * The caller of this callback receives a reference to the returned object.  The
 * caller also implicitly retains the object and is responsible for releasing it
 * with CFRelease().
 */
typealias DADiskUnmountApprovalCallback = @convention(c) (DADisk, UnsafeMutablePointer<Void>) -> Unmanaged<DADissenter>?

/*!
 * @function   DARegisterDiskUnmountApprovalCallback
 * @abstract   Registers a callback function to be called whenever a volume is to be unmounted.
 * @param      session  The session object.
 * @param      match    The disk description keys to match.  Pass NULL for all disk objects.
 * @param      callback The callback function to call when a volume is to be unmounted.
 * @param      context  The user-defined context parameter to pass to the callback function.
 */
func DARegisterDiskUnmountApprovalCallback(session: DASession, _ match: CFDictionary?, _ callback: DADiskUnmountApprovalCallback, _ context: UnsafeMutablePointer<Void>)

/*!
 * @typedef    DADiskEjectCallback
 * @abstract   Type of the callback function used by DADiskEject().
 * @param      disk      The disk object.
 * @param      dissenter A dissenter object on failure or NULL on success.
 * @param      context   The user-defined context parameter given to the eject function.
 */
typealias DADiskEjectCallback = @convention(c) (DADisk, DADissenter?, UnsafeMutablePointer<Void>) -> Void

/*!
 * @function   DADiskEject
 * @abstract   Ejects the specified disk object.
 * @param      disk     The disk object.
 * @param      options  The eject options.
 * @param      callback The callback function to call once the ejection completes.
 * @param      context  The user-defined context parameter to pass to the callback function.
 */
func DADiskEject(disk: DADisk, _ options: DADiskEjectOptions, _ callback: DADiskEjectCallback?, _ context: UnsafeMutablePointer<Void>)

/*!
 * @typedef    DADiskEjectApprovalCallback
 * @abstract   Type of the callback function used by DARegisterDiskEjectApprovalCallback().
 * @param      disk    A disk object.
 * @param      context The user-defined context parameter given to the registration function.
 * @result     A dissenter reference.  Pass NULL to approve.
 * @discussion
 * The caller of this callback receives a reference to the returned object.  The
 * caller also implicitly retains the object and is responsible for releasing it
 * with CFRelease().
 */
typealias DADiskEjectApprovalCallback = @convention(c) (DADisk, UnsafeMutablePointer<Void>) -> Unmanaged<DADissenter>?

/*!
 * @function   DARegisterDiskEjectApprovalCallback
 * @abstract   Registers a callback function to be called whenever a volume is to be ejected.
 * @param      session  The session object.
 * @param      match    The disk description keys to match.  Pass NULL for all disk objects.
 * @param      callback The callback function to call when a volume is to be ejected.
 * @param      context  The user-defined context parameter to pass to the callback function.
 */
func DARegisterDiskEjectApprovalCallback(session: DASession, _ match: CFDictionary?, _ callback: DADiskEjectApprovalCallback, _ context: UnsafeMutablePointer<Void>)

/*!
 * @typedef    DADiskClaimCallback
 * @abstract   Type of the callback function used by DADiskClaim().
 * @param      disk      The disk object.
 * @param      dissenter A dissenter object on failure or NULL on success.
 * @param      context   The user-defined context parameter given to the claim function.
 */
typealias DADiskClaimCallback = @convention(c) (DADisk, DADissenter?, UnsafeMutablePointer<Void>) -> Void

/*!
 * @typedef    DADiskClaimReleaseCallback
 * @abstract   Type of the callback function used by DADiskClaim().
 * @param      disk    The disk object.
 * @param      context The user-defined context parameter given to the claim function.
 * @result     A dissenter reference.  Pass NULL to release claim.
 * @discussion
 * The caller of this callback receives a reference to the returned object.  The
 * caller also implicitly retains the object and is responsible for releasing it
 * with CFRelease().
 */
typealias DADiskClaimReleaseCallback = @convention(c) (DADisk, UnsafeMutablePointer<Void>) -> Unmanaged<DADissenter>?

/*!
 * @function   DADiskClaim
 * @abstract   Claims the specified disk object for exclusive use.
 * @param      disk            The disk object.
 * @param      options         The claim options.
 * @param      release         The callback function to call when the claim is to be released.
 * @param      releaseContext  The user-defined context parameter to pass to the callback function.
 * @param      callback        The callback function to call once the claim completes.
 * @param      callbackContext The user-defined context parameter to pass to the callback function.
 */
func DADiskClaim(disk: DADisk, _ options: DADiskClaimOptions, _ release: DADiskClaimReleaseCallback?, _ releaseContext: UnsafeMutablePointer<Void>, _ callback: DADiskClaimCallback?, _ callbackContext: UnsafeMutablePointer<Void>)

/*!
 * @function   DADiskIsClaimed
 * @abstract   Reports whether or not the disk is claimed.
 * @param      disk The disk object.
 * @result     TRUE if the disk is claimed, otherwise FALSE.
 */
func DADiskIsClaimed(disk: DADisk) -> Bool

/*!
 * @function   DADiskUnclaim
 * @abstract   Unclaims the specified disk object.
 * @param      disk The disk object.
 */
func DADiskUnclaim(disk: DADisk)

/*!
 * @typedef    DADiskPeekCallback
 * @abstract   Type of the callback function used by DARegisterDiskPeekCallback().
 * @param      disk    A disk object.
 * @param      context The user-defined context parameter given to the registration function.
 * @discussion
 * The peek callback functions are called in a specific order, from lowest order to highest
 * order.  DADiskClaim() could be used here to claim the disk object and DADiskSetOptions()
 * could be used here to set up options on the disk object.
 */
typealias DADiskPeekCallback = @convention(c) (DADisk, UnsafeMutablePointer<Void>) -> Void

/*!
 * @function   DARegisterDiskPeekCallback
 * @abstract   Registers a callback function to be called whenever a disk has been probed.
 * @param      session  The session object.
 * @param      match    The disk description keys to match.  Pass NULL for all disk objects.
 * @param      order    The callback order, from lowest to highest.  Pass 0 for the default.
 * @param      callback The callback function to call when a disk has been probed.
 * @param      context  The user-defined context parameter to pass to the callback function.
 */
func DARegisterDiskPeekCallback(session: DASession, _ match: CFDictionary?, _ order: CFIndex, _ callback: DADiskPeekCallback, _ context: UnsafeMutablePointer<Void>)

/*!
 * @function   DADiskGetOptions
 * @abstract   Obtains the options for the specified disk.
 * @param      disk The disk object for which to obtain the options.
 * @result     The options.
 */
func DADiskGetOptions(disk: DADisk) -> DADiskOptions

/*!
 * @function   DADiskSetOptions
 * @abstract   Sets the options for the specified disk.
 * @param      disk    The disk object for which to set the options.
 * @param      options The options to set or clear.
 * @param      value   Pass TRUE to set options; otherwise pass FALSE to clear options.
 * @result     A result code.
 */
func DADiskSetOptions(disk: DADisk, _ options: DADiskOptions, _ value: Bool) -> DAReturn

/*!
 * @function   DAUnregisterCallback
 * @abstract   Unregisters a registered callback function.
 * @param      session  The session object.
 * @param      callback The registered callback function.
 * @param      context  The user-defined context parameter.
 */
func DAUnregisterCallback(session: DASession, _ callback: UnsafeMutablePointer<Void>, _ context: UnsafeMutablePointer<Void>)
let kDADiskDescriptionVolumeKindKey: CFString
let kDADiskDescriptionVolumeMountableKey: CFString
let kDADiskDescriptionVolumeNameKey: CFString
let kDADiskDescriptionVolumeNetworkKey: CFString
let kDADiskDescriptionVolumePathKey: CFString
let kDADiskDescriptionVolumeTypeKey: CFString
let kDADiskDescriptionVolumeUUIDKey: CFString
let kDADiskDescriptionMediaBlockSizeKey: CFString
let kDADiskDescriptionMediaBSDMajorKey: CFString
let kDADiskDescriptionMediaBSDMinorKey: CFString
let kDADiskDescriptionMediaBSDNameKey: CFString
let kDADiskDescriptionMediaBSDUnitKey: CFString
let kDADiskDescriptionMediaContentKey: CFString
let kDADiskDescriptionMediaEjectableKey: CFString
let kDADiskDescriptionMediaIconKey: CFString
let kDADiskDescriptionMediaKindKey: CFString
let kDADiskDescriptionMediaLeafKey: CFString
let kDADiskDescriptionMediaNameKey: CFString
let kDADiskDescriptionMediaPathKey: CFString
let kDADiskDescriptionMediaRemovableKey: CFString
let kDADiskDescriptionMediaSizeKey: CFString
let kDADiskDescriptionMediaTypeKey: CFString
let kDADiskDescriptionMediaUUIDKey: CFString
let kDADiskDescriptionMediaWholeKey: CFString
let kDADiskDescriptionMediaWritableKey: CFString
let kDADiskDescriptionDeviceGUIDKey: CFString
let kDADiskDescriptionDeviceInternalKey: CFString
let kDADiskDescriptionDeviceModelKey: CFString
let kDADiskDescriptionDevicePathKey: CFString
let kDADiskDescriptionDeviceProtocolKey: CFString
let kDADiskDescriptionDeviceRevisionKey: CFString
let kDADiskDescriptionDeviceUnitKey: CFString
let kDADiskDescriptionDeviceVendorKey: CFString
let kDADiskDescriptionBusNameKey: CFString
let kDADiskDescriptionBusPathKey: CFString

/*!
 * @typedef    DADiskRef
 * Type of a reference to DADisk instances.
 */
class DADisk {
}

/*!
 * @typedef    DADiskRef
 * Type of a reference to DADisk instances.
 */
typealias DADiskRef = DADisk

/*!
 * @function   DADiskGetTypeID
 * @abstract   Returns the type identifier of all DADisk instances.
 */
func DADiskGetTypeID() -> CFTypeID

/*!
 * @function   DADiskCreateFromBSDName
 * @abstract   Creates a new disk object.
 * @param      allocator The allocator object to be used to allocate memory.
 * @param      session   The DASession in which to contact Disk Arbitration.
 * @param      name      The BSD device name.
 * @result     A reference to a new DADisk.
 * @discussion
 * The caller of this function receives a reference to the returned object.  The
 * caller also implicitly retains the object and is responsible for releasing it
 * with CFRelease().
 */
func DADiskCreateFromBSDName(allocator: CFAllocator?, _ session: DASession, _ name: UnsafePointer<Int8>) -> DADisk?

/*!
 * @function   DADiskCreateFromIOMedia
 * @abstract   Creates a new disk object.
 * @param      allocator The allocator object to be used to allocate memory.
 * @param      session   The DASession in which to contact Disk Arbitration.
 * @param      media     The I/O Kit media object.
 * @result     A reference to a new DADisk.
 * @discussion
 * The caller of this function receives a reference to the returned object.  The
 * caller also implicitly retains the object and is responsible for releasing it
 * with CFRelease().
 */
func DADiskCreateFromIOMedia(allocator: CFAllocator?, _ session: DASession, _ media: io_service_t) -> DADisk?

/*!
 * @function   DADiskCreateFromVolumePath
 * @abstract   Creates a new disk object.
 * @param      allocator The allocator object to be used to allocate memory.
 * @param      session   The DASession in which to contact Disk Arbitration.
 * @param      path      The BSD mount point.
 * @result     A reference to a new DADisk.
 * @discussion
 * The caller of this function receives a reference to the returned object.  The
 * caller also implicitly retains the object and is responsible for releasing it
 * with CFRelease().
 */
func DADiskCreateFromVolumePath(allocator: CFAllocator?, _ session: DASession, _ path: CFURL) -> DADisk?

/*!
 * @function   DADiskGetBSDName
 * @abstract   Obtains the BSD device name for the specified disk.
 * @param      disk The DADisk for which to obtain the BSD device name.
 * @result     The disk's BSD device name.
 * @discussion
 * The BSD device name can be used with opendev() to open the BSD device.
 */
func DADiskGetBSDName(disk: DADisk) -> UnsafePointer<Int8>

/*!
 * @function   DADiskCopyIOMedia
 * @abstract   Obtains the I/O Kit media object for the specified disk.
 * @param      disk The DADisk for which to obtain the I/O Kit media object.
 * @result     The disk's I/O Kit media object.
 * @discussion
 * The caller of this function receives a reference to the returned object.  The
 * caller also implicitly retains the object and is responsible for releasing it
 * with IOObjectRelease().
 */
func DADiskCopyIOMedia(disk: DADisk) -> io_service_t

/*!
 * @function   DADiskCopyDescription
 * @abstract   Obtains the Disk Arbitration description of the specified disk.
 * @param      disk The DADisk for which to obtain the Disk Arbitration description.
 * @result     The disk's Disk Arbitration description.
 * @discussion
 * This function will contact Disk Arbitration to acquire the latest description
 * of the specified disk, unless this function is called on a disk object passed
 * within the context of a registered callback, in which case the description is
 * current as of that callback event.
 *
 * The caller of this function receives a reference to the returned object.  The
 * caller also implicitly retains the object and is responsible for releasing it
 * with CFRelease().
 */
func DADiskCopyDescription(disk: DADisk) -> CFDictionary?

/*!
 * @function   DADiskCopyWholeDisk
 * @abstract   Obtain the associated whole disk object for the specified disk.
 * @param      disk The disk object.
 * @result     The disk's associated whole disk object.
 * @discussion
 * The caller of this function receives a reference to the returned object.  The
 * caller also implicitly retains the object and is responsible for releasing it
 * with CFRelease().
 */
func DADiskCopyWholeDisk(disk: DADisk) -> DADisk?
var kDAReturnSuccess: Int { get }
var kDAReturnError: Int { get }
var kDAReturnBusy: Int { get }
var kDAReturnBadArgument: Int { get }
var kDAReturnExclusiveAccess: Int { get }
var kDAReturnNoResources: Int { get }
var kDAReturnNotFound: Int { get }
var kDAReturnNotMounted: Int { get }
var kDAReturnNotPermitted: Int { get }
var kDAReturnNotPrivileged: Int { get }
var kDAReturnNotReady: Int { get }
var kDAReturnNotWritable: Int { get }
var kDAReturnUnsupported: Int { get }
typealias DAReturn = mach_error_t

/*!
 * @typedef    DADissenterRef
 * Type of a reference to DADissenter instances.
 */
typealias DADissenterRef = DADissenter

/*!
 * @typedef    DADissenterRef
 * Type of a reference to DADissenter instances.
 */
class DADissenter {
}

/*!
 * @function   DADissenterCreate
 * @abstract   Creates a new dissenter object.
 * @param      allocator The allocator object to be used to allocate memory.
 * @param      status    The return code.
 * @param      string    The return code string.  Pass NULL for no reason.
 * @result     A reference to a new DADissenter.
 */
func DADissenterCreate(allocator: CFAllocator?, _ status: DAReturn, _ string: CFString?) -> DADissenter

/*!
 * @function   DADissenterGetStatus
 * @abstract   Obtains the return code.
 * @param      dissenter The DADissenter for which to obtain the return code.
 * @result     The return code.  A BSD return code, if applicable, is encoded with unix_err().
 */
func DADissenterGetStatus(dissenter: DADissenter) -> DAReturn

/*!
 * @function   DADissenterGetStatusString
 * @abstract   Obtains the return code string.
 * @param      dissenter The DADissenter for which to obtain the return code string.
 * @result     The return code string.
 */
func DADissenterGetStatusString(dissenter: DADissenter) -> CFString?

/*!
 * @typedef   DASessionRef
 * Type of a reference to DASession instances.
 */
class DASession {
}

/*!
 * @typedef   DASessionRef
 * Type of a reference to DASession instances.
 */
typealias DASessionRef = DASession

/*!
 * @function   DASessionGetTypeID
 * @abstract   Returns the type identifier of all DASession instances.
 */
func DASessionGetTypeID() -> CFTypeID

/*!
 * @function   DASessionCreate
 * @abstract   Creates a new session.
 * @result     A reference to a new DASession.
 * @discussion
 * The caller of this function receives a reference to the returned object.  The
 * caller also implicitly retains the object and is responsible for releasing it.
 */
func DASessionCreate(allocator: CFAllocator?) -> DASession?

/*!
 * @function   DASessionScheduleWithRunLoop
 * @abstract   Schedules the session on a run loop.
 * @param      session     The session which is being scheduled.
 * @param      runLoop     The run loop on which the session should be scheduled.
 * @param      runLoopMode The run loop mode in which the session should be scheduled.
 */
func DASessionScheduleWithRunLoop(session: DASession, _ runLoop: CFRunLoop, _ runLoopMode: CFString)

/*!
 * @function   DASessionUnscheduleFromRunLoop
 * @abstract   Unschedules the session from a run loop.
 * @param      session     The session which is being unscheduled.
 * @param      runLoop     The run loop on which the session is scheduled.
 * @param      runLoopMode The run loop mode in which the session is scheduled.
 */
func DASessionUnscheduleFromRunLoop(session: DASession, _ runLoop: CFRunLoop, _ runLoopMode: CFString)

/*!
 * @function   DASessionSetDispatchQueue
 * @abstract   Schedules the session on a dispatch queue.
 * @param      session The session which is being scheduled.
 * @param      queue   The dispatch queue on which the session should be scheduled.  Pass NULL to unschedule.
 */
func DASessionSetDispatchQueue(session: DASession, _ queue: dispatch_queue_t?)
