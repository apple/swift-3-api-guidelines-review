
typealias MIDIDriverRef = UnsafeMutablePointer<UnsafeMutablePointer<MIDIDriverInterface>>
typealias MIDIDeviceListRef = MIDIObjectRef
struct MIDIDriverInterface {
  var _reserved: UnsafeMutablePointer<Void>
  var QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var FindDevices: (@convention(c) (MIDIDriverRef, MIDIDeviceListRef) -> OSStatus)!
  var Start: (@convention(c) (MIDIDriverRef, MIDIDeviceListRef) -> OSStatus)!
  var Stop: (@convention(c) (MIDIDriverRef) -> OSStatus)!
  var Configure: (@convention(c) (MIDIDriverRef, MIDIDeviceRef) -> OSStatus)!
  var Send: (@convention(c) (MIDIDriverRef, UnsafePointer<MIDIPacketList>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> OSStatus)!
  var EnableSource: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, DarwinBoolean) -> OSStatus)!
  var Flush: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> OSStatus)!
  var Monitor: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafePointer<MIDIPacketList>) -> OSStatus)!
  init()
  init(_reserved: UnsafeMutablePointer<Void>, QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, FindDevices: (@convention(c) (MIDIDriverRef, MIDIDeviceListRef) -> OSStatus)!, Start: (@convention(c) (MIDIDriverRef, MIDIDeviceListRef) -> OSStatus)!, Stop: (@convention(c) (MIDIDriverRef) -> OSStatus)!, Configure: (@convention(c) (MIDIDriverRef, MIDIDeviceRef) -> OSStatus)!, Send: (@convention(c) (MIDIDriverRef, UnsafePointer<MIDIPacketList>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> OSStatus)!, EnableSource: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, DarwinBoolean) -> OSStatus)!, Flush: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> OSStatus)!, Monitor: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafePointer<MIDIPacketList>) -> OSStatus)!)
}
@available(OSX 10.1, *)
let kMIDIDriverPropertyUsesSerial: CFString!
@available(OSX 10.0, *)
func MIDIDeviceCreate(owner: MIDIDriverRef, _ name: CFString!, _ manufacturer: CFString!, _ model: CFString!, _ outDevice: UnsafeMutablePointer<MIDIDeviceRef>) -> OSStatus
@available(OSX 10.3, *)
func MIDIDeviceDispose(device: MIDIDeviceRef) -> OSStatus
@available(OSX 10.0, *)
func MIDIDeviceListGetNumberOfDevices(devList: MIDIDeviceListRef) -> Int
@available(OSX 10.0, *)
func MIDIDeviceListGetDevice(devList: MIDIDeviceListRef, _ index0: Int) -> MIDIDeviceRef
@available(OSX 10.0, *)
func MIDIDeviceListAddDevice(devList: MIDIDeviceListRef, _ dev: MIDIDeviceRef) -> OSStatus
@available(OSX 10.1, *)
func MIDIDeviceListDispose(devList: MIDIDeviceListRef) -> OSStatus
@available(OSX 10.0, *)
func MIDIEndpointSetRefCons(endpt: MIDIEndpointRef, _ ref1: UnsafeMutablePointer<Void>, _ ref2: UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.0, *)
func MIDIEndpointGetRefCons(endpt: MIDIEndpointRef, _ ref1: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ ref2: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> OSStatus
@available(OSX 10.0, *)
func MIDIGetDriverIORunLoop() -> Unmanaged<CFRunLoop>!
@available(OSX 10.1, *)
func MIDIGetDriverDeviceList(driver: MIDIDriverRef) -> MIDIDeviceListRef
@available(OSX 10.1, *)
func MIDIDriverEnableMonitoring(driver: MIDIDriverRef, _ enabled: Bool) -> OSStatus
