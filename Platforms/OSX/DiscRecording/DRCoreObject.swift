
@available(*, deprecated, renamed="DRType")
typealias DRTypeRef = DRType
typealias DRType = CFTypeRef
typealias DRRefConRetainCallback = @convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>
typealias DRRefConReleaseCallback = @convention(c) (UnsafePointer<Void>) -> Void
struct DRRefConCallbacks {
  var version: UInt
  var retain: DRRefConRetainCallback!
  var release: DRRefConReleaseCallback!
  init()
  init(version: UInt, retain: DRRefConRetainCallback!, release: DRRefConReleaseCallback!)
}
let kDRRefConCFTypeCallbacks: DRRefConCallbacks
@available(OSX 10.2, *)
func DRSetRefCon(ref: DRType!, _ refCon: UnsafeMutablePointer<Void>, _ callbacks: UnsafePointer<DRRefConCallbacks>)
@available(OSX 10.2, *)
func DRGetRefCon(ref: DRType!) -> UnsafeMutablePointer<Void>
@available(OSX 10.5, *)
func DRCopyLocalizedStringForValue(value: CFString!) -> Unmanaged<CFString>!
