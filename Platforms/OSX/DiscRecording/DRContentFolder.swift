
@available(OSX 10.2, *)
func DRFolderGetTypeID() -> CFTypeID
@available(OSX 10.2, *)
func DRFolderCreateReal(fsRef: UnsafePointer<FSRef>) -> Unmanaged<DRFolderRef>!
@available(OSX 10.2, *)
func DRFolderCreateRealWithURL(urlRef: CFURL!) -> Unmanaged<DRFolderRef>!
@available(OSX 10.2, *)
func DRFolderCreateVirtual(baseName: CFString!) -> Unmanaged<DRFolderRef>!
@available(OSX 10.2, *)
func DRFolderConvertRealToVirtual(realFolder: DRFolderRef!)
@available(OSX 10.2, *)
func DRFolderAddChild(parent: DRFolderRef!, _ newChild: DRFSObjectRef!)
@available(OSX 10.2, *)
func DRFolderRemoveChild(parent: DRFolderRef!, _ child: DRFSObjectRef!)
@available(OSX 10.2, *)
func DRFolderCountChildren(folder: DRFolderRef!) -> UInt32
@available(OSX 10.2, *)
func DRFolderCopyChildren(folder: DRFolderRef!) -> Unmanaged<CFArray>!
