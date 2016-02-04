
var kCMSimpleQueueError_AllocationFailed: OSStatus { get }
var kCMSimpleQueueError_RequiredParameterMissing: OSStatus { get }
var kCMSimpleQueueError_ParameterOutOfRange: OSStatus { get }
var kCMSimpleQueueError_QueueIsFull: OSStatus { get }
class CMSimpleQueue {
}
@available(iOS 5.0, *)
func CMSimpleQueueGetTypeID() -> CFTypeID
@available(iOS 5.0, *)
func CMSimpleQueueCreate(allocator: CFAllocator?, _ capacity: Int32, _ queueOut: UnsafeMutablePointer<CMSimpleQueue?>) -> OSStatus
@available(iOS 5.0, *)
func CMSimpleQueueEnqueue(queue: CMSimpleQueue, _ element: UnsafePointer<Void>) -> OSStatus
@available(iOS 5.0, *)
func CMSimpleQueueDequeue(queue: CMSimpleQueue) -> UnsafePointer<Void>
@available(iOS 5.0, *)
func CMSimpleQueueGetHead(queue: CMSimpleQueue) -> UnsafePointer<Void>
@available(iOS 5.0, *)
func CMSimpleQueueReset(queue: CMSimpleQueue) -> OSStatus
@available(iOS 5.0, *)
func CMSimpleQueueGetCapacity(queue: CMSimpleQueue) -> Int32
@available(iOS 5.0, *)
func CMSimpleQueueGetCount(queue: CMSimpleQueue) -> Int32
