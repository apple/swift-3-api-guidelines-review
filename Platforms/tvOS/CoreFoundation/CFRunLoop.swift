
class CFRunLoop {
}
@available(*, deprecated, renamed="CFRunLoop")
typealias CFRunLoopRef = CFRunLoop
class CFRunLoopSource {
}
@available(*, deprecated, renamed="CFRunLoopSource")
typealias CFRunLoopSourceRef = CFRunLoopSource
class CFRunLoopObserver {
}
@available(*, deprecated, renamed="CFRunLoopObserver")
typealias CFRunLoopObserverRef = CFRunLoopObserver
class CFRunLoopTimer {
}
@available(*, deprecated, renamed="CFRunLoopTimer")
typealias CFRunLoopTimerRef = CFRunLoopTimer
enum CFRunLoopRunResult : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Finished
  case Stopped
  case TimedOut
  case HandledSource
}
struct CFRunLoopActivity : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Entry: CFRunLoopActivity { get }
  static var BeforeTimers: CFRunLoopActivity { get }
  static var BeforeSources: CFRunLoopActivity { get }
  static var BeforeWaiting: CFRunLoopActivity { get }
  static var AfterWaiting: CFRunLoopActivity { get }
  static var Exit: CFRunLoopActivity { get }
  static var AllActivities: CFRunLoopActivity { get }
}
let kCFRunLoopDefaultMode: CFString!
let kCFRunLoopCommonModes: CFString!
func CFRunLoopGetTypeID() -> CFTypeID
func CFRunLoopGetCurrent() -> CFRunLoop!
func CFRunLoopGetMain() -> CFRunLoop!
func CFRunLoopCopyCurrentMode(rl: CFRunLoop!) -> CFString!
func CFRunLoopCopyAllModes(rl: CFRunLoop!) -> CFArray!
func CFRunLoopAddCommonMode(rl: CFRunLoop!, _ mode: CFString!)
func CFRunLoopGetNextTimerFireDate(rl: CFRunLoop!, _ mode: CFString!) -> CFAbsoluteTime
func CFRunLoopRun()
func CFRunLoopRunInMode(mode: CFString!, _ seconds: CFTimeInterval, _ returnAfterSourceHandled: Bool) -> CFRunLoopRunResult
func CFRunLoopIsWaiting(rl: CFRunLoop!) -> Bool
func CFRunLoopWakeUp(rl: CFRunLoop!)
func CFRunLoopStop(rl: CFRunLoop!)
@available(tvOS 4.0, *)
func CFRunLoopPerformBlock(rl: CFRunLoop!, _ mode: CFTypeRef!, _ block: (() -> Void)!)
func CFRunLoopContainsSource(rl: CFRunLoop!, _ source: CFRunLoopSource!, _ mode: CFString!) -> Bool
func CFRunLoopAddSource(rl: CFRunLoop!, _ source: CFRunLoopSource!, _ mode: CFString!)
func CFRunLoopRemoveSource(rl: CFRunLoop!, _ source: CFRunLoopSource!, _ mode: CFString!)
func CFRunLoopContainsObserver(rl: CFRunLoop!, _ observer: CFRunLoopObserver!, _ mode: CFString!) -> Bool
func CFRunLoopAddObserver(rl: CFRunLoop!, _ observer: CFRunLoopObserver!, _ mode: CFString!)
func CFRunLoopRemoveObserver(rl: CFRunLoop!, _ observer: CFRunLoopObserver!, _ mode: CFString!)
func CFRunLoopContainsTimer(rl: CFRunLoop!, _ timer: CFRunLoopTimer!, _ mode: CFString!) -> Bool
func CFRunLoopAddTimer(rl: CFRunLoop!, _ timer: CFRunLoopTimer!, _ mode: CFString!)
func CFRunLoopRemoveTimer(rl: CFRunLoop!, _ timer: CFRunLoopTimer!, _ mode: CFString!)
struct CFRunLoopSourceContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  var equal: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean)!
  var hash: (@convention(c) (UnsafePointer<Void>) -> CFHashCode)!
  var schedule: (@convention(c) (UnsafeMutablePointer<Void>, CFRunLoop!, CFString!) -> Void)!
  var cancel: (@convention(c) (UnsafeMutablePointer<Void>, CFRunLoop!, CFString!) -> Void)!
  var perform: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!, equal: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean)!, hash: (@convention(c) (UnsafePointer<Void>) -> CFHashCode)!, schedule: (@convention(c) (UnsafeMutablePointer<Void>, CFRunLoop!, CFString!) -> Void)!, cancel: (@convention(c) (UnsafeMutablePointer<Void>, CFRunLoop!, CFString!) -> Void)!, perform: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!)
}
struct CFRunLoopSourceContext1 {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  var equal: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean)!
  var hash: (@convention(c) (UnsafePointer<Void>) -> CFHashCode)!
  var getPort: (@convention(c) (UnsafeMutablePointer<Void>) -> mach_port_t)!
  var perform: (@convention(c) (UnsafeMutablePointer<Void>, CFIndex, CFAllocator!, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!, equal: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean)!, hash: (@convention(c) (UnsafePointer<Void>) -> CFHashCode)!, getPort: (@convention(c) (UnsafeMutablePointer<Void>) -> mach_port_t)!, perform: (@convention(c) (UnsafeMutablePointer<Void>, CFIndex, CFAllocator!, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!)
}
func CFRunLoopSourceGetTypeID() -> CFTypeID
func CFRunLoopSourceCreate(allocator: CFAllocator!, _ order: CFIndex, _ context: UnsafeMutablePointer<CFRunLoopSourceContext>) -> CFRunLoopSource!
func CFRunLoopSourceGetOrder(source: CFRunLoopSource!) -> CFIndex
func CFRunLoopSourceInvalidate(source: CFRunLoopSource!)
func CFRunLoopSourceIsValid(source: CFRunLoopSource!) -> Bool
func CFRunLoopSourceGetContext(source: CFRunLoopSource!, _ context: UnsafeMutablePointer<CFRunLoopSourceContext>)
func CFRunLoopSourceSignal(source: CFRunLoopSource!)
struct CFRunLoopObserverContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFRunLoopObserverCallBack = @convention(c) (CFRunLoopObserver!, CFRunLoopActivity, UnsafeMutablePointer<Void>) -> Void
func CFRunLoopObserverGetTypeID() -> CFTypeID
func CFRunLoopObserverCreate(allocator: CFAllocator!, _ activities: CFOptionFlags, _ repeats: Bool, _ order: CFIndex, _ callout: CFRunLoopObserverCallBack!, _ context: UnsafeMutablePointer<CFRunLoopObserverContext>) -> CFRunLoopObserver!
@available(tvOS 5.0, *)
func CFRunLoopObserverCreateWithHandler(allocator: CFAllocator!, _ activities: CFOptionFlags, _ repeats: Bool, _ order: CFIndex, _ block: ((CFRunLoopObserver!, CFRunLoopActivity) -> Void)!) -> CFRunLoopObserver!
func CFRunLoopObserverGetActivities(observer: CFRunLoopObserver!) -> CFOptionFlags
func CFRunLoopObserverDoesRepeat(observer: CFRunLoopObserver!) -> Bool
func CFRunLoopObserverGetOrder(observer: CFRunLoopObserver!) -> CFIndex
func CFRunLoopObserverInvalidate(observer: CFRunLoopObserver!)
func CFRunLoopObserverIsValid(observer: CFRunLoopObserver!) -> Bool
func CFRunLoopObserverGetContext(observer: CFRunLoopObserver!, _ context: UnsafeMutablePointer<CFRunLoopObserverContext>)
struct CFRunLoopTimerContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFRunLoopTimerCallBack = @convention(c) (CFRunLoopTimer!, UnsafeMutablePointer<Void>) -> Void
func CFRunLoopTimerGetTypeID() -> CFTypeID
func CFRunLoopTimerCreate(allocator: CFAllocator!, _ fireDate: CFAbsoluteTime, _ interval: CFTimeInterval, _ flags: CFOptionFlags, _ order: CFIndex, _ callout: CFRunLoopTimerCallBack!, _ context: UnsafeMutablePointer<CFRunLoopTimerContext>) -> CFRunLoopTimer!
@available(tvOS 5.0, *)
func CFRunLoopTimerCreateWithHandler(allocator: CFAllocator!, _ fireDate: CFAbsoluteTime, _ interval: CFTimeInterval, _ flags: CFOptionFlags, _ order: CFIndex, _ block: ((CFRunLoopTimer!) -> Void)!) -> CFRunLoopTimer!
func CFRunLoopTimerGetNextFireDate(timer: CFRunLoopTimer!) -> CFAbsoluteTime
func CFRunLoopTimerSetNextFireDate(timer: CFRunLoopTimer!, _ fireDate: CFAbsoluteTime)
func CFRunLoopTimerGetInterval(timer: CFRunLoopTimer!) -> CFTimeInterval
func CFRunLoopTimerDoesRepeat(timer: CFRunLoopTimer!) -> Bool
func CFRunLoopTimerGetOrder(timer: CFRunLoopTimer!) -> CFIndex
func CFRunLoopTimerInvalidate(timer: CFRunLoopTimer!)
func CFRunLoopTimerIsValid(timer: CFRunLoopTimer!) -> Bool
func CFRunLoopTimerGetContext(timer: CFRunLoopTimer!, _ context: UnsafeMutablePointer<CFRunLoopTimerContext>)
@available(tvOS 7.0, *)
func CFRunLoopTimerGetTolerance(timer: CFRunLoopTimer!) -> CFTimeInterval
@available(tvOS 7.0, *)
func CFRunLoopTimerSetTolerance(timer: CFRunLoopTimer!, _ tolerance: CFTimeInterval)
