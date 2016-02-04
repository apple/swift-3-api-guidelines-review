
class CMMemoryPool {
}
@available(*, deprecated, renamed="CMMemoryPool")
typealias CMMemoryPoolRef = CMMemoryPool
@available(tvOS 6.0, *)
func CMMemoryPoolGetTypeID() -> CFTypeID
@available(tvOS 6.0, *)
let kCMMemoryPoolOption_AgeOutPeriod: CFString
@available(tvOS 6.0, *)
func CMMemoryPoolCreate(options: CFDictionary?) -> CMMemoryPool
@available(tvOS 6.0, *)
func CMMemoryPoolGetAllocator(pool: CMMemoryPool) -> CFAllocator
@available(tvOS 6.0, *)
func CMMemoryPoolFlush(pool: CMMemoryPool)
@available(tvOS 6.0, *)
func CMMemoryPoolInvalidate(pool: CMMemoryPool)
