
class CMMemoryPool {
}
@available(iOS 6.0, *)
func CMMemoryPoolGetTypeID() -> CFTypeID
@available(iOS 6.0, *)
let kCMMemoryPoolOption_AgeOutPeriod: CFString
@available(iOS 6.0, *)
func CMMemoryPoolCreate(_ options: CFDictionary?) -> CMMemoryPool
@available(iOS 6.0, *)
func CMMemoryPoolGetAllocator(_ pool: CMMemoryPool) -> CFAllocator
@available(iOS 6.0, *)
func CMMemoryPoolFlush(_ pool: CMMemoryPool)
@available(iOS 6.0, *)
func CMMemoryPoolInvalidate(_ pool: CMMemoryPool)
