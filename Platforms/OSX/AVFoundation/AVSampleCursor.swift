
@available(OSX 10.10, *)
class AVSampleCursor : NSObject, NSCopying {
  func stepInDecodeOrderByCount(_ stepCount: Int64) -> Int64
  func stepInPresentationOrderByCount(_ stepCount: Int64) -> Int64
  func stepByDecodeTime(_ deltaDecodeTime: CMTime, wasPinned outWasPinned: UnsafeMutablePointer<ObjCBool>) -> CMTime
  func stepByPresentationTime(_ deltaPresentationTime: CMTime, wasPinned outWasPinned: UnsafeMutablePointer<ObjCBool>) -> CMTime
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
extension AVSampleCursor {
  var presentationTimeStamp: CMTime { get }
  var decodeTimeStamp: CMTime { get }
  func comparePositionInDecodeOrderWithPositionOfCursor(_ cursor: AVSampleCursor) -> NSComparisonResult
  func samplesWithEarlierDecodeTimeStampsMayHaveLaterPresentationTimeStampsThanCursor(_ cursor: AVSampleCursor) -> Bool
  func samplesWithLaterDecodeTimeStampsMayHaveEarlierPresentationTimeStampsThanCursor(_ cursor: AVSampleCursor) -> Bool
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
  init(sampleIsFullSync sampleIsFullSync: ObjCBool, sampleIsPartialSync sampleIsPartialSync: ObjCBool, sampleIsDroppable sampleIsDroppable: ObjCBool)
}
struct AVSampleCursorDependencyInfo {
  var sampleIndicatesWhetherItHasDependentSamples: ObjCBool
  var sampleHasDependentSamples: ObjCBool
  var sampleIndicatesWhetherItDependsOnOthers: ObjCBool
  var sampleDependsOnOthers: ObjCBool
  var sampleIndicatesWhetherItHasRedundantCoding: ObjCBool
  var sampleHasRedundantCoding: ObjCBool
  init()
  init(sampleIndicatesWhetherItHasDependentSamples sampleIndicatesWhetherItHasDependentSamples: ObjCBool, sampleHasDependentSamples sampleHasDependentSamples: ObjCBool, sampleIndicatesWhetherItDependsOnOthers sampleIndicatesWhetherItDependsOnOthers: ObjCBool, sampleDependsOnOthers sampleDependsOnOthers: ObjCBool, sampleIndicatesWhetherItHasRedundantCoding sampleIndicatesWhetherItHasRedundantCoding: ObjCBool, sampleHasRedundantCoding sampleHasRedundantCoding: ObjCBool)
}
extension AVSampleCursor {
  var currentChunkStorageURL: NSURL { get }
  var currentChunkStorageRange: AVSampleCursorStorageRange { get }
  var currentChunkInfo: AVSampleCursorChunkInfo { get }
  var currentSampleIndexInChunk: Int64 { get }
  var currentSampleStorageRange: AVSampleCursorStorageRange { get }
}
struct AVSampleCursorStorageRange {
  var offset: Int64
  var length: Int64
  init()
  init(offset offset: Int64, length length: Int64)
}
struct AVSampleCursorChunkInfo {
  var chunkSampleCount: Int64
  var chunkHasUniformSampleSizes: ObjCBool
  var chunkHasUniformSampleDurations: ObjCBool
  var chunkHasUniformFormatDescriptions: ObjCBool
  init()
  init(chunkSampleCount chunkSampleCount: Int64, chunkHasUniformSampleSizes chunkHasUniformSampleSizes: ObjCBool, chunkHasUniformSampleDurations chunkHasUniformSampleDurations: ObjCBool, chunkHasUniformFormatDescriptions chunkHasUniformFormatDescriptions: ObjCBool)
}
