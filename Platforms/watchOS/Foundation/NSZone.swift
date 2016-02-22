
func NSPageSize() -> Int
func NSLogPageSize() -> Int
func NSRoundUpToMultipleOfPageSize(bytes: Int) -> Int
func NSRoundDownToMultipleOfPageSize(bytes: Int) -> Int
func NSAllocateMemoryPages(bytes: Int) -> UnsafeMutablePointer<Void>
func NSDeallocateMemoryPages(ptr: UnsafeMutablePointer<Void>, _ bytes: Int)
func NSCopyMemoryPages(source: UnsafePointer<Void>, _ dest: UnsafeMutablePointer<Void>, _ bytes: Int)
@available(watchOS, introduced=2.0, deprecated=2.0)
func NSRealMemoryAvailable() -> Int
