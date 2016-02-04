
typealias FSEventStreamCreateFlags = UInt32
var kFSEventStreamCreateFlagNone: Int { get }
var kFSEventStreamCreateFlagUseCFTypes: Int { get }
var kFSEventStreamCreateFlagNoDefer: Int { get }
var kFSEventStreamCreateFlagWatchRoot: Int { get }
@available(OSX 10.6, *)
var kFSEventStreamCreateFlagIgnoreSelf: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamCreateFlagFileEvents: Int { get }
@available(OSX 10.9, *)
var kFSEventStreamCreateFlagMarkSelf: Int { get }
typealias FSEventStreamEventFlags = UInt32
var kFSEventStreamEventFlagNone: Int { get }
var kFSEventStreamEventFlagMustScanSubDirs: Int { get }
var kFSEventStreamEventFlagUserDropped: Int { get }
var kFSEventStreamEventFlagKernelDropped: Int { get }
var kFSEventStreamEventFlagEventIdsWrapped: Int { get }
var kFSEventStreamEventFlagHistoryDone: Int { get }
var kFSEventStreamEventFlagRootChanged: Int { get }
var kFSEventStreamEventFlagMount: Int { get }
var kFSEventStreamEventFlagUnmount: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemCreated: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemRemoved: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemInodeMetaMod: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemRenamed: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemModified: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemFinderInfoMod: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemChangeOwner: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemXattrMod: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemIsFile: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemIsDir: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemIsSymlink: Int { get }
@available(OSX 10.9, *)
var kFSEventStreamEventFlagOwnEvent: Int { get }
@available(OSX 10.10, *)
var kFSEventStreamEventFlagItemIsHardlink: Int { get }
@available(OSX 10.10, *)
var kFSEventStreamEventFlagItemIsLastHardlink: Int { get }
typealias FSEventStreamEventId = UInt64
var kFSEventStreamEventIdSinceNow: UInt { get }
typealias FSEventStreamRef = COpaquePointer
typealias ConstFSEventStreamRef = COpaquePointer
struct FSEventStreamContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack?
  var release: CFAllocatorReleaseCallBack?
  var copyDescription: CFAllocatorCopyDescriptionCallBack?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFAllocatorRetainCallBack?, release: CFAllocatorReleaseCallBack?, copyDescription: CFAllocatorCopyDescriptionCallBack?)
}
typealias FSEventStreamCallback = @convention(c) (ConstFSEventStreamRef, UnsafeMutablePointer<Void>, Int, UnsafeMutablePointer<Void>, UnsafePointer<FSEventStreamEventFlags>, UnsafePointer<FSEventStreamEventId>) -> Void
@available(OSX 10.5, *)
func FSEventStreamCreate(allocator: CFAllocator?, _ callback: FSEventStreamCallback, _ context: UnsafeMutablePointer<FSEventStreamContext>, _ pathsToWatch: CFArray, _ sinceWhen: FSEventStreamEventId, _ latency: CFTimeInterval, _ flags: FSEventStreamCreateFlags) -> FSEventStreamRef
@available(OSX 10.5, *)
func FSEventStreamCreateRelativeToDevice(allocator: CFAllocator?, _ callback: FSEventStreamCallback, _ context: UnsafeMutablePointer<FSEventStreamContext>, _ deviceToWatch: dev_t, _ pathsToWatchRelativeToDevice: CFArray, _ sinceWhen: FSEventStreamEventId, _ latency: CFTimeInterval, _ flags: FSEventStreamCreateFlags) -> FSEventStreamRef
@available(OSX 10.5, *)
func FSEventStreamGetLatestEventId(streamRef: ConstFSEventStreamRef) -> FSEventStreamEventId
@available(OSX 10.5, *)
func FSEventStreamGetDeviceBeingWatched(streamRef: ConstFSEventStreamRef) -> dev_t
@available(OSX 10.5, *)
func FSEventStreamCopyPathsBeingWatched(streamRef: ConstFSEventStreamRef) -> CFArray
@available(OSX 10.5, *)
func FSEventsGetCurrentEventId() -> FSEventStreamEventId
@available(OSX 10.5, *)
func FSEventsCopyUUIDForDevice(dev: dev_t) -> CFUUID?
@available(OSX 10.5, *)
func FSEventsGetLastEventIdForDeviceBeforeTime(dev: dev_t, _ time: CFAbsoluteTime) -> FSEventStreamEventId
@available(OSX 10.5, *)
func FSEventsPurgeEventsForDeviceUpToEventId(dev: dev_t, _ eventId: FSEventStreamEventId) -> Bool
@available(OSX 10.5, *)
func FSEventStreamRetain(streamRef: FSEventStreamRef)
@available(OSX 10.5, *)
func FSEventStreamRelease(streamRef: FSEventStreamRef)
@available(OSX 10.5, *)
func FSEventStreamScheduleWithRunLoop(streamRef: FSEventStreamRef, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(OSX 10.5, *)
func FSEventStreamUnscheduleFromRunLoop(streamRef: FSEventStreamRef, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(OSX 10.6, *)
func FSEventStreamSetDispatchQueue(streamRef: FSEventStreamRef, _ q: dispatch_queue_t?)
@available(OSX 10.5, *)
func FSEventStreamInvalidate(streamRef: FSEventStreamRef)
@available(OSX 10.5, *)
func FSEventStreamStart(streamRef: FSEventStreamRef) -> Bool
@available(OSX 10.5, *)
func FSEventStreamFlushAsync(streamRef: FSEventStreamRef) -> FSEventStreamEventId
@available(OSX 10.5, *)
func FSEventStreamFlushSync(streamRef: FSEventStreamRef)
@available(OSX 10.5, *)
func FSEventStreamStop(streamRef: FSEventStreamRef)
@available(OSX 10.5, *)
func FSEventStreamShow(streamRef: ConstFSEventStreamRef)
@available(OSX 10.5, *)
func FSEventStreamCopyDescription(streamRef: ConstFSEventStreamRef) -> CFString
@available(OSX 10.9, *)
func FSEventStreamSetExclusionPaths(streamRef: FSEventStreamRef, _ pathsToExclude: CFArray) -> Bool
