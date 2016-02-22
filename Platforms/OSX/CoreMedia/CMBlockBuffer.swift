
var kCMBlockBufferNoErr: OSStatus { get }
var kCMBlockBufferStructureAllocationFailedErr: OSStatus { get }
var kCMBlockBufferBlockAllocationFailedErr: OSStatus { get }
var kCMBlockBufferBadCustomBlockSourceErr: OSStatus { get }
var kCMBlockBufferBadOffsetParameterErr: OSStatus { get }
var kCMBlockBufferBadLengthParameterErr: OSStatus { get }
var kCMBlockBufferBadPointerParameterErr: OSStatus { get }
var kCMBlockBufferEmptyBBufErr: OSStatus { get }
var kCMBlockBufferUnallocatedBlockErr: OSStatus { get }
var kCMBlockBufferInsufficientSpaceErr: OSStatus { get }
typealias CMBlockBufferFlags = UInt32
var kCMBlockBufferAssureMemoryNowFlag: CMBlockBufferFlags { get }
var kCMBlockBufferAlwaysCopyDataFlag: CMBlockBufferFlags { get }
var kCMBlockBufferDontOptimizeDepthFlag: CMBlockBufferFlags { get }
var kCMBlockBufferPermitEmptyReferenceFlag: CMBlockBufferFlags { get }
class CMBlockBuffer {
}
struct CMBlockBufferCustomBlockSource {
  var version: UInt32
  var AllocateBlock: (@convention(c) (UnsafeMutablePointer<Void>, Int) -> UnsafeMutablePointer<Void>)?
  var FreeBlock: (@convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, Int) -> Void)?
  var refCon: UnsafeMutablePointer<Void>
  init()
  init(version version: UInt32, AllocateBlock AllocateBlock: (@convention(c) (UnsafeMutablePointer<Void>, Int) -> UnsafeMutablePointer<Void>)?, FreeBlock FreeBlock: (@convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, Int) -> Void)?, refCon refCon: UnsafeMutablePointer<Void>)
}
var kCMBlockBufferCustomBlockSourceVersion: UInt32 { get }
@available(OSX 10.7, *)
func CMBlockBufferCreateEmpty(_ structureAllocator: CFAllocator?, _ subBlockCapacity: UInt32, _ flags: CMBlockBufferFlags, _ newBBufOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(OSX 10.7, *)
func CMBlockBufferCreateWithMemoryBlock(_ structureAllocator: CFAllocator?, _ memoryBlock: UnsafeMutablePointer<Void>, _ blockLength: Int, _ blockAllocator: CFAllocator?, _ customBlockSource: UnsafePointer<CMBlockBufferCustomBlockSource>, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags, _ newBBufOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(OSX 10.7, *)
func CMBlockBufferCreateWithBufferReference(_ structureAllocator: CFAllocator?, _ targetBuffer: CMBlockBuffer, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags, _ newBBufOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(OSX 10.7, *)
func CMBlockBufferCreateContiguous(_ structureAllocator: CFAllocator?, _ sourceBuffer: CMBlockBuffer, _ blockAllocator: CFAllocator?, _ customBlockSource: UnsafePointer<CMBlockBufferCustomBlockSource>, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags, _ newBBufOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(OSX 10.7, *)
func CMBlockBufferGetTypeID() -> CFTypeID
@available(OSX 10.7, *)
func CMBlockBufferAppendMemoryBlock(_ theBuffer: CMBlockBuffer, _ memoryBlock: UnsafeMutablePointer<Void>, _ blockLength: Int, _ blockAllocator: CFAllocator?, _ customBlockSource: UnsafePointer<CMBlockBufferCustomBlockSource>, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags) -> OSStatus
@available(OSX 10.7, *)
func CMBlockBufferAppendBufferReference(_ theBuffer: CMBlockBuffer, _ targetBBuf: CMBlockBuffer, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags) -> OSStatus
@available(OSX 10.7, *)
func CMBlockBufferAssureBlockMemory(_ theBuffer: CMBlockBuffer) -> OSStatus
@available(OSX 10.7, *)
func CMBlockBufferAccessDataBytes(_ theBuffer: CMBlockBuffer, _ offset: Int, _ length: Int, _ temporaryBlock: UnsafeMutablePointer<Void>, _ returnedPointer: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> OSStatus
@available(OSX 10.7, *)
func CMBlockBufferCopyDataBytes(_ theSourceBuffer: CMBlockBuffer, _ offsetToData: Int, _ dataLength: Int, _ destination: UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.7, *)
func CMBlockBufferReplaceDataBytes(_ sourceBytes: UnsafePointer<Void>, _ destinationBuffer: CMBlockBuffer, _ offsetIntoDestination: Int, _ dataLength: Int) -> OSStatus
@available(OSX 10.7, *)
func CMBlockBufferFillDataBytes(_ fillByte: Int8, _ destinationBuffer: CMBlockBuffer, _ offsetIntoDestination: Int, _ dataLength: Int) -> OSStatus
@available(OSX 10.7, *)
func CMBlockBufferGetDataPointer(_ theBuffer: CMBlockBuffer, _ offset: Int, _ lengthAtOffset: UnsafeMutablePointer<Int>, _ totalLength: UnsafeMutablePointer<Int>, _ dataPointer: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> OSStatus
@available(OSX 10.7, *)
func CMBlockBufferGetDataLength(_ theBuffer: CMBlockBuffer) -> Int
@available(OSX 10.7, *)
func CMBlockBufferIsRangeContiguous(_ theBuffer: CMBlockBuffer, _ offset: Int, _ length: Int) -> Bool
@available(OSX 10.7, *)
func CMBlockBufferIsEmpty(_ theBuffer: CMBlockBuffer) -> Bool
