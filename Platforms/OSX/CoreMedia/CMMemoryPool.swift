
class CMMemoryPool {
}
@available(OSX 10.8, *)
func CMMemoryPoolGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
let kCMMemoryPoolOption_AgeOutPeriod: CFString
@available(OSX 10.8, *)
func CMMemoryPoolCreate(_ options: CFDictionary?) -> CMMemoryPool
@available(OSX 10.8, *)
func CMMemoryPoolGetAllocator(_ pool: CMMemoryPool) -> CFAllocator
@available(OSX 10.8, *)
func CMMemoryPoolFlush(_ pool: CMMemoryPool)
@available(OSX 10.8, *)
func CMMemoryPoolInvalidate(_ pool: CMMemoryPool)
