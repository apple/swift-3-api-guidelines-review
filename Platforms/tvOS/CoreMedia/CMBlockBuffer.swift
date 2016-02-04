
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
  init(version: UInt32, AllocateBlock: (@convention(c) (UnsafeMutablePointer<Void>, Int) -> UnsafeMutablePointer<Void>)?, FreeBlock: (@convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, Int) -> Void)?, refCon: UnsafeMutablePointer<Void>)
}
var kCMBlockBufferCustomBlockSourceVersion: UInt32 { get }
@available(tvOS 4.0, *)
func CMBlockBufferCreateEmpty(structureAllocator: CFAllocator?, _ subBlockCapacity: UInt32, _ flags: CMBlockBufferFlags, _ newBBufOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(tvOS 4.0, *)
func CMBlockBufferCreateWithMemoryBlock(structureAllocator: CFAllocator?, _ memoryBlock: UnsafeMutablePointer<Void>, _ blockLength: Int, _ blockAllocator: CFAllocator?, _ customBlockSource: UnsafePointer<CMBlockBufferCustomBlockSource>, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags, _ newBBufOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(tvOS 4.0, *)
func CMBlockBufferCreateWithBufferReference(structureAllocator: CFAllocator?, _ targetBuffer: CMBlockBuffer, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags, _ newBBufOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(tvOS 4.0, *)
func CMBlockBufferCreateContiguous(structureAllocator: CFAllocator?, _ sourceBuffer: CMBlockBuffer, _ blockAllocator: CFAllocator?, _ customBlockSource: UnsafePointer<CMBlockBufferCustomBlockSource>, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags, _ newBBufOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(tvOS 4.0, *)
func CMBlockBufferGetTypeID() -> CFTypeID
@available(tvOS 4.0, *)
func CMBlockBufferAppendMemoryBlock(theBuffer: CMBlockBuffer, _ memoryBlock: UnsafeMutablePointer<Void>, _ blockLength: Int, _ blockAllocator: CFAllocator?, _ customBlockSource: UnsafePointer<CMBlockBufferCustomBlockSource>, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags) -> OSStatus
@available(tvOS 4.0, *)
func CMBlockBufferAppendBufferReference(theBuffer: CMBlockBuffer, _ targetBBuf: CMBlockBuffer, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags) -> OSStatus
@available(tvOS 4.0, *)
func CMBlockBufferAssureBlockMemory(theBuffer: CMBlockBuffer) -> OSStatus
@available(tvOS 4.0, *)
func CMBlockBufferAccessDataBytes(theBuffer: CMBlockBuffer, _ offset: Int, _ length: Int, _ temporaryBlock: UnsafeMutablePointer<Void>, _ returnedPointer: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> OSStatus
@available(tvOS 4.0, *)
func CMBlockBufferCopyDataBytes(theSourceBuffer: CMBlockBuffer, _ offsetToData: Int, _ dataLength: Int, _ destination: UnsafeMutablePointer<Void>) -> OSStatus
@available(tvOS 4.0, *)
func CMBlockBufferReplaceDataBytes(sourceBytes: UnsafePointer<Void>, _ destinationBuffer: CMBlockBuffer, _ offsetIntoDestination: Int, _ dataLength: Int) -> OSStatus
@available(tvOS 4.0, *)
func CMBlockBufferFillDataBytes(fillByte: Int8, _ destinationBuffer: CMBlockBuffer, _ offsetIntoDestination: Int, _ dataLength: Int) -> OSStatus
@available(tvOS 4.0, *)
func CMBlockBufferGetDataPointer(theBuffer: CMBlockBuffer, _ offset: Int, _ lengthAtOffset: UnsafeMutablePointer<Int>, _ totalLength: UnsafeMutablePointer<Int>, _ dataPointer: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> OSStatus
@available(tvOS 4.0, *)
func CMBlockBufferGetDataLength(theBuffer: CMBlockBuffer) -> Int
@available(tvOS 4.0, *)
func CMBlockBufferIsRangeContiguous(theBuffer: CMBlockBuffer, _ offset: Int, _ length: Int) -> Bool
@available(tvOS 4.0, *)
func CMBlockBufferIsEmpty(theBuffer: CMBlockBuffer) -> Bool
