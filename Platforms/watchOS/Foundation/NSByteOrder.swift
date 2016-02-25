
var NS_UnknownByteOrder: Int { get }
var NS_LittleEndian: Int { get }
var NS_BigEndian: Int { get }
func NSHostByteOrder() -> Int
func NSSwapShort(_ inv: UInt16) -> UInt16
func NSSwapInt(_ inv: UInt32) -> UInt32
func NSSwapLong(_ inv: UInt) -> UInt
func NSSwapLongLong(_ inv: UInt64) -> UInt64
func NSSwapBigShortToHost(_ x: UInt16) -> UInt16
func NSSwapBigIntToHost(_ x: UInt32) -> UInt32
func NSSwapBigLongToHost(_ x: UInt) -> UInt
func NSSwapBigLongLongToHost(_ x: UInt64) -> UInt64
func NSSwapHostShortToBig(_ x: UInt16) -> UInt16
func NSSwapHostIntToBig(_ x: UInt32) -> UInt32
func NSSwapHostLongToBig(_ x: UInt) -> UInt
func NSSwapHostLongLongToBig(_ x: UInt64) -> UInt64
func NSSwapLittleShortToHost(_ x: UInt16) -> UInt16
func NSSwapLittleIntToHost(_ x: UInt32) -> UInt32
func NSSwapLittleLongToHost(_ x: UInt) -> UInt
func NSSwapLittleLongLongToHost(_ x: UInt64) -> UInt64
func NSSwapHostShortToLittle(_ x: UInt16) -> UInt16
func NSSwapHostIntToLittle(_ x: UInt32) -> UInt32
func NSSwapHostLongToLittle(_ x: UInt) -> UInt
func NSSwapHostLongLongToLittle(_ x: UInt64) -> UInt64
struct NSSwappedFloat {
  var v: UInt32
  init()
  init(v v: UInt32)
}
struct NSSwappedDouble {
  var v: UInt64
  init()
  init(v v: UInt64)
}
func NSConvertHostFloatToSwapped(_ x: Float) -> NSSwappedFloat
func NSConvertSwappedFloatToHost(_ x: NSSwappedFloat) -> Float
func NSConvertHostDoubleToSwapped(_ x: Double) -> NSSwappedDouble
func NSConvertSwappedDoubleToHost(_ x: NSSwappedDouble) -> Double
func NSSwapFloat(_ x: NSSwappedFloat) -> NSSwappedFloat
func NSSwapDouble(_ x: NSSwappedDouble) -> NSSwappedDouble
func NSSwapBigDoubleToHost(_ x: NSSwappedDouble) -> Double
func NSSwapBigFloatToHost(_ x: NSSwappedFloat) -> Float
func NSSwapHostDoubleToBig(_ x: Double) -> NSSwappedDouble
func NSSwapHostFloatToBig(_ x: Float) -> NSSwappedFloat
func NSSwapLittleDoubleToHost(_ x: NSSwappedDouble) -> Double
func NSSwapLittleFloatToHost(_ x: NSSwappedFloat) -> Float
func NSSwapHostDoubleToLittle(_ x: Double) -> NSSwappedDouble
func NSSwapHostFloatToLittle(_ x: Float) -> NSSwappedFloat
