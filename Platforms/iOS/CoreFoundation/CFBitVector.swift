
typealias CFBit = UInt32
class CFBitVector {
}
class CFMutableBitVector {
}
func CFBitVectorGetTypeID() -> CFTypeID
func CFBitVectorCreate(allocator: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ numBits: CFIndex) -> CFBitVector!
func CFBitVectorCreateCopy(allocator: CFAllocator!, _ bv: CFBitVector!) -> CFBitVector!
func CFBitVectorCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex) -> CFMutableBitVector!
func CFBitVectorCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ bv: CFBitVector!) -> CFMutableBitVector!
func CFBitVectorGetCount(bv: CFBitVector!) -> CFIndex
func CFBitVectorGetCountOfBit(bv: CFBitVector!, _ range: CFRange, _ value: CFBit) -> CFIndex
func CFBitVectorContainsBit(bv: CFBitVector!, _ range: CFRange, _ value: CFBit) -> Bool
func CFBitVectorGetBitAtIndex(bv: CFBitVector!, _ idx: CFIndex) -> CFBit
func CFBitVectorGetBits(bv: CFBitVector!, _ range: CFRange, _ bytes: UnsafeMutablePointer<UInt8>)
func CFBitVectorGetFirstIndexOfBit(bv: CFBitVector!, _ range: CFRange, _ value: CFBit) -> CFIndex
func CFBitVectorGetLastIndexOfBit(bv: CFBitVector!, _ range: CFRange, _ value: CFBit) -> CFIndex
func CFBitVectorSetCount(bv: CFMutableBitVector!, _ count: CFIndex)
func CFBitVectorFlipBitAtIndex(bv: CFMutableBitVector!, _ idx: CFIndex)
func CFBitVectorFlipBits(bv: CFMutableBitVector!, _ range: CFRange)
func CFBitVectorSetBitAtIndex(bv: CFMutableBitVector!, _ idx: CFIndex, _ value: CFBit)
func CFBitVectorSetBits(bv: CFMutableBitVector!, _ range: CFRange, _ value: CFBit)
func CFBitVectorSetAllBits(bv: CFMutableBitVector!, _ value: CFBit)
