
var kCMSampleBufferError_AllocationFailed: OSStatus { get }
var kCMSampleBufferError_RequiredParameterMissing: OSStatus { get }
var kCMSampleBufferError_AlreadyHasDataBuffer: OSStatus { get }
var kCMSampleBufferError_BufferNotReady: OSStatus { get }
var kCMSampleBufferError_SampleIndexOutOfRange: OSStatus { get }
var kCMSampleBufferError_BufferHasNoSampleSizes: OSStatus { get }
var kCMSampleBufferError_BufferHasNoSampleTimingInfo: OSStatus { get }
var kCMSampleBufferError_ArrayTooSmall: OSStatus { get }
var kCMSampleBufferError_InvalidEntryCount: OSStatus { get }
var kCMSampleBufferError_CannotSubdivide: OSStatus { get }
var kCMSampleBufferError_SampleTimingInfoInvalid: OSStatus { get }
var kCMSampleBufferError_InvalidMediaTypeForOperation: OSStatus { get }
var kCMSampleBufferError_InvalidSampleData: OSStatus { get }
var kCMSampleBufferError_InvalidMediaFormat: OSStatus { get }
var kCMSampleBufferError_Invalidated: OSStatus { get }
var kCMSampleBufferError_DataFailed: OSStatus { get }
var kCMSampleBufferError_DataCanceled: OSStatus { get }
var kCMSampleBufferFlag_AudioBufferList_Assure16ByteAlignment: UInt32 { get }
class CMSampleBuffer {
}
@available(*, deprecated, renamed="CMSampleBuffer")
typealias CMSampleBufferRef = CMSampleBuffer
struct CMSampleTimingInfo {
  var duration: CMTime
  var presentationTimeStamp: CMTime
  var decodeTimeStamp: CMTime
  init()
  init(duration: CMTime, presentationTimeStamp: CMTime, decodeTimeStamp: CMTime)
}
@available(OSX 10.7, *)
let kCMTimingInfoInvalid: CMSampleTimingInfo
typealias CMSampleBufferMakeDataReadyCallback = @convention(c) (CMSampleBuffer, UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferCreate(allocator: CFAllocator?, _ dataBuffer: CMBlockBuffer?, _ dataReady: Bool, _ makeDataReadyCallback: CMSampleBufferMakeDataReadyCallback?, _ makeDataReadyRefcon: UnsafeMutablePointer<Void>, _ formatDescription: CMFormatDescription?, _ numSamples: CMItemCount, _ numSampleTimingEntries: CMItemCount, _ sampleTimingArray: UnsafePointer<CMSampleTimingInfo>, _ numSampleSizeEntries: CMItemCount, _ sampleSizeArray: UnsafePointer<Int>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(OSX 10.10, *)
func CMSampleBufferCreateReady(allocator: CFAllocator?, _ dataBuffer: CMBlockBuffer?, _ formatDescription: CMFormatDescription?, _ numSamples: CMItemCount, _ numSampleTimingEntries: CMItemCount, _ sampleTimingArray: UnsafePointer<CMSampleTimingInfo>, _ numSampleSizeEntries: CMItemCount, _ sampleSizeArray: UnsafePointer<Int>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(OSX 10.7, *)
func CMAudioSampleBufferCreateWithPacketDescriptions(allocator: CFAllocator?, _ dataBuffer: CMBlockBuffer?, _ dataReady: Bool, _ makeDataReadyCallback: CMSampleBufferMakeDataReadyCallback?, _ makeDataReadyRefcon: UnsafeMutablePointer<Void>, _ formatDescription: CMFormatDescription, _ numSamples: CMItemCount, _ sbufPTS: CMTime, _ packetDescriptions: UnsafePointer<AudioStreamPacketDescription>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(OSX 10.10, *)
func CMAudioSampleBufferCreateReadyWithPacketDescriptions(allocator: CFAllocator?, _ dataBuffer: CMBlockBuffer?, _ formatDescription: CMFormatDescription, _ numSamples: CMItemCount, _ sbufPTS: CMTime, _ packetDescriptions: UnsafePointer<AudioStreamPacketDescription>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferCreateForImageBuffer(allocator: CFAllocator?, _ imageBuffer: CVImageBuffer, _ dataReady: Bool, _ makeDataReadyCallback: CMSampleBufferMakeDataReadyCallback?, _ makeDataReadyRefcon: UnsafeMutablePointer<Void>, _ formatDescription: CMVideoFormatDescription, _ sampleTiming: UnsafePointer<CMSampleTimingInfo>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(OSX 10.10, *)
func CMSampleBufferCreateReadyWithImageBuffer(allocator: CFAllocator?, _ imageBuffer: CVImageBuffer, _ formatDescription: CMVideoFormatDescription, _ sampleTiming: UnsafePointer<CMSampleTimingInfo>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferCreateCopy(allocator: CFAllocator?, _ sbuf: CMSampleBuffer, _ sbufCopyOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferCreateCopyWithNewTiming(allocator: CFAllocator?, _ originalSBuf: CMSampleBuffer, _ numSampleTimingEntries: CMItemCount, _ sampleTimingArray: UnsafePointer<CMSampleTimingInfo>, _ sBufCopyOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferCopySampleBufferForRange(allocator: CFAllocator?, _ sbuf: CMSampleBuffer, _ sampleRange: CFRange, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferGetTypeID() -> CFTypeID
@available(OSX 10.7, *)
func CMSampleBufferSetDataBuffer(sbuf: CMSampleBuffer, _ dataBuffer: CMBlockBuffer) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferGetDataBuffer(sbuf: CMSampleBuffer) -> CMBlockBuffer?
@available(OSX 10.7, *)
func CMSampleBufferGetImageBuffer(sbuf: CMSampleBuffer) -> CVImageBuffer?
@available(OSX 10.7, *)
func CMSampleBufferSetDataBufferFromAudioBufferList(sbuf: CMSampleBuffer, _ bbufStructAllocator: CFAllocator?, _ bbufMemoryAllocator: CFAllocator?, _ flags: UInt32, _ bufferList: UnsafePointer<AudioBufferList>) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(sbuf: CMSampleBuffer, _ bufferListSizeNeededOut: UnsafeMutablePointer<Int>, _ bufferListOut: UnsafeMutablePointer<AudioBufferList>, _ bufferListSize: Int, _ bbufStructAllocator: CFAllocator?, _ bbufMemoryAllocator: CFAllocator?, _ flags: UInt32, _ blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferGetAudioStreamPacketDescriptions(sbuf: CMSampleBuffer, _ packetDescriptionsSize: Int, _ packetDescriptionsOut: UnsafeMutablePointer<AudioStreamPacketDescription>, _ packetDescriptionsSizeNeededOut: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferGetAudioStreamPacketDescriptionsPtr(sbuf: CMSampleBuffer, _ packetDescriptionsPtrOut: UnsafeMutablePointer<UnsafePointer<AudioStreamPacketDescription>>, _ packetDescriptionsSizeOut: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.9, *)
func CMSampleBufferCopyPCMDataIntoAudioBufferList(sbuf: CMSampleBuffer, _ frameOffset: Int32, _ numFrames: Int32, _ bufferList: UnsafeMutablePointer<AudioBufferList>) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferSetDataReady(sbuf: CMSampleBuffer) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferDataIsReady(sbuf: CMSampleBuffer) -> Bool
@available(OSX 10.10, *)
func CMSampleBufferSetDataFailed(sbuf: CMSampleBuffer, _ status: OSStatus) -> OSStatus
@available(OSX 10.10, *)
func CMSampleBufferHasDataFailed(sbuf: CMSampleBuffer, _ statusOut: UnsafeMutablePointer<OSStatus>) -> Bool
@available(OSX 10.7, *)
func CMSampleBufferMakeDataReady(sbuf: CMSampleBuffer) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferTrackDataReadiness(sbuf: CMSampleBuffer, _ sbufToTrack: CMSampleBuffer) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferInvalidate(sbuf: CMSampleBuffer) -> OSStatus
typealias CMSampleBufferInvalidateCallback = @convention(c) (CMSampleBuffer, UInt64) -> Void
@available(OSX 10.7, *)
func CMSampleBufferSetInvalidateCallback(sbuf: CMSampleBuffer, _ invalidateCallback: CMSampleBufferInvalidateCallback, _ invalidateRefCon: UInt64) -> OSStatus
typealias CMSampleBufferInvalidateHandler = (CMSampleBuffer) -> Void
@available(OSX 10.10, *)
func CMSampleBufferSetInvalidateHandler(sbuf: CMSampleBuffer, _ invalidateHandler: CMSampleBufferInvalidateHandler) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferIsValid(sbuf: CMSampleBuffer) -> Bool
@available(OSX 10.7, *)
let kCMSampleBufferNotification_DataBecameReady: CFString
@available(OSX 10.10, *)
let kCMSampleBufferNotification_DataFailed: CFString
@available(OSX 10.10, *)
let kCMSampleBufferNotificationParameter_OSStatus: CFString
@available(OSX 10.7, *)
let kCMSampleBufferConduitNotification_InhibitOutputUntil: CFString
@available(OSX 10.7, *)
let kCMSampleBufferConduitNotificationParameter_ResumeTag: CFString
@available(OSX 10.7, *)
let kCMSampleBufferConduitNotification_ResetOutput: CFString
@available(OSX 10.7, *)
let kCMSampleBufferConduitNotification_UpcomingOutputPTSRangeChanged: CFString
@available(OSX 10.7, *)
let kCMSampleBufferConduitNotificationParameter_UpcomingOutputPTSRangeMayOverlapQueuedOutputPTSRange: CFString
@available(OSX 10.7, *)
let kCMSampleBufferConduitNotificationParameter_MinUpcomingOutputPTS: CFString
@available(OSX 10.8, *)
let kCMSampleBufferConduitNotificationParameter_MaxUpcomingOutputPTS: CFString
@available(OSX 10.7, *)
let kCMSampleBufferConsumerNotification_BufferConsumed: CFString
@available(OSX 10.7, *)
func CMSampleBufferGetNumSamples(sbuf: CMSampleBuffer) -> CMItemCount
@available(OSX 10.7, *)
func CMSampleBufferGetDuration(sbuf: CMSampleBuffer) -> CMTime
@available(OSX 10.7, *)
func CMSampleBufferGetPresentationTimeStamp(sbuf: CMSampleBuffer) -> CMTime
@available(OSX 10.7, *)
func CMSampleBufferGetDecodeTimeStamp(sbuf: CMSampleBuffer) -> CMTime
@available(OSX 10.7, *)
func CMSampleBufferGetOutputDuration(sbuf: CMSampleBuffer) -> CMTime
@available(OSX 10.7, *)
func CMSampleBufferGetOutputPresentationTimeStamp(sbuf: CMSampleBuffer) -> CMTime
@available(OSX 10.7, *)
func CMSampleBufferSetOutputPresentationTimeStamp(sbuf: CMSampleBuffer, _ outputPresentationTimeStamp: CMTime) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferGetOutputDecodeTimeStamp(sbuf: CMSampleBuffer) -> CMTime
@available(OSX 10.7, *)
func CMSampleBufferGetSampleTimingInfoArray(sbuf: CMSampleBuffer, _ timingArrayEntries: CMItemCount, _ timingArrayOut: UnsafeMutablePointer<CMSampleTimingInfo>, _ timingArrayEntriesNeededOut: UnsafeMutablePointer<CMItemCount>) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferGetOutputSampleTimingInfoArray(sbuf: CMSampleBuffer, _ timingArrayEntries: CMItemCount, _ timingArrayOut: UnsafeMutablePointer<CMSampleTimingInfo>, _ timingArrayEntriesNeededOut: UnsafeMutablePointer<CMItemCount>) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferGetSampleTimingInfo(sbuf: CMSampleBuffer, _ sampleIndex: CMItemIndex, _ timingInfoOut: UnsafeMutablePointer<CMSampleTimingInfo>) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferGetSampleSizeArray(sbuf: CMSampleBuffer, _ sizeArrayEntries: CMItemCount, _ sizeArrayOut: UnsafeMutablePointer<Int>, _ sizeArrayEntriesNeededOut: UnsafeMutablePointer<CMItemCount>) -> OSStatus
@available(OSX 10.7, *)
func CMSampleBufferGetSampleSize(sbuf: CMSampleBuffer, _ sampleIndex: CMItemIndex) -> Int
@available(OSX 10.7, *)
func CMSampleBufferGetTotalSampleSize(sbuf: CMSampleBuffer) -> Int
@available(OSX 10.7, *)
func CMSampleBufferGetFormatDescription(sbuf: CMSampleBuffer) -> CMFormatDescription?
@available(OSX 10.7, *)
func CMSampleBufferGetSampleAttachmentsArray(sbuf: CMSampleBuffer, _ createIfNecessary: Bool) -> CFArray?
@available(OSX 10.7, *)
let kCMSampleAttachmentKey_NotSync: CFString
@available(OSX 10.7, *)
let kCMSampleAttachmentKey_PartialSync: CFString
@available(OSX 10.7, *)
let kCMSampleAttachmentKey_HasRedundantCoding: CFString
@available(OSX 10.7, *)
let kCMSampleAttachmentKey_IsDependedOnByOthers: CFString
@available(OSX 10.7, *)
let kCMSampleAttachmentKey_DependsOnOthers: CFString
@available(OSX 10.7, *)
let kCMSampleAttachmentKey_EarlierDisplayTimesAllowed: CFString
@available(OSX 10.7, *)
let kCMSampleAttachmentKey_DisplayImmediately: CFString
@available(OSX 10.7, *)
let kCMSampleAttachmentKey_DoNotDisplay: CFString
@available(OSX 10.7, *)
let kCMSampleBufferAttachmentKey_ResetDecoderBeforeDecoding: CFString
@available(OSX 10.7, *)
let kCMSampleBufferAttachmentKey_DrainAfterDecoding: CFString
@available(OSX 10.7, *)
let kCMSampleBufferAttachmentKey_PostNotificationWhenConsumed: CFString
@available(OSX 10.7, *)
let kCMSampleBufferAttachmentKey_ResumeOutput: CFString
@available(OSX 10.7, *)
let kCMSampleBufferAttachmentKey_TransitionID: CFString
@available(OSX 10.7, *)
let kCMSampleBufferAttachmentKey_TrimDurationAtStart: CFString
@available(OSX 10.7, *)
let kCMSampleBufferAttachmentKey_TrimDurationAtEnd: CFString
@available(OSX 10.7, *)
let kCMSampleBufferAttachmentKey_SpeedMultiplier: CFString
@available(OSX 10.7, *)
let kCMSampleBufferAttachmentKey_Reverse: CFString
@available(OSX 10.7, *)
let kCMSampleBufferAttachmentKey_FillDiscontinuitiesWithSilence: CFString
@available(OSX 10.7, *)
let kCMSampleBufferAttachmentKey_EmptyMedia: CFString
@available(OSX 10.7, *)
let kCMSampleBufferAttachmentKey_PermanentEmptyMedia: CFString
@available(OSX 10.7, *)
let kCMSampleBufferAttachmentKey_DisplayEmptyMediaImmediately: CFString
@available(OSX 10.7, *)
let kCMSampleBufferAttachmentKey_EndsPreviousSampleDuration: CFString
@available(OSX 10.7, *)
let kCMSampleBufferAttachmentKey_SampleReferenceURL: CFString
@available(OSX 10.7, *)
let kCMSampleBufferAttachmentKey_SampleReferenceByteOffset: CFString
@available(OSX 10.7, *)
let kCMSampleBufferAttachmentKey_GradualDecoderRefresh: CFString
@available(OSX 10.10, *)
let kCMSampleBufferAttachmentKey_ForceKeyFrame: CFString
@available(OSX 10.7, *)
func CMSampleBufferCallForEachSample(sbuf: CMSampleBuffer, _ callback: @convention(c) (CMSampleBuffer, CMItemCount, UnsafeMutablePointer<Void>) -> OSStatus, _ refcon: UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.10, *)
func CMSampleBufferCallBlockForEachSample(sbuf: CMSampleBuffer, _ handler: (CMSampleBuffer, CMItemCount) -> OSStatus) -> OSStatus
