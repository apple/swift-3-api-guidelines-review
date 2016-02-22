
class CMClock {
}
class CMTimebase {
}
typealias CMClockOrTimebase = CFTypeRef
var kCMClockError_MissingRequiredParameter: OSStatus { get }
var kCMClockError_InvalidParameter: OSStatus { get }
var kCMClockError_AllocationFailed: OSStatus { get }
var kCMClockError_UnsupportedOperation: OSStatus { get }
var kCMTimebaseError_MissingRequiredParameter: OSStatus { get }
var kCMTimebaseError_InvalidParameter: OSStatus { get }
var kCMTimebaseError_AllocationFailed: OSStatus { get }
var kCMTimebaseError_TimerIntervalTooShort: OSStatus { get }
var kCMTimebaseError_ReadOnly: OSStatus { get }
var kCMSyncError_MissingRequiredParameter: OSStatus { get }
var kCMSyncError_InvalidParameter: OSStatus { get }
var kCMSyncError_AllocationFailed: OSStatus { get }
var kCMSyncError_RateMustBeNonZero: OSStatus { get }
@available(OSX 10.8, *)
func CMClockGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
func CMClockGetHostTimeClock() -> CMClock
@available(OSX 10.8, *)
func CMClockConvertHostTimeToSystemUnits(_ hostTime: CMTime) -> UInt64
@available(OSX 10.8, *)
func CMClockMakeHostTimeFromSystemUnits(_ hostTime: UInt64) -> CMTime
@available(OSX 10.8, *)
func CMClockGetTime(_ clock: CMClock) -> CMTime
@available(OSX 10.8, *)
func CMClockGetAnchorTime(_ clock: CMClock, _ outClockTime: UnsafeMutablePointer<CMTime>, _ outReferenceClockTime: UnsafeMutablePointer<CMTime>) -> OSStatus
@available(OSX 10.8, *)
func CMClockMightDrift(_ clock: CMClock, _ otherClock: CMClock) -> Bool
@available(OSX 10.8, *)
func CMClockInvalidate(_ clock: CMClock)
@available(OSX 10.8, *)
func CMTimebaseGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
func CMTimebaseCreateWithMasterClock(_ allocator: CFAllocator?, _ masterClock: CMClock, _ timebaseOut: UnsafeMutablePointer<CMTimebase?>) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseCreateWithMasterTimebase(_ allocator: CFAllocator?, _ masterTimebase: CMTimebase, _ timebaseOut: UnsafeMutablePointer<CMTimebase?>) -> OSStatus
@available(OSX 10.11, *)
func CMTimebaseCopyMasterTimebase(_ timebase: CMTimebase) -> CMTimebase?
@available(OSX 10.11, *)
func CMTimebaseCopyMasterClock(_ timebase: CMTimebase) -> CMClock?
@available(OSX 10.11, *)
func CMTimebaseCopyMaster(_ timebase: CMTimebase) -> CMClockOrTimebase?
@available(OSX 10.11, *)
func CMTimebaseCopyUltimateMasterClock(_ timebase: CMTimebase) -> CMClock?
@available(OSX, introduced=10.8, deprecated=10.11)
func CMTimebaseGetMasterTimebase(_ timebase: CMTimebase) -> CMTimebase?
@available(OSX, introduced=10.8, deprecated=10.11)
func CMTimebaseGetMasterClock(_ timebase: CMTimebase) -> CMClock?
@available(OSX, introduced=10.8, deprecated=10.11)
func CMTimebaseGetMaster(_ timebase: CMTimebase) -> CMClockOrTimebase?
@available(OSX, introduced=10.8, deprecated=10.11)
func CMTimebaseGetUltimateMasterClock(_ timebase: CMTimebase) -> CMClock?
@available(OSX 10.8, *)
func CMTimebaseGetTime(_ timebase: CMTimebase) -> CMTime
@available(OSX 10.8, *)
func CMTimebaseGetTimeWithTimeScale(_ timebase: CMTimebase, _ timescale: CMTimeScale, _ method: CMTimeRoundingMethod) -> CMTime
@available(OSX 10.8, *)
func CMTimebaseSetTime(_ timebase: CMTimebase, _ time: CMTime) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseSetAnchorTime(_ timebase: CMTimebase, _ timebaseTime: CMTime, _ immediateMasterTime: CMTime) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseGetRate(_ timebase: CMTimebase) -> Float64
@available(OSX 10.8, *)
func CMTimebaseGetTimeAndRate(_ timebase: CMTimebase, _ outTime: UnsafeMutablePointer<CMTime>, _ outRate: UnsafeMutablePointer<Float64>) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseSetRate(_ timebase: CMTimebase, _ rate: Float64) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseSetRateAndAnchorTime(_ timebase: CMTimebase, _ rate: Float64, _ timebaseTime: CMTime, _ immediateMasterTime: CMTime) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseGetEffectiveRate(_ timebase: CMTimebase) -> Float64
@available(OSX 10.8, *)
func CMTimebaseAddTimer(_ timebase: CMTimebase, _ timer: CFRunLoopTimer, _ runloop: CFRunLoop) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseRemoveTimer(_ timebase: CMTimebase, _ timer: CFRunLoopTimer) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseSetTimerNextFireTime(_ timebase: CMTimebase, _ timer: CFRunLoopTimer, _ fireTime: CMTime, _ flags: UInt32) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseSetTimerToFireImmediately(_ timebase: CMTimebase, _ timer: CFRunLoopTimer) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseAddTimerDispatchSource(_ timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseRemoveTimerDispatchSource(_ timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseSetTimerDispatchSourceNextFireTime(_ timebase: CMTimebase, _ timerSource: dispatch_source_t, _ fireTime: CMTime, _ flags: UInt32) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseSetTimerDispatchSourceToFireImmediately(_ timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus
@available(OSX 10.8, *)
func CMSyncGetRelativeRate(_ ofClockOrTimebase: CMClockOrTimebase, _ relativeToClockOrTimebase: CMClockOrTimebase) -> Float64
@available(OSX 10.8, *)
func CMSyncGetRelativeRateAndAnchorTime(_ ofClockOrTimebase: CMClockOrTimebase, _ relativeToClockOrTimebase: CMClockOrTimebase, _ outRelativeRate: UnsafeMutablePointer<Float64>, _ outOfClockOrTimebaseAnchorTime: UnsafeMutablePointer<CMTime>, _ outRelativeToClockOrTimebaseAnchorTime: UnsafeMutablePointer<CMTime>) -> OSStatus
@available(OSX 10.8, *)
func CMSyncConvertTime(_ time: CMTime, _ fromClockOrTimebase: CMClockOrTimebase, _ toClockOrTimebase: CMClockOrTimebase) -> CMTime
@available(OSX 10.8, *)
func CMSyncMightDrift(_ clockOrTimebase1: CMClockOrTimebase, _ clockOrTimebase2: CMClockOrTimebase) -> Bool
@available(OSX 10.8, *)
func CMSyncGetTime(_ clockOrTimebase: CMClockOrTimebase) -> CMTime
@available(OSX 10.8, *)
func CMTimebaseNotificationBarrier(_ timebase: CMTimebase) -> OSStatus
@available(OSX 10.8, *)
let kCMTimebaseNotification_EffectiveRateChanged: CFString
@available(OSX 10.8, *)
let kCMTimebaseNotification_TimeJumped: CFString
@available(OSX 10.9, *)
let kCMTimebaseNotificationKey_EventTime: CFString
