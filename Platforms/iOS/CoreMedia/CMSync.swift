
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
@available(iOS 6.0, *)
func CMClockGetTypeID() -> CFTypeID
@available(iOS 6.0, *)
func CMClockGetHostTimeClock() -> CMClock
@available(iOS 6.0, *)
func CMClockConvertHostTimeToSystemUnits(hostTime: CMTime) -> UInt64
@available(iOS 6.0, *)
func CMClockMakeHostTimeFromSystemUnits(hostTime: UInt64) -> CMTime
@available(iOS 6.0, *)
func CMClockGetTime(clock: CMClock) -> CMTime
@available(iOS 6.0, *)
func CMClockGetAnchorTime(clock: CMClock, _ outClockTime: UnsafeMutablePointer<CMTime>, _ outReferenceClockTime: UnsafeMutablePointer<CMTime>) -> OSStatus
@available(iOS 6.0, *)
func CMClockMightDrift(clock: CMClock, _ otherClock: CMClock) -> Bool
@available(iOS 6.0, *)
func CMClockInvalidate(clock: CMClock)
@available(iOS 6.0, *)
func CMTimebaseGetTypeID() -> CFTypeID
@available(iOS 6.0, *)
func CMTimebaseCreateWithMasterClock(allocator: CFAllocator?, _ masterClock: CMClock, _ timebaseOut: UnsafeMutablePointer<CMTimebase?>) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseCreateWithMasterTimebase(allocator: CFAllocator?, _ masterTimebase: CMTimebase, _ timebaseOut: UnsafeMutablePointer<CMTimebase?>) -> OSStatus
@available(iOS 9.0, *)
func CMTimebaseCopyMasterTimebase(timebase: CMTimebase) -> CMTimebase?
@available(iOS 9.0, *)
func CMTimebaseCopyMasterClock(timebase: CMTimebase) -> CMClock?
@available(iOS 9.0, *)
func CMTimebaseCopyMaster(timebase: CMTimebase) -> CMClockOrTimebase?
@available(iOS 9.0, *)
func CMTimebaseCopyUltimateMasterClock(timebase: CMTimebase) -> CMClock?
@available(iOS, introduced=6.0, deprecated=9.0)
func CMTimebaseGetMasterTimebase(timebase: CMTimebase) -> CMTimebase?
@available(iOS, introduced=6.0, deprecated=9.0)
func CMTimebaseGetMasterClock(timebase: CMTimebase) -> CMClock?
@available(iOS, introduced=6.0, deprecated=9.0)
func CMTimebaseGetMaster(timebase: CMTimebase) -> CMClockOrTimebase?
@available(iOS, introduced=6.0, deprecated=9.0)
func CMTimebaseGetUltimateMasterClock(timebase: CMTimebase) -> CMClock?
@available(iOS 6.0, *)
func CMTimebaseGetTime(timebase: CMTimebase) -> CMTime
@available(iOS 6.0, *)
func CMTimebaseGetTimeWithTimeScale(timebase: CMTimebase, _ timescale: CMTimeScale, _ method: CMTimeRoundingMethod) -> CMTime
@available(iOS 6.0, *)
func CMTimebaseSetTime(timebase: CMTimebase, _ time: CMTime) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseSetAnchorTime(timebase: CMTimebase, _ timebaseTime: CMTime, _ immediateMasterTime: CMTime) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseGetRate(timebase: CMTimebase) -> Float64
@available(iOS 6.0, *)
func CMTimebaseGetTimeAndRate(timebase: CMTimebase, _ outTime: UnsafeMutablePointer<CMTime>, _ outRate: UnsafeMutablePointer<Float64>) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseSetRate(timebase: CMTimebase, _ rate: Float64) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseSetRateAndAnchorTime(timebase: CMTimebase, _ rate: Float64, _ timebaseTime: CMTime, _ immediateMasterTime: CMTime) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseGetEffectiveRate(timebase: CMTimebase) -> Float64
@available(iOS 6.0, *)
func CMTimebaseAddTimer(timebase: CMTimebase, _ timer: CFRunLoopTimer, _ runloop: CFRunLoop) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseRemoveTimer(timebase: CMTimebase, _ timer: CFRunLoopTimer) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseSetTimerNextFireTime(timebase: CMTimebase, _ timer: CFRunLoopTimer, _ fireTime: CMTime, _ flags: UInt32) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseSetTimerToFireImmediately(timebase: CMTimebase, _ timer: CFRunLoopTimer) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseAddTimerDispatchSource(timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseRemoveTimerDispatchSource(timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseSetTimerDispatchSourceNextFireTime(timebase: CMTimebase, _ timerSource: dispatch_source_t, _ fireTime: CMTime, _ flags: UInt32) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseSetTimerDispatchSourceToFireImmediately(timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus
@available(iOS 6.0, *)
func CMSyncGetRelativeRate(ofClockOrTimebase: CMClockOrTimebase, _ relativeToClockOrTimebase: CMClockOrTimebase) -> Float64
@available(iOS 6.0, *)
func CMSyncGetRelativeRateAndAnchorTime(ofClockOrTimebase: CMClockOrTimebase, _ relativeToClockOrTimebase: CMClockOrTimebase, _ outRelativeRate: UnsafeMutablePointer<Float64>, _ outOfClockOrTimebaseAnchorTime: UnsafeMutablePointer<CMTime>, _ outRelativeToClockOrTimebaseAnchorTime: UnsafeMutablePointer<CMTime>) -> OSStatus
@available(iOS 6.0, *)
func CMSyncConvertTime(time: CMTime, _ fromClockOrTimebase: CMClockOrTimebase, _ toClockOrTimebase: CMClockOrTimebase) -> CMTime
@available(iOS 6.0, *)
func CMSyncMightDrift(clockOrTimebase1: CMClockOrTimebase, _ clockOrTimebase2: CMClockOrTimebase) -> Bool
@available(iOS 6.0, *)
func CMSyncGetTime(clockOrTimebase: CMClockOrTimebase) -> CMTime
@available(iOS 6.0, *)
func CMTimebaseNotificationBarrier(timebase: CMTimebase) -> OSStatus
@available(iOS 6.0, *)
let kCMTimebaseNotification_EffectiveRateChanged: CFString
@available(iOS 6.0, *)
let kCMTimebaseNotification_TimeJumped: CFString
@available(iOS 7.0, *)
let kCMTimebaseNotificationKey_EventTime: CFString
