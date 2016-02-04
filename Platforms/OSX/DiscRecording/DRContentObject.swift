
class DRFileRef {
}
class DRFolderRef {
}
typealias DRFSObjectRef = DRType
typealias DRFilesystemMask = UInt32
var kDRFilesystemMaskISO9660: UInt32 { get }
var kDRFilesystemMaskJoliet: UInt32 { get }
var kDRFilesystemMaskUDF: UInt32 { get }
var kDRFilesystemMaskHFSPlus: UInt32 { get }
var kDRFilesystemMaskDefault: UInt32 { get }
@available(OSX 10.2, *)
func DRFSObjectIsVirtual(object: DRFSObjectRef!) -> Bool
@available(OSX 10.2, *)
func DRFSObjectGetRealFSRef(object: DRFSObjectRef!, _ fsRef: UnsafeMutablePointer<FSRef>)
@available(OSX 10.2, *)
func DRFSObjectCopyRealURL(object: DRFSObjectRef!) -> Unmanaged<CFURL>!
@available(OSX 10.2, *)
func DRFSObjectGetParent(object: DRFSObjectRef!) -> Unmanaged<DRFolderRef>!
@available(OSX 10.2, *)
func DRFSObjectCopyBaseName(object: DRFSObjectRef!) -> Unmanaged<CFString>!
@available(OSX 10.2, *)
func DRFSObjectCopySpecificName(object: DRFSObjectRef!, _ fsKey: CFString!) -> Unmanaged<CFString>!
@available(OSX 10.2, *)
func DRFSObjectCopySpecificNames(object: DRFSObjectRef!) -> Unmanaged<CFDictionary>!
@available(OSX 10.2, *)
func DRFSObjectCopyMangledName(object: DRFSObjectRef!, _ fsKey: CFString!) -> Unmanaged<CFString>!
@available(OSX 10.2, *)
func DRFSObjectCopyMangledNames(object: DRFSObjectRef!) -> Unmanaged<CFDictionary>!
@available(OSX 10.2, *)
func DRFSObjectCopyFilesystemProperty(object: DRFSObjectRef!, _ fsKey: CFString!, _ propertyKey: CFString!, _ coalesce: Bool) -> Unmanaged<CFTypeRef>!
@available(OSX 10.2, *)
func DRFSObjectCopyFilesystemProperties(object: DRFSObjectRef!, _ fsKey: CFString!, _ coalesce: Bool) -> Unmanaged<CFDictionary>!
@available(OSX 10.2, *)
func DRFSObjectGetFilesystemMask(object: DRFSObjectRef!, _ explicitMask: UnsafeMutablePointer<DRFilesystemMask>, _ effectiveMask: UnsafeMutablePointer<DRFilesystemMask>) -> DRFilesystemMask
@available(OSX 10.2, *)
func DRFSObjectSetBaseName(object: DRFSObjectRef!, _ baseName: CFString!)
@available(OSX 10.2, *)
func DRFSObjectSetSpecificName(object: DRFSObjectRef!, _ fsKey: CFString!, _ specificName: CFString!)
@available(OSX 10.2, *)
func DRFSObjectSetSpecificNames(object: DRFSObjectRef!, _ specificNames: CFDictionary!)
@available(OSX 10.2, *)
func DRFSObjectSetFilesystemProperty(object: DRFSObjectRef!, _ fsKey: CFString!, _ propertyKey: CFString!, _ value: CFTypeRef!)
@available(OSX 10.2, *)
func DRFSObjectSetFilesystemProperties(object: DRFSObjectRef!, _ fsKey: CFString!, _ properties: CFDictionary!)
@available(OSX 10.2, *)
func DRFSObjectSetFilesystemMask(object: DRFSObjectRef!, _ newMask: DRFilesystemMask)
