
class VTMultiPassStorage {
}
@available(OSX 10.10, *)
func VTMultiPassStorageGetTypeID() -> CFTypeID
@available(OSX 10.10, *)
func VTMultiPassStorageCreate(_ allocator: CFAllocator?, _ fileURL: CFURL?, _ timeRange: CMTimeRange, _ options: CFDictionary?, _ multiPassStorageOut: UnsafeMutablePointer<VTMultiPassStorage?>) -> OSStatus
let kVTMultiPassStorageCreationOption_DoNotDelete: CFString
@available(OSX 10.10, *)
func VTMultiPassStorageClose(_ multiPassStorage: VTMultiPassStorage) -> OSStatus
