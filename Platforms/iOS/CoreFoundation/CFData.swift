
class CFData {
}
class CFMutableData {
}
func CFDataGetTypeID() -> CFTypeID
func CFDataCreate(allocator: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex) -> CFData!
func CFDataCreateWithBytesNoCopy(allocator: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex, _ bytesDeallocator: CFAllocator!) -> CFData!
func CFDataCreateCopy(allocator: CFAllocator!, _ theData: CFData!) -> CFData!
func CFDataCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex) -> CFMutableData!
func CFDataCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ theData: CFData!) -> CFMutableData!
func CFDataGetLength(theData: CFData!) -> CFIndex
func CFDataGetBytePtr(theData: CFData!) -> UnsafePointer<UInt8>
func CFDataGetMutableBytePtr(theData: CFMutableData!) -> UnsafeMutablePointer<UInt8>
func CFDataGetBytes(theData: CFData!, _ range: CFRange, _ buffer: UnsafeMutablePointer<UInt8>)
func CFDataSetLength(theData: CFMutableData!, _ length: CFIndex)
func CFDataIncreaseLength(theData: CFMutableData!, _ extraLength: CFIndex)
func CFDataAppendBytes(theData: CFMutableData!, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex)
func CFDataReplaceBytes(theData: CFMutableData!, _ range: CFRange, _ newBytes: UnsafePointer<UInt8>, _ newLength: CFIndex)
func CFDataDeleteBytes(theData: CFMutableData!, _ range: CFRange)
@available(iOS 4.0, *)
struct CFDataSearchFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var backwards: CFDataSearchFlags { get }
  static var anchored: CFDataSearchFlags { get }
}
@available(iOS 4.0, *)
func CFDataFind(theData: CFData!, _ dataToFind: CFData!, _ searchRange: CFRange, _ compareOptions: CFDataSearchFlags) -> CFRange
