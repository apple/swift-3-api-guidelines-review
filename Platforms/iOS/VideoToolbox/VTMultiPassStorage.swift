
class VTMultiPassStorage {
}
@available(iOS 8.0, *)
func VTMultiPassStorageGetTypeID() -> CFTypeID
@available(iOS 8.0, *)
func VTMultiPassStorageCreate(_ allocator: CFAllocator?, _ fileURL: CFURL?, _ timeRange: CMTimeRange, _ options: CFDictionary?, _ multiPassStorageOut: UnsafeMutablePointer<VTMultiPassStorage?>) -> OSStatus
let kVTMultiPassStorageCreationOption_DoNotDelete: CFString
@available(iOS 8.0, *)
func VTMultiPassStorageClose(_ multiPassStorage: VTMultiPassStorage) -> OSStatus
