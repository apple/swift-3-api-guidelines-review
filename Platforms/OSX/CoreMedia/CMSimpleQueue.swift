
var kCMSimpleQueueError_AllocationFailed: OSStatus { get }
var kCMSimpleQueueError_RequiredParameterMissing: OSStatus { get }
var kCMSimpleQueueError_ParameterOutOfRange: OSStatus { get }
var kCMSimpleQueueError_QueueIsFull: OSStatus { get }
class CMSimpleQueue {
}
@available(*, deprecated, renamed="CMSimpleQueue")
typealias CMSimpleQueueRef = CMSimpleQueue
@available(OSX 10.7, *)
func CMSimpleQueueGetTypeID() -> CFTypeID
@available(OSX 10.7, *)
func CMSimpleQueueCreate(allocator: CFAllocator?, _ capacity: Int32, _ queueOut: UnsafeMutablePointer<CMSimpleQueue?>) -> OSStatus
@available(OSX 10.7, *)
func CMSimpleQueueEnqueue(queue: CMSimpleQueue, _ element: UnsafePointer<Void>) -> OSStatus
@available(OSX 10.7, *)
func CMSimpleQueueDequeue(queue: CMSimpleQueue) -> UnsafePointer<Void>
@available(OSX 10.7, *)
func CMSimpleQueueGetHead(queue: CMSimpleQueue) -> UnsafePointer<Void>
@available(OSX 10.7, *)
func CMSimpleQueueReset(queue: CMSimpleQueue) -> OSStatus
@available(OSX 10.7, *)
func CMSimpleQueueGetCapacity(queue: CMSimpleQueue) -> Int32
@available(OSX 10.7, *)
func CMSimpleQueueGetCount(queue: CMSimpleQueue) -> Int32
