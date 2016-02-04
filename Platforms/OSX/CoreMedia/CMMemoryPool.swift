
class CMMemoryPool {
}
@available(OSX 10.8, *)
func CMMemoryPoolGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
let kCMMemoryPoolOption_AgeOutPeriod: CFString
@available(OSX 10.8, *)
func CMMemoryPoolCreate(options: CFDictionary?) -> CMMemoryPool
@available(OSX 10.8, *)
func CMMemoryPoolGetAllocator(pool: CMMemoryPool) -> CFAllocator
@available(OSX 10.8, *)
func CMMemoryPoolFlush(pool: CMMemoryPool)
@available(OSX 10.8, *)
func CMMemoryPoolInvalidate(pool: CMMemoryPool)
