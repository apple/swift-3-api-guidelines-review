
var kCMBufferQueueError_AllocationFailed: OSStatus { get }
var kCMBufferQueueError_RequiredParameterMissing: OSStatus { get }
var kCMBufferQueueError_InvalidCMBufferCallbacksStruct: OSStatus { get }
var kCMBufferQueueError_EnqueueAfterEndOfData: OSStatus { get }
var kCMBufferQueueError_QueueIsFull: OSStatus { get }
var kCMBufferQueueError_BadTriggerDuration: OSStatus { get }
var kCMBufferQueueError_CannotModifyQueueFromTriggerCallback: OSStatus { get }
var kCMBufferQueueError_InvalidTriggerCondition: OSStatus { get }
var kCMBufferQueueError_InvalidTriggerToken: OSStatus { get }
var kCMBufferQueueError_InvalidBuffer: OSStatus { get }
class CMBufferQueue {
}
typealias CMBuffer = CFTypeRef
typealias CMBufferGetTimeCallback = @convention(c) (CMBuffer, UnsafeMutablePointer<Void>) -> CMTime
typealias CMBufferGetBooleanCallback = @convention(c) (CMBuffer, UnsafeMutablePointer<Void>) -> DarwinBoolean
typealias CMBufferCompareCallback = @convention(c) (CMBuffer, CMBuffer, UnsafeMutablePointer<Void>) -> CFComparisonResult
typealias CMBufferGetSizeCallback = @convention(c) (CMBuffer, UnsafeMutablePointer<Void>) -> Int
struct CMBufferCallbacks {
  var version: UInt32
  var refcon: UnsafeMutablePointer<Void>
  var getDecodeTimeStamp: CMBufferGetTimeCallback?
  var getPresentationTimeStamp: CMBufferGetTimeCallback?
  var getDuration: CMBufferGetTimeCallback
  var isDataReady: CMBufferGetBooleanCallback?
  var compare: CMBufferCompareCallback?
  var dataBecameReadyNotification: Unmanaged<CFString>?
  var getSize: CMBufferGetSizeCallback?
}
@available(iOS 4.0, *)
func CMBufferQueueGetCallbacksForUnsortedSampleBuffers() -> UnsafePointer<CMBufferCallbacks>
@available(iOS 4.3, *)
func CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS() -> UnsafePointer<CMBufferCallbacks>
@available(iOS 4.0, *)
func CMBufferQueueCreate(allocator: CFAllocator?, _ capacity: CMItemCount, _ callbacks: UnsafePointer<CMBufferCallbacks>, _ queueOut: UnsafeMutablePointer<CMBufferQueue?>) -> OSStatus
@available(iOS 4.0, *)
func CMBufferQueueGetTypeID() -> CFTypeID
@available(iOS 4.0, *)
func CMBufferQueueEnqueue(queue: CMBufferQueue, _ buf: CMBuffer) -> OSStatus
@available(iOS 4.0, *)
func CMBufferQueueGetHead(queue: CMBufferQueue) -> CMBuffer?
@available(iOS 4.0, *)
func CMBufferQueueIsEmpty(queue: CMBufferQueue) -> Bool
@available(iOS 4.0, *)
func CMBufferQueueMarkEndOfData(queue: CMBufferQueue) -> OSStatus
@available(iOS 4.0, *)
func CMBufferQueueContainsEndOfData(queue: CMBufferQueue) -> Bool
@available(iOS 4.0, *)
func CMBufferQueueIsAtEndOfData(queue: CMBufferQueue) -> Bool
@available(iOS 4.0, *)
func CMBufferQueueReset(queue: CMBufferQueue) -> OSStatus
@available(iOS 4.0, *)
func CMBufferQueueResetWithCallback(queue: CMBufferQueue, _ callback: @convention(c) (CMBuffer, UnsafeMutablePointer<Void>) -> Void, _ refcon: UnsafeMutablePointer<Void>) -> OSStatus
@available(iOS 4.0, *)
func CMBufferQueueGetBufferCount(queue: CMBufferQueue) -> CMItemCount
@available(iOS 4.0, *)
func CMBufferQueueGetDuration(queue: CMBufferQueue) -> CMTime
@available(iOS 4.0, *)
func CMBufferQueueGetMinDecodeTimeStamp(queue: CMBufferQueue) -> CMTime
@available(iOS 4.0, *)
func CMBufferQueueGetFirstDecodeTimeStamp(queue: CMBufferQueue) -> CMTime
@available(iOS 4.0, *)
func CMBufferQueueGetMinPresentationTimeStamp(queue: CMBufferQueue) -> CMTime
@available(iOS 4.0, *)
func CMBufferQueueGetFirstPresentationTimeStamp(queue: CMBufferQueue) -> CMTime
@available(iOS 4.0, *)
func CMBufferQueueGetMaxPresentationTimeStamp(queue: CMBufferQueue) -> CMTime
@available(iOS 4.0, *)
func CMBufferQueueGetEndPresentationTimeStamp(queue: CMBufferQueue) -> CMTime
@available(iOS 7.1, *)
func CMBufferQueueGetTotalSize(queue: CMBufferQueue) -> Int
typealias CMBufferQueueTriggerToken = COpaquePointer
typealias CMBufferQueueTriggerCallback = @convention(c) (UnsafeMutablePointer<Void>, CMBufferQueueTriggerToken) -> Void
typealias CMBufferQueueTriggerCondition = Int32
var kCMBufferQueueTrigger_WhenDurationBecomesLessThan: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenDurationBecomesLessThanOrEqualTo: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenDurationBecomesGreaterThan: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenDurationBecomesGreaterThanOrEqualTo: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenMinPresentationTimeStampChanges: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenMaxPresentationTimeStampChanges: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenDataBecomesReady: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenEndOfDataReached: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenReset: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenBufferCountBecomesLessThan: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenBufferCountBecomesGreaterThan: CMBufferQueueTriggerCondition { get }
@available(iOS 4.0, *)
func CMBufferQueueInstallTrigger(queue: CMBufferQueue, _ triggerCallback: CMBufferQueueTriggerCallback?, _ triggerRefcon: UnsafeMutablePointer<Void>, _ triggerCondition: CMBufferQueueTriggerCondition, _ triggerTime: CMTime, _ triggerTokenOut: UnsafeMutablePointer<CMBufferQueueTriggerToken>) -> OSStatus
@available(iOS 4.0, *)
func CMBufferQueueInstallTriggerWithIntegerThreshold(queue: CMBufferQueue, _ triggerCallback: CMBufferQueueTriggerCallback?, _ triggerRefcon: UnsafeMutablePointer<Void>, _ triggerCondition: CMBufferQueueTriggerCondition, _ triggerThreshold: CMItemCount, _ triggerTokenOut: UnsafeMutablePointer<CMBufferQueueTriggerToken>) -> OSStatus
@available(iOS 4.0, *)
func CMBufferQueueRemoveTrigger(queue: CMBufferQueue, _ triggerToken: CMBufferQueueTriggerToken) -> OSStatus
@available(iOS 4.0, *)
func CMBufferQueueTestTrigger(queue: CMBufferQueue, _ triggerToken: CMBufferQueueTriggerToken) -> Bool
@available(iOS 4.0, *)
func CMBufferQueueCallForEachBuffer(queue: CMBufferQueue, _ callback: @convention(c) (CMBuffer, UnsafeMutablePointer<Void>) -> OSStatus, _ refcon: UnsafeMutablePointer<Void>) -> OSStatus
typealias CMBufferValidationCallback = @convention(c) (CMBufferQueue, CMBuffer, UnsafeMutablePointer<Void>) -> OSStatus
@available(iOS 4.0, *)
func CMBufferQueueSetValidationCallback(queue: CMBufferQueue, _ validationCallback: CMBufferValidationCallback, _ validationRefCon: UnsafeMutablePointer<Void>) -> OSStatus
