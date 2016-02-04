
var unknownByteOrder: Int { get }
var littleEndian: Int { get }
var bigEndian: Int { get }
func hostByteOrder() -> Int
func swapShort(inv: UInt16) -> UInt16
func swapInt(inv: UInt32) -> UInt32
func swapLong(inv: UInt) -> UInt
func swapLongLong(inv: UInt64) -> UInt64
func swapBigShortToHost(x: UInt16) -> UInt16
func swapBigIntToHost(x: UInt32) -> UInt32
func swapBigLongToHost(x: UInt) -> UInt
func swapBigLongLongToHost(x: UInt64) -> UInt64
func swapHostShortToBig(x: UInt16) -> UInt16
func swapHostIntToBig(x: UInt32) -> UInt32
func swapHostLongToBig(x: UInt) -> UInt
func swapHostLongLongToBig(x: UInt64) -> UInt64
func swapLittleShortToHost(x: UInt16) -> UInt16
func swapLittleIntToHost(x: UInt32) -> UInt32
func swapLittleLongToHost(x: UInt) -> UInt
func swapLittleLongLongToHost(x: UInt64) -> UInt64
func swapHostShortToLittle(x: UInt16) -> UInt16
func swapHostIntToLittle(x: UInt32) -> UInt32
func swapHostLongToLittle(x: UInt) -> UInt
func swapHostLongLongToLittle(x: UInt64) -> UInt64
struct SwappedFloat {
  var v: UInt32
  init()
  init(v: UInt32)
}
struct SwappedDouble {
  var v: UInt64
  init()
  init(v: UInt64)
}
func convertHostFloatToSwapped(x: Float) -> SwappedFloat
func convertSwappedFloatToHost(x: SwappedFloat) -> Float
func convertHostDoubleToSwapped(x: Double) -> SwappedDouble
func convertSwappedDoubleToHost(x: SwappedDouble) -> Double
func swapFloat(x: SwappedFloat) -> SwappedFloat
func swapDouble(x: SwappedDouble) -> SwappedDouble
func swapBigDoubleToHost(x: SwappedDouble) -> Double
func swapBigFloatToHost(x: SwappedFloat) -> Float
func swapHostDoubleToBig(x: Double) -> SwappedDouble
func swapHostFloatToBig(x: Float) -> SwappedFloat
func swapLittleDoubleToHost(x: SwappedDouble) -> Double
func swapLittleFloatToHost(x: SwappedFloat) -> Float
func swapHostDoubleToLittle(x: Double) -> SwappedDouble
func swapHostFloatToLittle(x: Float) -> SwappedFloat
