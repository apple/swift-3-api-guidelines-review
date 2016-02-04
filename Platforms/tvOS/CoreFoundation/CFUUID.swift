
class CFUUID {
}
struct CFUUIDBytes {
  var byte0: UInt8
  var byte1: UInt8
  var byte2: UInt8
  var byte3: UInt8
  var byte4: UInt8
  var byte5: UInt8
  var byte6: UInt8
  var byte7: UInt8
  var byte8: UInt8
  var byte9: UInt8
  var byte10: UInt8
  var byte11: UInt8
  var byte12: UInt8
  var byte13: UInt8
  var byte14: UInt8
  var byte15: UInt8
  init()
  init(byte0: UInt8, byte1: UInt8, byte2: UInt8, byte3: UInt8, byte4: UInt8, byte5: UInt8, byte6: UInt8, byte7: UInt8, byte8: UInt8, byte9: UInt8, byte10: UInt8, byte11: UInt8, byte12: UInt8, byte13: UInt8, byte14: UInt8, byte15: UInt8)
}
func CFUUIDGetTypeID() -> CFTypeID
func CFUUIDCreate(alloc: CFAllocator!) -> CFUUID!
func CFUUIDCreateWithBytes(alloc: CFAllocator!, _ byte0: UInt8, _ byte1: UInt8, _ byte2: UInt8, _ byte3: UInt8, _ byte4: UInt8, _ byte5: UInt8, _ byte6: UInt8, _ byte7: UInt8, _ byte8: UInt8, _ byte9: UInt8, _ byte10: UInt8, _ byte11: UInt8, _ byte12: UInt8, _ byte13: UInt8, _ byte14: UInt8, _ byte15: UInt8) -> CFUUID!
func CFUUIDCreateFromString(alloc: CFAllocator!, _ uuidStr: CFString!) -> CFUUID!
func CFUUIDCreateString(alloc: CFAllocator!, _ uuid: CFUUID!) -> CFString!
func CFUUIDGetConstantUUIDWithBytes(alloc: CFAllocator!, _ byte0: UInt8, _ byte1: UInt8, _ byte2: UInt8, _ byte3: UInt8, _ byte4: UInt8, _ byte5: UInt8, _ byte6: UInt8, _ byte7: UInt8, _ byte8: UInt8, _ byte9: UInt8, _ byte10: UInt8, _ byte11: UInt8, _ byte12: UInt8, _ byte13: UInt8, _ byte14: UInt8, _ byte15: UInt8) -> CFUUID!
func CFUUIDGetUUIDBytes(uuid: CFUUID!) -> CFUUIDBytes
func CFUUIDCreateFromUUIDBytes(alloc: CFAllocator!, _ bytes: CFUUIDBytes) -> CFUUID!
