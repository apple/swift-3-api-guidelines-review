
class VTFrameSilo {
}
@available(iOS 8.0, *)
func VTFrameSiloGetTypeID() -> CFTypeID
@available(iOS 8.0, *)
func VTFrameSiloCreate(_ allocator: CFAllocator?, _ fileURL: CFURL?, _ timeRange: CMTimeRange, _ options: CFDictionary?, _ siloOut: UnsafeMutablePointer<VTFrameSilo?>) -> OSStatus
@available(iOS 8.0, *)
func VTFrameSiloAddSampleBuffer(_ silo: VTFrameSilo, _ sampleBuffer: CMSampleBuffer) -> OSStatus
@available(iOS 8.0, *)
func VTFrameSiloSetTimeRangesForNextPass(_ silo: VTFrameSilo, _ timeRangeCount: CMItemCount, _ timeRangeArray: UnsafePointer<CMTimeRange>) -> OSStatus
@available(iOS 8.0, *)
func VTFrameSiloGetProgressOfCurrentPass(_ silo: VTFrameSilo, _ progressOut: UnsafeMutablePointer<Float32>) -> OSStatus
@available(iOS 8.0, *)
func VTFrameSiloCallFunctionForEachSampleBuffer(_ silo: VTFrameSilo, _ timeRange: CMTimeRange, _ callbackInfo: UnsafeMutablePointer<Void>, _ callback: @convention(c) (UnsafeMutablePointer<Void>, CMSampleBuffer) -> OSStatus) -> OSStatus
@available(iOS 8.0, *)
func VTFrameSiloCallBlockForEachSampleBuffer(_ silo: VTFrameSilo, _ timeRange: CMTimeRange, _ handler: (CMSampleBuffer) -> OSStatus) -> OSStatus
