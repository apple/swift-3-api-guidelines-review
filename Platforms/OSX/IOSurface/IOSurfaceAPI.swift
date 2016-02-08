
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
func IOSurfaceCreate(properties: CFDictionary) -> IOSurface?
@available(OSX 10.6, *)
func IOSurfaceLookup(csid: IOSurfaceID) -> IOSurface?
@available(OSX 10.6, *)
func IOSurfaceGetID(buffer: IOSurface) -> IOSurfaceID
struct IOSurfaceLockOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var readOnly: IOSurfaceLockOptions { get }
  static var avoidSync: IOSurfaceLockOptions { get }
}
@available(OSX 10.6, *)
func IOSurfaceLock(buffer: IOSurface, _ options: IOSurfaceLockOptions, _ seed: UnsafeMutablePointer<UInt32>) -> IOReturn
@available(OSX 10.6, *)
func IOSurfaceUnlock(buffer: IOSurface, _ options: IOSurfaceLockOptions, _ seed: UnsafeMutablePointer<UInt32>) -> IOReturn
@available(OSX 10.6, *)
func IOSurfaceGetAllocSize(buffer: IOSurface) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetWidth(buffer: IOSurface) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetHeight(buffer: IOSurface) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetBytesPerElement(buffer: IOSurface) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetBytesPerRow(buffer: IOSurface) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetBaseAddress(buffer: IOSurface) -> UnsafeMutablePointer<Void>
@available(OSX 10.6, *)
func IOSurfaceGetElementWidth(buffer: IOSurface) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetElementHeight(buffer: IOSurface) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetPixelFormat(buffer: IOSurface) -> OSType
@available(OSX 10.6, *)
func IOSurfaceGetSeed(buffer: IOSurface) -> UInt32
@available(OSX 10.6, *)
func IOSurfaceGetPlaneCount(buffer: IOSurface) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetWidthOfPlane(buffer: IOSurface, _ planeIndex: Int) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetHeightOfPlane(buffer: IOSurface, _ planeIndex: Int) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetBytesPerElementOfPlane(buffer: IOSurface, _ planeIndex: Int) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetBytesPerRowOfPlane(buffer: IOSurface, _ planeIndex: Int) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetBaseAddressOfPlane(buffer: IOSurface, _ planeIndex: Int) -> UnsafeMutablePointer<Void>
@available(OSX 10.6, *)
func IOSurfaceGetElementWidthOfPlane(buffer: IOSurface, _ planeIndex: Int) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetElementHeightOfPlane(buffer: IOSurface, _ planeIndex: Int) -> Int
@available(OSX 10.6, *)
func IOSurfaceSetValue(buffer: IOSurface, _ key: CFString, _ value: CFTypeRef)
@available(OSX 10.6, *)
func IOSurfaceCopyValue(buffer: IOSurface, _ key: CFString) -> CFTypeRef?
@available(OSX 10.6, *)
func IOSurfaceRemoveValue(buffer: IOSurface, _ key: CFString)
@available(OSX 10.6, *)
func IOSurfaceSetValues(buffer: IOSurface, _ keysAndValues: CFDictionary)
@available(OSX 10.6, *)
func IOSurfaceCopyAllValues(buffer: IOSurface) -> CFDictionary?
@available(OSX 10.6, *)
func IOSurfaceRemoveAllValues(buffer: IOSurface)
@available(OSX 10.6, *)
func IOSurfaceCreateMachPort(buffer: IOSurface) -> mach_port_t
@available(OSX 10.6, *)
func IOSurfaceLookupFromMachPort(port: mach_port_t) -> IOSurface?
@available(OSX 10.7, *)
func IOSurfaceCreateXPCObject(aSurface: IOSurface) -> xpc_object_t
@available(OSX 10.7, *)
func IOSurfaceLookupFromXPCObject(xobj: xpc_object_t) -> IOSurface?
@available(OSX 10.6, *)
func IOSurfaceGetPropertyMaximum(property: CFString) -> Int
@available(OSX 10.6, *)
func IOSurfaceGetPropertyAlignment(property: CFString) -> Int
@available(OSX 10.6, *)
func IOSurfaceAlignProperty(property: CFString, _ value: Int) -> Int
@available(OSX 10.6, *)
func IOSurfaceIncrementUseCount(buffer: IOSurface)
@available(OSX 10.6, *)
func IOSurfaceDecrementUseCount(buffer: IOSurface)
@available(OSX 10.6, *)
func IOSurfaceGetUseCount(buffer: IOSurface) -> Int32
@available(OSX 10.6, *)
func IOSurfaceIsInUse(buffer: IOSurface) -> Bool
