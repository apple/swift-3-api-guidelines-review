
var NSScannedOption: Int { get }
var NSCollectorDisabledOption: Int { get }
func NSPageSize() -> Int
func NSLogPageSize() -> Int
func NSRoundUpToMultipleOfPageSize(_ bytes: Int) -> Int
func NSRoundDownToMultipleOfPageSize(_ bytes: Int) -> Int
func NSAllocateMemoryPages(_ bytes: Int) -> UnsafeMutablePointer<Void>
func NSDeallocateMemoryPages(_ ptr: UnsafeMutablePointer<Void>, _ bytes: Int)
func NSCopyMemoryPages(_ source: UnsafePointer<Void>, _ dest: UnsafeMutablePointer<Void>, _ bytes: Int)
