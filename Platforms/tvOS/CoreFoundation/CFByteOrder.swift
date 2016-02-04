
struct __CFByteOrder : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var CFByteOrderUnknown: __CFByteOrder { get }
var CFByteOrderLittleEndian: __CFByteOrder { get }
var CFByteOrderBigEndian: __CFByteOrder { get }
typealias CFByteOrder = CFIndex
func CFByteOrderGetCurrent() -> CFByteOrder
func CFSwapInt16(arg: UInt16) -> UInt16
func CFSwapInt32(arg: UInt32) -> UInt32
func CFSwapInt64(arg: UInt64) -> UInt64
func CFSwapInt16BigToHost(arg: UInt16) -> UInt16
func CFSwapInt32BigToHost(arg: UInt32) -> UInt32
func CFSwapInt64BigToHost(arg: UInt64) -> UInt64
func CFSwapInt16HostToBig(arg: UInt16) -> UInt16
func CFSwapInt32HostToBig(arg: UInt32) -> UInt32
func CFSwapInt64HostToBig(arg: UInt64) -> UInt64
func CFSwapInt16LittleToHost(arg: UInt16) -> UInt16
func CFSwapInt32LittleToHost(arg: UInt32) -> UInt32
func CFSwapInt64LittleToHost(arg: UInt64) -> UInt64
func CFSwapInt16HostToLittle(arg: UInt16) -> UInt16
func CFSwapInt32HostToLittle(arg: UInt32) -> UInt32
func CFSwapInt64HostToLittle(arg: UInt64) -> UInt64
struct CFSwappedFloat32 {
  var v: UInt32
  init()
  init(v: UInt32)
}
struct CFSwappedFloat64 {
  var v: UInt64
  init()
  init(v: UInt64)
}
func CFConvertFloat32HostToSwapped(arg: Float32) -> CFSwappedFloat32
func CFConvertFloat32SwappedToHost(arg: CFSwappedFloat32) -> Float32
func CFConvertFloat64HostToSwapped(arg: Float64) -> CFSwappedFloat64
func CFConvertFloat64SwappedToHost(arg: CFSwappedFloat64) -> Float64
func CFConvertFloatHostToSwapped(arg: Float) -> CFSwappedFloat32
func CFConvertFloatSwappedToHost(arg: CFSwappedFloat32) -> Float
func CFConvertDoubleHostToSwapped(arg: Double) -> CFSwappedFloat64
func CFConvertDoubleSwappedToHost(arg: CFSwappedFloat64) -> Double
