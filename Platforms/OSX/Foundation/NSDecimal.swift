
enum NSRoundingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case roundPlain
  case roundDown
  case roundUp
  case roundBankers
}
enum NSCalculationError : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case noError
  case lossOfPrecision
  case underflow
  case overflow
  case divideByZero
}
var NSDecimalMaxSize: Int32 { get }
var NSDecimalNoScale: Int32 { get }
struct NSDecimal {
  var _exponent: Int32
  var _length: UInt32
  var _isNegative: UInt32
  var _isCompact: UInt32
  var _reserved: UInt32
  var _mantissa: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16)
  init()
  init(_exponent: Int32, _length: UInt32, _isNegative: UInt32, _isCompact: UInt32, _reserved: UInt32, _mantissa: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16))
}
func NSDecimalIsNotANumber(dcm: UnsafePointer<NSDecimal>) -> Bool
func NSDecimalCopy(destination: UnsafeMutablePointer<NSDecimal>, _ source: UnsafePointer<NSDecimal>)
func NSDecimalCompact(number: UnsafeMutablePointer<NSDecimal>)
func NSDecimalCompare(leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>) -> NSComparisonResult
func NSDecimalRound(result: UnsafeMutablePointer<NSDecimal>, _ number: UnsafePointer<NSDecimal>, _ scale: Int, _ roundingMode: NSRoundingMode)
func NSDecimalNormalize(number1: UnsafeMutablePointer<NSDecimal>, _ number2: UnsafeMutablePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalAdd(result: UnsafeMutablePointer<NSDecimal>, _ leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalSubtract(result: UnsafeMutablePointer<NSDecimal>, _ leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalMultiply(result: UnsafeMutablePointer<NSDecimal>, _ leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalDivide(result: UnsafeMutablePointer<NSDecimal>, _ leftOperand: UnsafePointer<NSDecimal>, _ rightOperand: UnsafePointer<NSDecimal>, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalPower(result: UnsafeMutablePointer<NSDecimal>, _ number: UnsafePointer<NSDecimal>, _ power: Int, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalMultiplyByPowerOf10(result: UnsafeMutablePointer<NSDecimal>, _ number: UnsafePointer<NSDecimal>, _ power: Int16, _ roundingMode: NSRoundingMode) -> NSCalculationError
func NSDecimalString(dcm: UnsafePointer<NSDecimal>, _ locale: AnyObject?) -> String
