
typealias DRFilesystemTrack = DRTrackRef
@available(OSX 10.2, *)
func DRFilesystemTrackCreate(rootFolder: DRFolderRef!) -> Unmanaged<DRFilesystemTrack>!
@available(OSX 10.3, *)
func DRFilesystemTrackEstimateOverhead(numBlocks: UInt64, _ blockSize: UInt32, _ fsMask: DRFilesystemMask) -> UInt64
typealias DRAudioTrack = DRTrackRef
@available(OSX 10.3, *)
func DRAudioTrackCreate(audioFile: UnsafePointer<FSRef>) -> Unmanaged<DRAudioTrack>!
@available(OSX 10.3, *)
func DRAudioTrackCreateWithURL(audioFileURL: CFURL!) -> Unmanaged<DRAudioTrack>!
