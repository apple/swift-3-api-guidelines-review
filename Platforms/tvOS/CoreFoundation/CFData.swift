
class CFData {
}
class CFMutableData {
}
func CFDataGetTypeID() -> CFTypeID
func CFDataCreate(_ allocator: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex) -> CFData!
func CFDataCreateWithBytesNoCopy(_ allocator: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex, _ bytesDeallocator: CFAllocator!) -> CFData!
func CFDataCreateCopy(_ allocator: CFAllocator!, _ theData: CFData!) -> CFData!
func CFDataCreateMutable(_ allocator: CFAllocator!, _ capacity: CFIndex) -> CFMutableData!
func CFDataCreateMutableCopy(_ allocator: CFAllocator!, _ capacity: CFIndex, _ theData: CFData!) -> CFMutableData!
func CFDataGetLength(_ theData: CFData!) -> CFIndex
func CFDataGetBytePtr(_ theData: CFData!) -> UnsafePointer<UInt8>
func CFDataGetMutableBytePtr(_ theData: CFMutableData!) -> UnsafeMutablePointer<UInt8>
func CFDataGetBytes(_ theData: CFData!, _ range: CFRange, _ buffer: UnsafeMutablePointer<UInt8>)
func CFDataSetLength(_ theData: CFMutableData!, _ length: CFIndex)
func CFDataIncreaseLength(_ theData: CFMutableData!, _ extraLength: CFIndex)
func CFDataAppendBytes(_ theData: CFMutableData!, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex)
func CFDataReplaceBytes(_ theData: CFMutableData!, _ range: CFRange, _ newBytes: UnsafePointer<UInt8>, _ newLength: CFIndex)
func CFDataDeleteBytes(_ theData: CFMutableData!, _ range: CFRange)
@available(tvOS 4.0, *)
struct CFDataSearchFlags : OptionSetType {
  init(rawValue rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var backwards: CFDataSearchFlags { get }
  static var anchored: CFDataSearchFlags { get }
}
@available(tvOS 4.0, *)
func CFDataFind(_ theData: CFData!, _ dataToFind: CFData!, _ searchRange: CFRange, _ compareOptions: CFDataSearchFlags) -> CFRange
