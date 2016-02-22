
class IOSurface {
}
typealias IOSurfaceID = UInt32
@available(OSX 10.6, *)
let kIOSurfaceAllocSize: CFString
@available(OSX 10.6, *)
let kIOSurfaceWidth: CFString
@available(OSX 10.6, *)
let kIOSurfaceHeight: CFString
@available(OSX 10.6, *)
let kIOSurfaceBytesPerRow: CFString
@available(OSX 10.6, *)
let kIOSurfaceBytesPerElement: CFString
@available(OSX 10.6, *)
let kIOSurfaceElementWidth: CFString
@available(OSX 10.6, *)
let kIOSurfaceElementHeight: CFString
@available(OSX 10.6, *)
let kIOSurfaceOffset: CFString
@available(OSX 10.6, *)
let kIOSurfacePlaneInfo: CFString
@available(OSX 10.6, *)
let kIOSurfacePlaneWidth: CFString
@available(OSX 10.6, *)
let kIOSurfacePlaneHeight: CFString
@available(OSX 10.6, *)
let kIOSurfacePlaneBytesPerRow: CFString
@available(OSX 10.6, *)
let kIOSurfacePlaneOffset: CFString
@available(OSX 10.6, *)
let kIOSurfacePlaneSize: CFString
@available(OSX 10.6, *)
let kIOSurfacePlaneBase: CFString
@available(OSX 10.6, *)
let kIOSurfacePlaneBytesPerElement: CFString
@available(OSX 10.6, *)
let kIOSurfacePlaneElementWidth: CFString
@available(OSX 10.6, *)
let kIOSurfacePlaneElementHeight: CFString
@available(OSX 10.6, *)
let kIOSurfaceCacheMode: CFString
@available(OSX, introduced=10.6, deprecated=10.11)
let kIOSurfaceIsGlobal: CFString
@available(OSX 10.6, *)
let kIOSurfacePixelFormat: CFString
@available(OSX 10.6, *)
func IOSurfaceGetTypeID() -> CFTypeID
@available(OSX 10.6, *)
func IOSurfaceCreate(_ properties: CFDictionary) -> IOSurface?
@available(OSX 10.6, *)
func IOSurfaceLookup(_ csid: IOSurfaceID) -> IOSurface?
@available(OSX 10.6, *)
func IOSurfaceGetID(_ buffer: IOSurface) -> IOSurfaceID
struct IOSurfaceLockOptions : OptionSetType {
  init(rawValue rawValue: UInt32)
  let rawValue: UInt32
  static var readOnly: IOSurfaceLockOptions { get }
  static var avoidSync: IOSurfaceLockOptions { get }
}
@available(OSX 10.6, *)
func IOSurfaceLock(_ buffer: IOSurface, _ options: IOSurfaceLockOptions, _ seed: UnsafeMutablePointer<UInt32>) -> IOReturn
@available(OSX 10.6, *)
func IOSurfaceUnlock(_ buffer: IOSurface, _ options: IOSurfaceLockOptions, _ seed: UnsafeMutablePointer<UInt32>) -> IOReturn
@available(OSX 10.6, *)
func IOSurfaceGetAllocSize(_ buffer: IOSurface) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetWidth(_ buffer: IOSurface) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetHeight(_ buffer: IOSurface) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetBytesPerElement(_ buffer: IOSurface) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetBytesPerRow(_ buffer: IOSurface) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetBaseAddress(_ buffer: IOSurface) -> UnsafeMutablePointer<Void>
@available(OSX 10.6, *)
func IOSurfaceGetElementWidth(_ buffer: IOSurface) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetElementHeight(_ buffer: IOSurface) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetPixelFormat(_ buffer: IOSurface) -> OSType
@available(OSX 10.6, *)
func IOSurfaceGetSeed(_ buffer: IOSurface) -> UInt32
@available(OSX 10.6, *)
func IOSurfaceGetPlaneCount(_ buffer: IOSurface) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetWidthOfPlane(_ buffer: IOSurface, _ planeIndex: Int) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetHeightOfPlane(_ buffer: IOSurface, _ planeIndex: Int) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetBytesPerElementOfPlane(_ buffer: IOSurface, _ planeIndex: Int) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetBytesPerRowOfPlane(_ buffer: IOSurface, _ planeIndex: Int) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetBaseAddressOfPlane(_ buffer: IOSurface, _ planeIndex: Int) -> UnsafeMutablePointer<Void>
@available(OSX 10.6, *)
func IOSurfaceGetElementWidthOfPlane(_ buffer: IOSurface, _ planeIndex: Int) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetElementHeightOfPlane(_ buffer: IOSurface, _ planeIndex: Int) -> Int
@available(OSX 10.6, *)
func IOSurfaceSetValue(_ buffer: IOSurface, _ key: CFString, _ value: CFTypeRef)
@available(OSX 10.6, *)
func IOSurfaceCopyValue(_ buffer: IOSurface, _ key: CFString) -> CFTypeRef?
@available(OSX 10.6, *)
func IOSurfaceRemoveValue(_ buffer: IOSurface, _ key: CFString)
@available(OSX 10.6, *)
func IOSurfaceSetValues(_ buffer: IOSurface, _ keysAndValues: CFDictionary)
@available(OSX 10.6, *)
func IOSurfaceCopyAllValues(_ buffer: IOSurface) -> CFDictionary?
@available(OSX 10.6, *)
func IOSurfaceRemoveAllValues(_ buffer: IOSurface)
@available(OSX 10.6, *)
func IOSurfaceCreateMachPort(_ buffer: IOSurface) -> mach_port_t
@available(OSX 10.6, *)
func IOSurfaceLookupFromMachPort(_ port: mach_port_t) -> IOSurface?
@available(OSX 10.7, *)
func IOSurfaceCreateXPCObject(_ aSurface: IOSurface) -> xpc_object_t
@available(OSX 10.7, *)
func IOSurfaceLookupFromXPCObject(_ xobj: xpc_object_t) -> IOSurface?
@available(OSX 10.6, *)
func IOSurfaceGetPropertyMaximum(_ property: CFString) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetPropertyAlignment(_ property: CFString) -> Int
@available(OSX 10.6, *)
func IOSurfaceAlignProperty(_ property: CFString, _ value: Int) -> Int
@available(OSX 10.6, *)
func IOSurfaceIncrementUseCount(_ buffer: IOSurface)
@available(OSX 10.6, *)
func IOSurfaceDecrementUseCount(_ buffer: IOSurface)
@available(OSX 10.6, *)
func IOSurfaceGetUseCount(_ buffer: IOSurface) -> Int32
@available(OSX 10.6, *)
func IOSurfaceIsInUse(_ buffer: IOSurface) -> Bool
