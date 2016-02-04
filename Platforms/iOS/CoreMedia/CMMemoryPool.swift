
class CMMemoryPool {
}
@available(iOS 6.0, *)
func CMMemoryPoolGetTypeID() -> CFTypeID
@available(iOS 6.0, *)
let kCMMemoryPoolOption_AgeOutPeriod: CFString
@available(iOS 6.0, *)
func CMMemoryPoolCreate(options: CFDictionary?) -> CMMemoryPool
@available(iOS 6.0, *)
func CMMemoryPoolGetAllocator(pool: CMMemoryPool) -> CFAllocator
@available(iOS 6.0, *)
func CMMemoryPoolFlush(pool: CMMemoryPool)
@available(iOS 6.0, *)
func CMMemoryPoolInvalidate(pool: CMMemoryPool)
