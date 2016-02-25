
struct __CFByteOrder : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue rawValue: UInt32)
  var rawValue: UInt32
}
var CFByteOrderUnknown: __CFByteOrder { get }
var CFByteOrderLittleEndian: __CFByteOrder { get }
var CFByteOrderBigEndian: __CFByteOrder { get }
typealias CFByteOrder = CFIndex
func CFByteOrderGetCurrent() -> CFByteOrder
func CFSwapInt16(_ arg: UInt16) -> UInt16
func CFSwapInt32(_ arg: UInt32) -> UInt32
func CFSwapInt64(_ arg: UInt64) -> UInt64
func CFSwapInt16BigToHost(_ arg: UInt16) -> UInt16
func CFSwapInt32BigToHost(_ arg: UInt32) -> UInt32
func CFSwapInt64BigToHost(_ arg: UInt64) -> UInt64
func CFSwapInt16HostToBig(_ arg: UInt16) -> UInt16
func CFSwapInt32HostToBig(_ arg: UInt32) -> UInt32
func CFSwapInt64HostToBig(_ arg: UInt64) -> UInt64
func CFSwapInt16LittleToHost(_ arg: UInt16) -> UInt16
func CFSwapInt32LittleToHost(_ arg: UInt32) -> UInt32
func CFSwapInt64LittleToHost(_ arg: UInt64) -> UInt64
func CFSwapInt16HostToLittle(_ arg: UInt16) -> UInt16
func CFSwapInt32HostToLittle(_ arg: UInt32) -> UInt32
func CFSwapInt64HostToLittle(_ arg: UInt64) -> UInt64
struct CFSwappedFloat32 {
  var v: UInt32
  init()
  init(v v: UInt32)
}
struct CFSwappedFloat64 {
  var v: UInt64
  init()
  init(v v: UInt64)
}
func CFConvertFloat32HostToSwapped(_ arg: Float32) -> CFSwappedFloat32
func CFConvertFloat32SwappedToHost(_ arg: CFSwappedFloat32) -> Float32
func CFConvertFloat64HostToSwapped(_ arg: Float64) -> CFSwappedFloat64
func CFConvertFloat64SwappedToHost(_ arg: CFSwappedFloat64) -> Float64
func CFConvertFloatHostToSwapped(_ arg: Float) -> CFSwappedFloat32
func CFConvertFloatSwappedToHost(_ arg: CFSwappedFloat32) -> Float
func CFConvertDoubleHostToSwapped(_ arg: Double) -> CFSwappedFloat64
func CFConvertDoubleSwappedToHost(_ arg: CFSwappedFloat64) -> Double
