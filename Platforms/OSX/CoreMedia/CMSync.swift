
class CMClock {
}
@available(*, deprecated, renamed="CMClock")
typealias CMClockRef = CMClock
@available(*, deprecated, renamed="CMTimebase")
typealias CMTimebaseRef = CMTimebase
class CMTimebase {
}
@available(*, deprecated, renamed="CMClockOrTimebase")
typealias CMClockOrTimebaseRef = CMClockOrTimebase
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
func CMClockConvertHostTimeToSystemUnits(hostTime: CMTime) -> UInt64
@available(OSX 10.8, *)
func CMClockMakeHostTimeFromSystemUnits(hostTime: UInt64) -> CMTime
@available(OSX 10.8, *)
func CMClockGetTime(clock: CMClock) -> CMTime
@available(OSX 10.8, *)
func CMClockGetAnchorTime(clock: CMClock, _ outClockTime: UnsafeMutablePointer<CMTime>, _ outReferenceClockTime: UnsafeMutablePointer<CMTime>) -> OSStatus
@available(OSX 10.8, *)
func CMClockMightDrift(clock: CMClock, _ otherClock: CMClock) -> Bool
@available(OSX 10.8, *)
func CMClockInvalidate(clock: CMClock)
@available(OSX 10.8, *)
func CMTimebaseGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
func CMTimebaseCreateWithMasterClock(allocator: CFAllocator?, _ masterClock: CMClock, _ timebaseOut: UnsafeMutablePointer<CMTimebase?>) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseCreateWithMasterTimebase(allocator: CFAllocator?, _ masterTimebase: CMTimebase, _ timebaseOut: UnsafeMutablePointer<CMTimebase?>) -> OSStatus
@available(OSX 10.11, *)
func CMTimebaseCopyMasterTimebase(timebase: CMTimebase) -> CMTimebase?
@available(OSX 10.11, *)
func CMTimebaseCopyMasterClock(timebase: CMTimebase) -> CMClock?
@available(OSX 10.11, *)
func CMTimebaseCopyMaster(timebase: CMTimebase) -> CMClockOrTimebase?
@available(OSX 10.11, *)
func CMTimebaseCopyUltimateMasterClock(timebase: CMTimebase) -> CMClock?
@available(OSX, introduced=10.8, deprecated=10.11)
func CMTimebaseGetMasterTimebase(timebase: CMTimebase) -> CMTimebase?
@available(OSX, introduced=10.8, deprecated=10.11)
func CMTimebaseGetMasterClock(timebase: CMTimebase) -> CMClock?
@available(OSX, introduced=10.8, deprecated=10.11)
func CMTimebaseGetMaster(timebase: CMTimebase) -> CMClockOrTimebase?
@available(OSX, introduced=10.8, deprecated=10.11)
func CMTimebaseGetUltimateMasterClock(timebase: CMTimebase) -> CMClock?
@available(OSX 10.8, *)
func CMTimebaseGetTime(timebase: CMTimebase) -> CMTime
@available(OSX 10.8, *)
func CMTimebaseGetTimeWithTimeScale(timebase: CMTimebase, _ timescale: CMTimeScale, _ method: CMTimeRoundingMethod) -> CMTime
@available(OSX 10.8, *)
func CMTimebaseSetTime(timebase: CMTimebase, _ time: CMTime) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseSetAnchorTime(timebase: CMTimebase, _ timebaseTime: CMTime, _ immediateMasterTime: CMTime) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseGetRate(timebase: CMTimebase) -> Float64
@available(OSX 10.8, *)
func CMTimebaseGetTimeAndRate(timebase: CMTimebase, _ outTime: UnsafeMutablePointer<CMTime>, _ outRate: UnsafeMutablePointer<Float64>) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseSetRate(timebase: CMTimebase, _ rate: Float64) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseSetRateAndAnchorTime(timebase: CMTimebase, _ rate: Float64, _ timebaseTime: CMTime, _ immediateMasterTime: CMTime) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseGetEffectiveRate(timebase: CMTimebase) -> Float64
@available(OSX 10.8, *)
func CMTimebaseAddTimer(timebase: CMTimebase, _ timer: CFRunLoopTimer, _ runloop: CFRunLoop) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseRemoveTimer(timebase: CMTimebase, _ timer: CFRunLoopTimer) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseSetTimerNextFireTime(timebase: CMTimebase, _ timer: CFRunLoopTimer, _ fireTime: CMTime, _ flags: UInt32) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseSetTimerToFireImmediately(timebase: CMTimebase, _ timer: CFRunLoopTimer) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseAddTimerDispatchSource(timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseRemoveTimerDispatchSource(timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseSetTimerDispatchSourceNextFireTime(timebase: CMTimebase, _ timerSource: dispatch_source_t, _ fireTime: CMTime, _ flags: UInt32) -> OSStatus
@available(OSX 10.8, *)
func CMTimebaseSetTimerDispatchSourceToFireImmediately(timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus
@available(OSX 10.8, *)
func CMSyncGetRelativeRate(ofClockOrTimebase: CMClockOrTimebase, _ relativeToClockOrTimebase: CMClockOrTimebase) -> Float64
@available(OSX 10.8, *)
func CMSyncGetRelativeRateAndAnchorTime(ofClockOrTimebase: CMClockOrTimebase, _ relativeToClockOrTimebase: CMClockOrTimebase, _ outRelativeRate: UnsafeMutablePointer<Float64>, _ outOfClockOrTimebaseAnchorTime: UnsafeMutablePointer<CMTime>, _ outRelativeToClockOrTimebaseAnchorTime: UnsafeMutablePointer<CMTime>) -> OSStatus
@available(OSX 10.8, *)
func CMSyncConvertTime(time: CMTime, _ fromClockOrTimebase: CMClockOrTimebase, _ toClockOrTimebase: CMClockOrTimebase) -> CMTime
@available(OSX 10.8, *)
func CMSyncMightDrift(clockOrTimebase1: CMClockOrTimebase, _ clockOrTimebase2: CMClockOrTimebase) -> Bool
@available(OSX 10.8, *)
func CMSyncGetTime(clockOrTimebase: CMClockOrTimebase) -> CMTime
@available(OSX 10.8, *)
func CMTimebaseNotificationBarrier(timebase: CMTimebase) -> OSStatus
@available(OSX 10.8, *)
let kCMTimebaseNotification_EffectiveRateChanged: CFString
@available(OSX 10.8, *)
let kCMTimebaseNotification_TimeJumped: CFString
@available(OSX 10.9, *)
let kCMTimebaseNotificationKey_EventTime: CFString
