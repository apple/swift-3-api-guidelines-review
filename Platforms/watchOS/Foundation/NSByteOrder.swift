
var NS_UnknownByteOrder: Int { get }
var NS_LittleEndian: Int { get }
var NS_BigEndian: Int { get }
func NSHostByteOrder() -> Int
func NSSwapShort(inv: UInt16) -> UInt16
func NSSwapInt(inv: UInt32) -> UInt32
func NSSwapLong(inv: UInt) -> UInt
func NSSwapLongLong(inv: UInt64) -> UInt64
func NSSwapBigShortToHost(x: UInt16) -> UInt16
func NSSwapBigIntToHost(x: UInt32) -> UInt32
func NSSwapBigLongToHost(x: UInt) -> UInt
func NSSwapBigLongLongToHost(x: UInt64) -> UInt64
func NSSwapHostShortToBig(x: UInt16) -> UInt16
func NSSwapHostIntToBig(x: UInt32) -> UInt32
func NSSwapHostLongToBig(x: UInt) -> UInt
func NSSwapHostLongLongToBig(x: UInt64) -> UInt64
func NSSwapLittleShortToHost(x: UInt16) -> UInt16
func NSSwapLittleIntToHost(x: UInt32) -> UInt32
func NSSwapLittleLongToHost(x: UInt) -> UInt
func NSSwapLittleLongLongToHost(x: UInt64) -> UInt64
func NSSwapHostShortToLittle(x: UInt16) -> UInt16
func NSSwapHostIntToLittle(x: UInt32) -> UInt32
func NSSwapHostLongToLittle(x: UInt) -> UInt
func NSSwapHostLongLongToLittle(x: UInt64) -> UInt64
struct NSSwappedFloat {
  var v: UInt32
  init()
  init(v: UInt32)
}
struct NSSwappedDouble {
  var v: UInt64
  init()
  init(v: UInt64)
}
func NSConvertHostFloatToSwapped(x: Float) -> NSSwappedFloat
func NSConvertSwappedFloatToHost(x: NSSwappedFloat) -> Float
func NSConvertHostDoubleToSwapped(x: Double) -> NSSwappedDouble
func NSConvertSwappedDoubleToHost(x: NSSwappedDouble) -> Double
func NSSwapFloat(x: NSSwappedFloat) -> NSSwappedFloat
func NSSwapDouble(x: NSSwappedDouble) -> NSSwappedDouble
func NSSwapBigDoubleToHost(x: NSSwappedDouble) -> Double
func NSSwapBigFloatToHost(x: NSSwappedFloat) -> Float
func NSSwapHostDoubleToBig(x: Double) -> NSSwappedDouble
func NSSwapHostFloatToBig(x: Float) -> NSSwappedFloat
func NSSwapLittleDoubleToHost(x: NSSwappedDouble) -> Double
func NSSwapLittleFloatToHost(x: NSSwappedFloat) -> Float
func NSSwapHostDoubleToLittle(x: Double) -> NSSwappedDouble
func NSSwapHostFloatToLittle(x: Float) -> NSSwappedFloat
