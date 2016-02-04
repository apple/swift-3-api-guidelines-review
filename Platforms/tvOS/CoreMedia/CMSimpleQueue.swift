
var kCMSimpleQueueError_AllocationFailed: OSStatus { get }
var kCMSimpleQueueError_RequiredParameterMissing: OSStatus { get }
var kCMSimpleQueueError_ParameterOutOfRange: OSStatus { get }
var kCMSimpleQueueError_QueueIsFull: OSStatus { get }
class CMSimpleQueue {
}
@available(tvOS 5.0, *)
func CMSimpleQueueGetTypeID() -> CFTypeID
@available(tvOS 5.0, *)
func CMSimpleQueueCreate(allocator: CFAllocator?, _ capacity: Int32, _ queueOut: UnsafeMutablePointer<CMSimpleQueue?>) -> OSStatus
@available(tvOS 5.0, *)
func CMSimpleQueueEnqueue(queue: CMSimpleQueue, _ element: UnsafePointer<Void>) -> OSStatus
@available(tvOS 5.0, *)
func CMSimpleQueueDequeue(queue: CMSimpleQueue) -> UnsafePointer<Void>
@available(tvOS 5.0, *)
func CMSimpleQueueGetHead(queue: CMSimpleQueue) -> UnsafePointer<Void>
@available(tvOS 5.0, *)
func CMSimpleQueueReset(queue: CMSimpleQueue) -> OSStatus
@available(tvOS 5.0, *)
func CMSimpleQueueGetCapacity(queue: CMSimpleQueue) -> Int32
@available(tvOS 5.0, *)
func CMSimpleQueueGetCount(queue: CMSimpleQueue) -> Int32
