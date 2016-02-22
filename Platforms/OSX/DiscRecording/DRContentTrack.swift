
typealias DRFilesystemTrack = DRTrackRef
@available(OSX 10.2, *)
func DRFilesystemTrackCreate(_ rootFolder: DRFolderRef!) -> Unmanaged<DRFilesystemTrack>!
@available(OSX 10.3, *)
func DRFilesystemTrackEstimateOverhead(_ numBlocks: UInt64, _ blockSize: UInt32, _ fsMask: DRFilesystemMask) -> UInt64
typealias DRAudioTrack = DRTrackRef
@available(OSX 10.3, *)
func DRAudioTrackCreate(_ audioFile: UnsafePointer<FSRef>) -> Unmanaged<DRAudioTrack>!
@available(OSX 10.3, *)
func DRAudioTrackCreateWithURL(_ audioFileURL: CFURL!) -> Unmanaged<DRAudioTrack>!
