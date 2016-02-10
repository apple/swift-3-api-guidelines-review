
@available(OSX 10.10, *)
class AVSampleCursor : Object, Copying {
  func stepInDecodeOrderByCount(stepCount: Int64) -> Int64
  func stepInPresentationOrderByCount(stepCount: Int64) -> Int64
  func stepByDecode(deltaDecodeTime: CMTime, wasPinned outWasPinned: UnsafeMutablePointer<ObjCBool>) -> CMTime
  func stepByPresentationTime(deltaPresentationTime: CMTime, wasPinned outWasPinned: UnsafeMutablePointer<ObjCBool>) -> CMTime
  @available(OSX 10.10, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
extension AVSampleCursor {
  var presentationTimeStamp: CMTime { get }
  var decodeTimeStamp: CMTime { get }
  func comparePositionInDecodeOrderWithPosition(of cursor: AVSampleCursor) -> ComparisonResult
  func samplesWithEarlierDecodeTimeStampsMayHaveLaterPresentationTimeStampsThanCursor(cursor: AVSampleCursor) -> Bool
  func samplesWithLaterDecodeTimeStampsMayHaveEarlierPresentationTimeStampsThanCursor(cursor: AVSampleCursor) -> Bool
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
