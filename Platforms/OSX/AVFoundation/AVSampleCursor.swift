
@available(OSX 10.10, *)
class AVSampleCursor : Object, Copying {
  func stepInDecodeOrder(byCount stepCount: Int64) -> Int64
  func stepInPresentationOrder(byCount stepCount: Int64) -> Int64
  func step(byDecode deltaDecodeTime: CMTime, wasPinned outWasPinned: UnsafeMutablePointer<ObjCBool>) -> CMTime
  func step(byPresentationTime deltaPresentationTime: CMTime, wasPinned outWasPinned: UnsafeMutablePointer<ObjCBool>) -> CMTime
  @available(OSX 10.10, *)
  func copy(zone: Zone = nil) -> AnyObject
}
extension AVSampleCursor {
  var presentationTimeStamp: CMTime { get }
  var decodeTimeStamp: CMTime { get }
  func comparePositionInDecodeOrder(withPositionOf cursor: AVSampleCursor) -> ComparisonResult
  func samples(withEarlierDecodeTimeStampsMayHaveLaterPresentationTimeStampsThanCursor cursor: AVSampleCursor) -> Bool
  func samples(withLaterDecodeTimeStampsMayHaveEarlierPresentationTimeStampsThanCursor cursor: AVSampleCursor) -> Bool
}
extension AVSampleCursor {
  var currentSampleDuration: CMTime { get }
  func copyCurrentSampleFormatDescription() -> CMFormatDescription
  var currentSampleSyncInfo: AVSampleCursorSyncInfo { get }
  var currentSampleDependencyInfo: AVSampleCursorDependencyInfo { get }
  @available(OSX 10.11, *)
  var samplesRequiredForDecoderRefresh: Int { get }
}
struct AVSampleCursorSyncInfo {
  var sampleIsFullSync: ObjCBool
  var sampleIsPartialSync: ObjCBool
  var sampleIsDroppable: ObjCBool
  init()
  init(sampleIsFullSync: ObjCBool, sampleIsPartialSync: ObjCBool, sampleIsDroppable: ObjCBool)
}
struct AVSampleCursorDependencyInfo {
  var sampleIndicatesWhetherItHasDependentSamples: ObjCBool
  var sampleHasDependentSamples: ObjCBool
  var sampleIndicatesWhetherItDependsOnOthers: ObjCBool
  var sampleDependsOnOthers: ObjCBool
  var sampleIndicatesWhetherItHasRedundantCoding: ObjCBool
  var sampleHasRedundantCoding: ObjCBool
  init()
  init(sampleIndicatesWhetherItHasDependentSamples: ObjCBool, sampleHasDependentSamples: ObjCBool, sampleIndicatesWhetherItDependsOnOthers: ObjCBool, sampleDependsOnOthers: ObjCBool, sampleIndicatesWhetherItHasRedundantCoding: ObjCBool, sampleHasRedundantCoding: ObjCBool)
}
extension AVSampleCursor {
  var currentChunkStorageURL: URL { get }
  var currentChunkStorageRange: AVSampleCursorStorageRange { get }
  var currentChunkInfo: AVSampleCursorChunkInfo { get }
  var currentSampleIndexInChunk: Int64 { get }
  var currentSampleStorageRange: AVSampleCursorStorageRange { get }
}
struct AVSampleCursorStorageRange {
  var offset: Int64
  var length: Int64
  init()
  init(offset: Int64, length: Int64)
}
struct AVSampleCursorChunkInfo {
  var chunkSampleCount: Int64
  var chunkHasUniformSampleSizes: ObjCBool
  var chunkHasUniformSampleDurations: ObjCBool
  var chunkHasUniformFormatDescriptions: ObjCBool
  init()
  init(chunkSampleCount: Int64, chunkHasUniformSampleSizes: ObjCBool, chunkHasUniformSampleDurations: ObjCBool, chunkHasUniformFormatDescriptions: ObjCBool)
}
