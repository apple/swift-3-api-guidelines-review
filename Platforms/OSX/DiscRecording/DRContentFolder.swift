
@available(OSX 10.2, *)
func DRFolderGetTypeID() -> CFTypeID
@available(OSX 10.2, *)
func DRFolderCreateReal(_ fsRef: UnsafePointer<FSRef>) -> Unmanaged<DRFolderRef>!
@available(OSX 10.2, *)
func DRFolderCreateRealWithURL(_ urlRef: CFURL!) -> Unmanaged<DRFolderRef>!
@available(OSX 10.2, *)
func DRFolderCreateVirtual(_ baseName: CFString!) -> Unmanaged<DRFolderRef>!
@available(OSX 10.2, *)
func DRFolderConvertRealToVirtual(_ realFolder: DRFolderRef!)
@available(OSX 10.2, *)
func DRFolderAddChild(_ parent: DRFolderRef!, _ newChild: DRFSObjectRef!)
@available(OSX 10.2, *)
func DRFolderRemoveChild(_ parent: DRFolderRef!, _ child: DRFSObjectRef!)
@available(OSX 10.2, *)
func DRFolderCountChildren(_ folder: DRFolderRef!) -> UInt32
@available(OSX 10.2, *)
func DRFolderCopyChildren(_ folder: DRFolderRef!) -> Unmanaged<CFArray>!
