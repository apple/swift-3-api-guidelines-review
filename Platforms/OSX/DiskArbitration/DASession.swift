
class DASession {
}
func DASessionGetTypeID() -> CFTypeID
func DASessionCreate(allocator: CFAllocator?) -> DASession?
func DASessionScheduleWithRunLoop(session: DASession, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
func DASessionUnscheduleFromRunLoop(session: DASession, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
func DASessionSetDispatchQueue(session: DASession, _ queue: dispatch_queue_t?)
